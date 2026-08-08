import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:path_provider/path_provider.dart';

import '../services/error_logger.dart';
import 'data_type.dart';

/// A single scanned QR/barcode entry.
class ScanEntry {
  final String id;
  final DateTime timestamp;
  final DataType type;
  final String value;
  final String displayValue;
  final Map<String, String?> fields;
  final ScanSource source;

  const ScanEntry({
    required this.id,
    required this.timestamp,
    required this.type,
    required this.value,
    required this.displayValue,
    this.fields = const {},
    this.source = ScanSource.camera,
  });

  /// Build from a [DetectedScan] and optional source.
  factory ScanEntry.fromScan(
    DetectedScan scan, {
    ScanSource source = ScanSource.camera,
    String? id,
  }) {
    return ScanEntry(
      id: id ?? DateTime.now().microsecondsSinceEpoch.toString(),
      timestamp: DateTime.now(),
      type: scan.type,
      value: scan.value,
      displayValue: scan.displayValue,
      fields: scan.fields,
      source: source,
    );
  }

  /// Redact the password from a WiFi raw value string.
  /// Removes the `P:` field entirely, respecting `\;` escaping.
  static String _redactWifiValue(String value) {
    const prefix = 'P:';
    final start = value.indexOf(prefix);
    if (start < 0) return value;
    final valueStart = start + prefix.length;
    if (valueStart >= value.length) {
      return value.substring(0, start);
    }
    var i = valueStart;
    while (i < value.length) {
      if (value[i] == ';' && (i == 0 || value[i - 1] != r'\')) break;
      if (value[i] == '\n') break;
      i++;
    }
    final end = (i < value.length && value[i] == ';') ? i + 1 : i;
    return value.substring(0, start) + value.substring(end);
  }

  Map<String, dynamic> toJson() {
    // Copy fields so we never mutate the live in-memory object
    final sanitizedFields = Map<String, String?>.from(fields);
    // Never persist WiFi passwords to disk
    if (type == DataType.wifi) {
      sanitizedFields.remove('password');
    }
    return {
      'id': id,
      'timestamp': timestamp.toIso8601String(),
      'type': type.name,
      'value': type == DataType.wifi ? _redactWifiValue(value) : value,
      'displayValue': displayValue,
      'fields': sanitizedFields,
      'source': source.name,
    };
  }

  factory ScanEntry.fromJson(Map<String, dynamic> json) => ScanEntry(
        id: json['id'] as String,
        timestamp: DateTime.parse(json['timestamp'] as String),
        type: DataType.values.firstWhere((t) => t.name == json['type'],
            orElse: () => DataType.plainText),
        value: json['value'] as String,
        displayValue: (json['displayValue'] ?? json['value']) as String,
        fields: (json['fields'] as Map<String, dynamic>?)
                ?.map((k, v) => MapEntry(k, v as String?)) ??
            const {},
        source: ScanSource.values.firstWhere(
          (s) => s.name == (json['source'] ?? 'camera'),
          orElse: () => ScanSource.camera,
        ),
      );
}

enum ScanSource { camera, gallery }

/// Manages the scan history list with JSON file persistence.
class ScanHistory {
  static const _fileName = 'scan_history.json';
  static const _saveDebounce = Duration(milliseconds: 500);
  static const _maxEntries = 500;

  List<ScanEntry> _entries = [];
  String? _filePath;
  Timer? _saveTimer;

  /// The current list of entries (newest first).
  List<ScanEntry> get entries => List.unmodifiable(_entries);

  /// Load history from the JSON file.
  Future<void> load() async {
    final dir = await getApplicationDocumentsDirectory();
    final path = '${dir.path}/$_fileName';
    _filePath = path;
    final file = File(path);
    if (!file.existsSync()) return;
    try {
      final json = jsonDecode(await file.readAsString()) as List<Object?>;
      _entries = json
          .whereType<Map<String, dynamic>>()
          .map((j) {
            try {
              return ScanEntry.fromJson(j);
            } catch (e) {
              debugPrint('[ScanHistory] Skipping corrupt entry: $e');
              ErrorLogger.instance.log('Skipping corrupt history entry',
                  detail: e.toString(), context: 'ScanHistory');
              return null;
            }
          })
          .whereType<ScanEntry>()
          .toList()
        ..sort((a, b) => b.timestamp.compareTo(a.timestamp));
      // Migrate: redact WiFi passwords from persisted values
      for (var i = 0; i < _entries.length; i++) {
        final e = _entries[i];
        if (e.type == DataType.wifi) {
          final redacted = ScanEntry._redactWifiValue(e.value);
          final sanitizedFields = Map<String, String?>.from(e.fields);
          sanitizedFields.remove('password');
          if (redacted != e.value ||
              sanitizedFields.length != e.fields.length) {
            _entries[i] = ScanEntry(
              id: e.id,
              timestamp: e.timestamp,
              type: e.type,
              value: redacted,
              displayValue: e.displayValue,
              fields: sanitizedFields,
              source: e.source,
            );
          }
        }
      }
      // Enforce max-entries cap on loaded data
      if (_entries.length > _maxEntries) {
        _entries = _entries.sublist(0, _maxEntries);
      }
    } catch (e) {
      debugPrint('[ScanHistory] Failed to load history (corrupt file?): $e');
      ErrorLogger.instance.log('Failed to load scan history',
          detail: e.toString(), context: 'ScanHistory');
      // If the file is corrupt, start fresh
      _entries = [];
    }
  }

  /// Add a new entry. If an entry with the same [value] already exists,
  /// its timestamp is updated and it moves to the top (dedup).
  /// Persists immediately.
  Future<void> add(ScanEntry entry) async {
    final existingIndex = _entries.indexWhere((e) => e.value == entry.value);
    if (existingIndex >= 0) {
      // Update timestamp and bump to top
      final updated = ScanEntry(
        id: _entries[existingIndex].id,
        timestamp: entry.timestamp,
        type: entry.type,
        value: entry.value,
        displayValue: entry.displayValue,
        fields: entry.fields,
        source: entry.source,
      );
      _entries.removeAt(existingIndex);
      _entries.insert(0, updated);
    } else {
      _entries.insert(0, entry);
      if (_entries.length > _maxEntries) {
        _entries = _entries.sublist(0, _maxEntries);
      }
    }
    await _save();
  }

  /// Remove a single entry by [id].
  Future<void> remove(String id) async {
    _entries.removeWhere((e) => e.id == id);
    await _save();
  }

  /// Insert an entry at [index] (clamped to valid range).
  /// Skips dedup — the entry should already have been deduped on first add.
  Future<void> insertAt(int index, ScanEntry entry) async {
    final clamped = index.clamp(0, _entries.length);
    _entries.insert(clamped, entry);
    if (_entries.length > _maxEntries) {
      _entries = _entries.sublist(0, _maxEntries);
    }
    await _save();
  }

  /// Clear all entries.
  Future<void> clear() async {
    _entries = [];
    await _save();
  }

  Future<void> _save() {
    _saveTimer?.cancel();
    _saveTimer = Timer(_saveDebounce, () {
      unawaited(_writeToFile());
    });

    return Future<void>.value();
  }

  Future<void> _writeToFile() async {
    final path = _filePath;
    if (path == null) return;
    try {
      final file = File(path);
      await file.writeAsString(
        jsonEncode(_entries.map((e) => e.toJson()).toList()),
      );
    } catch (e) {
      debugPrint('[ScanHistory] Save failed: $e');
      ErrorLogger.instance.log('Scan history save failed',
          detail: e.toString(), context: 'ScanHistory');
    }
  }

  /// Cancel pending saves and release resources.
  void dispose() {
    _saveTimer?.cancel();
    _saveTimer = null;
    // Flush any pending changes synchronously to avoid data loss
    final path = _filePath;
    if (path != null && _entries.isNotEmpty) {
      try {
        File(path).writeAsStringSync(
          jsonEncode(_entries.map((e) => e.toJson()).toList()),
        );
      } catch (e) {
        debugPrint('[ScanHistory] Flush on dispose failed: $e');
        ErrorLogger.instance.log('Scan history flush failed',
            detail: e.toString(), context: 'ScanHistory');
      }
    }
  }
}
