// test/utils/qr_escape_test.dart
import 'package:flutter_test/flutter_test.dart';
import 'package:qrscan/utils/qr_escape.dart';

void main() {
  group('escapeVcardField', () {
    test('escapes backslash', () {
      expect(escapeVcardField(r'C:\path'), r'C:\\path');
    });

    test('escapes semicolons', () {
      expect(escapeVcardField('a;b'), r'a\;b');
    });

    test('escapes commas', () {
      expect(escapeVcardField('Doe, John'), r'Doe\, John');
    });

    test('escapes newlines', () {
      expect(escapeVcardField('line1\nline2'), r'line1\nline2');
    });

    test('escapes all special characters together', () {
      expect(escapeVcardField(r'a\b,c;d'), r'a\\b\,c\;d');
    });

    test('passes through normal text unchanged', () {
      expect(escapeVcardField('John Doe'), 'John Doe');
    });

    test('handles empty string', () {
      expect(escapeVcardField(''), '');
    });

    test('escapes name with comma (common case)', () {
      expect(escapeVcardField('Smith, John'), r'Smith\, John');
    });
  });

  group('escapeWifiField', () {
    test('escapes backslash', () {
      expect(escapeWifiField(r'pass\word'), r'pass\\word');
    });

    test('escapes double quote', () {
      expect(escapeWifiField('pass"word'), r'pass\"word');
    });

    test('escapes comma', () {
      expect(escapeWifiField('pass,word'), r'pass\,word');
    });

    test('escapes semicolon', () {
      expect(escapeWifiField('pass;word'), r'pass\;word');
    });

    test('escapes colon', () {
      expect(escapeWifiField('pass:word'), r'pass\:word');
    });

    test('passes through normal text unchanged', () {
      expect(escapeWifiField('MyNetwork'), 'MyNetwork');
    });

    test('handles empty string', () {
      expect(escapeWifiField(''), '');
    });

    test('escapes all special characters together', () {
      expect(escapeWifiField(r'a\b"c,d;e:f'), r'a\\b\"c\,d\;e\:f');
    });
  });

  group('unescapeWifiField', () {
    test('unescapes backslash', () {
      expect(unescapeWifiField(r'pass\\word'), r'pass\word');
    });

    test('unescapes double quote', () {
      expect(unescapeWifiField(r'pass\"word'), 'pass"word');
    });

    test('unescapes comma', () {
      expect(unescapeWifiField(r'pass\,word'), 'pass,word');
    });

    test('unescapes semicolon', () {
      expect(unescapeWifiField(r'My\;Net'), 'My;Net');
    });

    test('unescapes colon', () {
      expect(unescapeWifiField(r'pass\:word'), 'pass:word');
    });

    test('passes through normal text unchanged', () {
      expect(unescapeWifiField('MyNetwork'), 'MyNetwork');
    });

    test('round-trips with escapeWifiField', () {
      const original = r'My;Net:pass\word,test';
      final escaped = escapeWifiField(original);
      final unescaped = unescapeWifiField(escaped);
      expect(unescaped, original);
    });
  });

  group('encodeSmsBody', () {
    test('encodes spaces as %20', () {
      expect(encodeSmsBody('Hello World'), 'Hello%20World');
    });

    test('encodes ampersand', () {
      expect(encodeSmsBody('a&b'), 'a%26b');
    });

    test('encodes question mark', () {
      expect(encodeSmsBody('a?b'), 'a%3Fb');
    });

    test('encodes hash', () {
      expect(encodeSmsBody('a#b'), 'a%23b');
    });

    test('passes through simple text unchanged', () {
      expect(encodeSmsBody('Hello'), 'Hello');
    });

    test('encodes percent sign', () {
      expect(encodeSmsBody('100%'), '100%25');
    });

    test('handles empty string', () {
      expect(encodeSmsBody(''), '');
    });
  });
}