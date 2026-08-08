import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// A local error log that stores non-PII error snapshots.
///
/// PII patterns (emails, phone numbers, etc.) are stripped before
/// the log entry is written. The logs can be retrieved and included in
/// feedback submissions — they contain only technical context, never user data.
class ErrorLogger {
  ErrorLogger._();
  static final ErrorLogger instance = ErrorLogger._();

  static const _key = 'plainqr_error_log';
  static const _maxEntries = 20;
  static const _maxBreadcrumbs = 40;

  final List<_ErrorEntry> _entries = [];
  final List<String> _breadcrumbs = [];

  /// Load persisted entries from disk.
  Future<void> init() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final raw = prefs.getString(_key);
      if (raw != null) {
        final list = jsonDecode(raw) as List;
        _entries.addAll(list.map((e) => _ErrorEntry.fromJson(e as Map<String, dynamic>)));
      }
    } catch (_) {
      // Start fresh if data is corrupt.
    }
  }

  /// Record an error. [message] and [detail] are sanitised automatically.
  void log(String message, {String? detail, String? context}) {
    final entry = _ErrorEntry(
      timestamp: DateTime.now(),
      message: _sanitize(message),
      detail: detail != null ? _sanitize(detail) : null,
      context: context,
    );
    _entries.insert(0, entry);
    while (_entries.length > _maxEntries) _entries.removeLast();
    _persist();
    debugPrint('[ErrorLogger] ${entry.timestamp}: $message');
  }

  /// Whether any errors have been recorded.
  bool get hasErrors => _entries.isNotEmpty;

  /// Whether [feedbackReport] would carry anything worth sending.
  ///
  /// Breadcrumbs count. The commonest report — "I tapped share and nothing
  /// happened" — throws no exception and logs no error, so gating on
  /// [hasErrors] alone would suppress exactly the trail that explains it.
  bool get hasReport => _entries.isNotEmpty || _breadcrumbs.isNotEmpty;

  /// Drop every entry.  Used by debug seeding so fabricated entries never
  /// accumulate across launches or outlive the build that wrote them.
  Future<void> clear() async {
    _entries.clear();
    _breadcrumbs.clear();
    await _persist();
  }

  /// Ring of recent user actions, appended under the errors in a report.
  /// Message only — no detail, no PII beyond what the caller passes.
  /// Nothing leaves the device unless the user submits feedback and leaves
  /// the telemetry toggle on.
  void breadcrumb(String message) {
    _breadcrumbs.insert(0, _sanitize(message));
    while (_breadcrumbs.length > _maxBreadcrumbs) _breadcrumbs.removeLast();
  }

  /// Return all log entries as a formatted string for inclusion in feedback.
  String get feedbackReport {
    final buffer = StringBuffer();
    if (_entries.isEmpty) {
      buffer.writeln('(no errors logged)');
    } else {
      for (final e in _entries) {
        final ts = e.timestamp.toIso8601String();
        final ctx = e.context != null ? ' [${e.context}]' : '';
        final detail = e.detail != null ? '\n    Detail: ${e.detail}' : '';
        buffer.writeln('$ts$ctx: ${e.message}$detail');
      }
    }
    if (_breadcrumbs.isNotEmpty) {
      buffer.writeln();
      buffer.writeln('── Recent actions ──');
      for (final b in _breadcrumbs) {
        buffer.writeln('  $b');
      }
    }
    return buffer.toString().trimRight();
  }

  /// Strip common PII patterns from a string.
  String _sanitize(String s) => s
      .replaceAll(RegExp(r'[\w.+-]+@[\w-]+\.[\w.-]+'), '[EMAIL]')
      .replaceAll(RegExp(r'\+?\d[\d\s\-().]{7,}\d'), '[PHONE]')
      .replaceAll(RegExp(r'\b\d{3}-\d{2}-\d{4}\b'), '[SSN]')
      .replaceAll(RegExp(r'\b\d{16}\b'), '[CC]');

  Future<void> _persist() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      await prefs.setString(_key, jsonEncode(_entries.map((e) => e.toJson()).toList()));
    } catch (_) {}
  }
}

class _ErrorEntry {
  final DateTime timestamp;
  final String message;
  final String? detail;
  final String? context;

  const _ErrorEntry({
    required this.timestamp,
    required this.message,
    this.detail,
    this.context,
  });

  Map<String, dynamic> toJson() => {
    'ts': timestamp.toIso8601String(),
    'msg': message,
    if (detail != null) 'det': detail,
    if (context != null) 'ctx': context,
  };

  factory _ErrorEntry.fromJson(Map<String, dynamic> json) => _ErrorEntry(
    timestamp: DateTime.parse(json['ts'] as String),
    message: json['msg'] as String,
    detail: json['det'] as String?,
    context: json['ctx'] as String?,
  );
}
