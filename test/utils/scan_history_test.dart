// test/utils/scan_history_test.dart
import 'package:flutter_test/flutter_test.dart';
import 'package:qrscan/utils/data_type.dart';
import 'package:qrscan/utils/scan_history.dart';

void main() {
  group('ScanHistory', () {
    late ScanHistory history;

    setUp(() {
      history = ScanHistory();
    });

    test('starts empty', () {
      expect(history.entries, isEmpty);
    });

    test('add returns unmodifiable list', () {
      // Verify the getter returns an unmodifiable list
      expect(() => history.entries.add(ScanEntry(
        id: '1',
        timestamp: DateTime.now(),
        type: DataType.plainText,
        value: 'test',
        displayValue: 'test',
      )), throwsUnsupportedError);
    });

    test('add inserts entry to top', () async {
      final e1 = ScanEntry(id: '1', timestamp: DateTime(2025, 1, 1), type: DataType.plainText, value: 'a', displayValue: 'a');
      final e2 = ScanEntry(id: '2', timestamp: DateTime(2025, 1, 2), type: DataType.plainText, value: 'b', displayValue: 'b');
      await history.add(e1);
      await history.add(e2);
      expect(history.entries.length, 2);
      expect(history.entries[0].value, 'b'); // newest first
    });

    test('dedup by value updates timestamp and bumps to top', () async {
      final e1 = ScanEntry(id: '1', timestamp: DateTime(2025, 1, 1), type: DataType.url, value: 'https://example.com', displayValue: 'https://example.com');
      final e2 = ScanEntry(id: '2', timestamp: DateTime(2025, 1, 2), type: DataType.url, value: 'https://example.com', displayValue: 'https://example.com');
      await history.add(e1);
      await history.add(e2);
      expect(history.entries.length, 1); // deduped
      expect(history.entries[0].timestamp, e2.timestamp); // timestamp updated
    });

    test('dedup preserves first ID on duplicate', () async {
      final e1 = ScanEntry(id: '1', timestamp: DateTime(2025, 1, 1), type: DataType.url, value: 'https://example.com', displayValue: 'https://example.com');
      final e2 = ScanEntry(id: '2', timestamp: DateTime(2025, 1, 2), type: DataType.url, value: 'https://example.com', displayValue: 'https://example.com');
      await history.add(e1);
      await history.add(e2);
      expect(history.entries[0].id, '1'); // original ID preserved
    });

    test('remove by id', () async {
      final e1 = ScanEntry(id: '1', timestamp: DateTime(2025, 1, 1), type: DataType.plainText, value: 'a', displayValue: 'a');
      final e2 = ScanEntry(id: '2', timestamp: DateTime(2025, 1, 2), type: DataType.plainText, value: 'b', displayValue: 'b');
      await history.add(e1);
      await history.add(e2);
      await history.remove('1');
      expect(history.entries.length, 1);
      expect(history.entries[0].id, '2');
    });

    test('clear removes all entries', () async {
      await history.add(ScanEntry(id: '1', timestamp: DateTime(2025, 1, 1), type: DataType.plainText, value: 'a', displayValue: 'a'));
      await history.add(ScanEntry(id: '2', timestamp: DateTime(2025, 1, 2), type: DataType.plainText, value: 'b', displayValue: 'b'));
      await history.clear();
      expect(history.entries, isEmpty);
    });

    test('ScanEntry.fromScan creates entry from DetectedScan', () {
      final scan = DataType.detect('https://example.com');
      final entry = ScanEntry.fromScan(scan, source: ScanSource.camera);
      expect(entry.type, DataType.url);
      expect(entry.value, 'https://example.com');
      expect(entry.source, ScanSource.camera);
      expect(entry.id.isNotEmpty, true);
    });

    test('ScanEntry WiFi JSON redacts password from value and fields', () {
      final entry = ScanEntry(
        id: 'test-id',
        timestamp: DateTime(2025, 6, 15, 10, 30, 0),
        type: DataType.wifi,
        value: 'WIFI:S:Net;P:pass;;',
        displayValue: 'Net',
        fields: {'ssid': 'Net', 'password': 'pass'},
        source: ScanSource.camera,
      );
      final json = entry.toJson();
      expect(json['value'], 'WIFI:S:Net;;');
      expect(json['fields'], containsPair('ssid', 'Net'));
      expect(json['fields'], isNot(contains('password')));
      final restored = ScanEntry.fromJson(json);
      expect(restored.id, entry.id);
      expect(restored.type, entry.type);
      expect(restored.value, 'WIFI:S:Net;;');
      expect(restored.fields['ssid'], 'Net');
      expect(restored.fields.containsKey('password'), false);
      expect(restored.source, ScanSource.camera);
    });

    test('fromJson falls back to plainText for unknown type', () {
      final json = {
        'id': 'x',
        'timestamp': DateTime(2025, 1, 1).toIso8601String(),
        'type': 'nonexistent',
        'value': 'test',
        'displayValue': 'test',
      };
      final entry = ScanEntry.fromJson(json);
      expect(entry.type, DataType.plainText);
    });

    test('fromJson falls back to camera for unknown source', () {
      final json = {
        'id': 'x',
        'timestamp': DateTime(2025, 1, 1).toIso8601String(),
        'type': 'plainText',
        'value': 'test',
        'displayValue': 'test',
        'source': 'nonexistent',
      };
      final entry = ScanEntry.fromJson(json);
      expect(entry.source, ScanSource.camera);
    });

    test('fromJson uses displayValue fallback to value when missing', () {
      final json = {
        'id': 'x',
        'timestamp': DateTime(2025, 1, 1).toIso8601String(),
        'type': 'plainText',
        'value': 'fallback',
      };
      final entry = ScanEntry.fromJson(json);
      expect(entry.displayValue, 'fallback');
    });
  });
}
