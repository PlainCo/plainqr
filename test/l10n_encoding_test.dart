// Guards against mojibake (double-encoded text) in the .arb translation files.
//
// In July 2026 all 21 non-English .arb files were silently corrupted: correct
// UTF-8 was read back as Windows-1252 and re-saved as UTF-8, turning 'ă' into
// 'Äƒ' and 'Сканирование' into 'Ð¡ÐºÐ°Ð½...'. Nothing caught it — the files
// were still valid UTF-8 and valid JSON, `flutter analyze` reported 0 errors
// and every test passed. It was only visible by running the app in a
// non-English locale.
//
// This test reproduces the corruption in reverse: any run of characters that
// re-encodes to Windows-1252 and decodes as valid UTF-8 *was* double-encoded,
// because correctly-encoded text cannot survive that round trip.

import 'dart:convert';
import 'dart:io';

import 'package:flutter_test/flutter_test.dart';

/// Unicode code point -> cp1252 byte, for the 0x80–0x9F range where cp1252
/// differs from Latin-1. Outside this range cp1252 == the code point itself.
const _highMap = <int, int>{
  0x20AC: 0x80, 0x201A: 0x82, 0x0192: 0x83, 0x201E: 0x84, 0x2026: 0x85,
  0x2020: 0x86, 0x2021: 0x87, 0x02C6: 0x88, 0x2030: 0x89, 0x0160: 0x8A,
  0x2039: 0x8B, 0x0152: 0x8C, 0x017D: 0x8E, 0x2018: 0x91, 0x2019: 0x92,
  0x201C: 0x93, 0x201D: 0x94, 0x2022: 0x95, 0x2013: 0x96, 0x2014: 0x97,
  0x02DC: 0x98, 0x2122: 0x99, 0x0161: 0x9A, 0x203A: 0x9B, 0x0153: 0x9C,
  0x017E: 0x9E, 0x0178: 0x9F,
  // cp1252's five undefined slots map straight back to their byte. Omitting
  // these splits mojibake runs and leaves CJK/Indic/Thai half-repaired.
  0x81: 0x81, 0x8D: 0x8D, 0x8F: 0x8F, 0x90: 0x90, 0x9D: 0x9D,
};

/// The cp1252 byte this code point came from, or null if it isn't one.
int? _toByte(int cp) {
  if (cp < 0x80) return null;
  if (_highMap.containsKey(cp)) return _highMap[cp];
  if (cp >= 0xA0 && cp <= 0xFF) return cp;
  return null;
}

/// Returns the mojibake runs found in [text], as (corrupted, repaired) pairs.
List<(String, String)> findMojibake(String text) {
  final found = <(String, String)>[];
  final runes = text.runes.toList();
  var i = 0;
  while (i < runes.length) {
    if (_toByte(runes[i]) == null) {
      i++;
      continue;
    }
    var j = i;
    final bytes = <int>[];
    while (j < runes.length) {
      final b = _toByte(runes[j]);
      if (b == null) break;
      bytes.add(b);
      j++;
    }
    final run = String.fromCharCodes(runes.sublist(i, j));
    try {
      final decoded = utf8.decode(bytes);
      if (decoded != run && !decoded.contains('�')) {
        found.add((run, decoded));
      }
    } on FormatException {
      // Not double-encoded — correctly-encoded accents land here. Good.
    }
    i = j;
  }
  return found;
}

void main() {
  test('no .arb translation file contains double-encoded (mojibake) text', () {
    final dir = Directory('lib/l10n');
    final files = dir
        .listSync()
        .whereType<File>()
        .where((f) => f.path.endsWith('.arb'))
        .toList()
      ..sort((a, b) => a.path.compareTo(b.path));

    expect(files, isNotEmpty, reason: 'no .arb files found in lib/l10n');

    final failures = <String>[];
    for (final file in files) {
      final json = jsonDecode(file.readAsStringSync()) as Map<String, dynamic>;
      for (final entry in json.entries) {
        final value = entry.value;
        if (value is! String) continue;
        final hits = findMojibake(value);
        if (hits.isNotEmpty) {
          final (bad, good) = hits.first;
          failures.add(
            '${file.uri.pathSegments.last} [${entry.key}]: '
            '"$bad" should be "$good"',
          );
        }
      }
    }

    expect(
      failures,
      isEmpty,
      reason: 'Double-encoded text found in ${failures.length} string(s). '
          'This means a tool read UTF-8 as Windows-1252 and re-saved it — '
          'see docs, and always pass -Encoding utf8 in PowerShell.\n'
          '${failures.take(15).join('\n')}',
    );
  });
}
