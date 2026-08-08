// test/utils/data_type_test.dart
import 'package:flutter_test/flutter_test.dart';
import 'package:qrscan/utils/data_type.dart';
import 'package:qrscan/utils/data_type_extensions.dart';

void main() {
  group('DataType.detect — URL', () {
    test('detects https URL', () {
      final r = DataType.detect('https://example.com/page');
      expect(r.type, DataType.url);
      expect(r.value, 'https://example.com/page');
    });

    test('detects http URL', () {
      final r = DataType.detect('http://example.com');
      expect(r.type, DataType.url);
    });
  });

  group('DataType.detect — vCard', () {
    test('extracts simple fields', () {
      final r = DataType.detect('BEGIN:VCARD\nFN:John Doe\nTEL:+123456\nEMAIL:john@test.com\nEND:VCARD');
      expect(r.type, DataType.vcard);
      expect(r.fields['name'], 'John Doe');
      expect(r.fields['tel'], '+123456');
      expect(r.fields['email'], 'john@test.com');
    });

    test('extracts parameterized fields (TEL;TYPE=WORK:)', () {
      final r = DataType.detect('BEGIN:VCARD\nTEL;TYPE=WORK:+123\nEND:VCARD');
      expect(r.type, DataType.vcard);
      expect(r.fields['tel'], '+123');
    });

    test('handles empty vCard gracefully', () {
      final r = DataType.detect('BEGIN:VCARD\nEND:VCARD');
      expect(r.type, DataType.vcard);
    });
  });

  group('DataType.detect — WiFi', () {
    test('extracts SSID and password', () {
      final r = DataType.detect('WIFI:S:MyNetwork;T:WPA;P:secret123;;');
      expect(r.type, DataType.wifi);
      expect(r.fields['ssid'], 'MyNetwork');
      expect(r.fields['password'], 'secret123');
      expect(r.fields['encryption'], 'WPA');
    });

    test('handles open network (no password)', () {
      final r = DataType.detect('WIFI:S:GuestNet;T:nopass;P:;;');
      expect(r.type, DataType.wifi);
      expect(r.fields['ssid'], 'GuestNet');
      expect(r.fields['password'], '');
    });
  });

  group('DataType.detect — Calendar', () {
    test('extracts event fields', () {
      final r = DataType.detect('BEGIN:VEVENT\nSUMMARY:Meeting\nDTSTART:20260101T120000Z\nDTEND:20260101T130000Z\nLOCATION:Room 1\nEND:VEVENT');
      expect(r.type, DataType.calendar);
      expect(r.fields['summary'], 'Meeting');
      expect(r.fields['dtstart'], '20260101T120000Z');
      expect(r.fields['dtend'], '20260101T130000Z');
      expect(r.fields['location'], 'Room 1');
    });

    test('handles VCALENDAR wrapping (qrcalendar.com format)', () {
      final raw = 'BEGIN:VCALENDAR\nVERSION:2.0\nPRODID:-//qrcalendar.com//EN\n'
          'BEGIN:VEVENT\nSUMMARY:Birthday Party\nDTSTART;VALUE=DATE:20260713\n'
          'DTEND;VALUE=DATE:20260714\nLOCATION:My House\n'
          'DESCRIPTION:Bring cake\nEND:VEVENT\nEND:VCALENDAR';
      final r = DataType.detect(raw);
      expect(r.type, DataType.calendar);
      expect(r.fields['summary'], 'Birthday Party');
      expect(r.fields['dtstart'], '20260713');
      expect(r.fields['dtend'], '20260714');
      expect(r.fields['location'], 'My House');
      expect(r.fields['description'], 'Bring cake');
    });

    test('handles VCALENDAR with TZID parameter on DTSTART', () {
      final raw = 'BEGIN:VCALENDAR\nVERSION:2.0\nPRODID:-//Test//\n'
          'BEGIN:VEVENT\nSUMMARY:Coffee\nDTSTART;TZID=America/New_York:20260713T100000\n'
          'DTEND;TZID=America/New_York:20260713T110000\nEND:VEVENT\nEND:VCALENDAR';
      final r = DataType.detect(raw);
      expect(r.type, DataType.calendar);
      expect(r.fields['summary'], 'Coffee');
      expect(r.fields['dtstart'], '20260713T100000');
      expect(r.fields['dtend'], '20260713T110000');
    });
  });

  group('DataType.detect — Email', () {
    test('extracts email address', () {
      final r = DataType.detect('mailto:user@example.com');
      expect(r.type, DataType.email);
      expect(r.displayValue, 'user@example.com');
    });
  });

  group('DataType.detect — Phone', () {
    test('extracts phone number', () {
      final r = DataType.detect('tel:+1234567890');
      expect(r.type, DataType.phone);
      expect(r.displayValue, '+1234567890');
    });
  });

  group('DataType.detect — SMS', () {
    test('detects sms: prefix', () {
      final r = DataType.detect('sms:+123456');
      expect(r.type, DataType.sms);
    });

    test('detects smsto: prefix', () {
      final r = DataType.detect('smsto:+123456:Hello');
      expect(r.type, DataType.sms);
    });
  });

  group('DataType.detect — Geo', () {
    test('extracts coordinates', () {
      final r = DataType.detect('geo:48.8566,2.3522');
      expect(r.type, DataType.geo);
      expect(r.displayValue, '48.8566,2.3522');
    });
  });

  group('DataType.detect — Messaging apps', () {
    test('detects WhatsApp wa.me link', () {
      final r = DataType.detect('https://wa.me/123456789');
      expect(r.type, DataType.whatsapp);
    });

    test('detects Telegram t.me link', () {
      final r = DataType.detect('https://t.me/username');
      expect(r.type, DataType.telegram);
    });

    test('detects Signal sgnl:// link', () {
      final r = DataType.detect('sgnl://username');
      expect(r.type, DataType.signal);
    });

    test('detects Twitter link', () {
      final r = DataType.detect('https://twitter.com/user');
      expect(r.type, DataType.twitter);
    });

    test('detects Skype link', () {
      final r = DataType.detect('skype:echo123');
      expect(r.type, DataType.skype);
    });

    test('detects FaceTime link', () {
      final r = DataType.detect('facetime://user@example.com');
      expect(r.type, DataType.facetime);
    });
  });

  group('DataType.detect — Financial', () {
    test('detects Bitcoin address', () {
      final r = DataType.detect('bitcoin:1A1zP1eP5QGefi2DMPTfTL5SLmv7DivfNa');
      expect(r.type, DataType.bitcoin);
    });

    test('detects PayPal.me link', () {
      final r = DataType.detect('https://paypal.me/user');
      expect(r.type, DataType.paypal);
    });
  });

  group('DataType.detect — App Store', () {
    test('detects market:// URL', () {
      final r = DataType.detect('market://details?id=com.example.app');
      expect(r.type, DataType.appStore);
    });
  });

  group('DataType.detect — plainText fallback', () {
    test('returns plainText for unrecognized input', () {
      final r = DataType.detect('Hello world');
      expect(r.type, DataType.plainText);
    });

    test('returns plainText for empty input', () {
      final r = DataType.detect('');
      expect(r.type, DataType.plainText);
    });
  });

  group('DataType.detect — Structured data', () {
    test('detects CSV with comma delimiter', () {
      final r = DataType.detect('Name,Age,City\nJohn,30,Paris\nJane,25,London');
      expect(r.table, isNotNull);
      expect(r.table!.headers, ['Name', 'Age', 'City']);
      expect(r.table!.rows.length, 2);
      expect(r.table!.rows[0], ['John', '30', 'Paris']);
    });

    test('detects CSV with semicolon delimiter', () {
      final r = DataType.detect('Name;Age;City\nJohn;30;Paris\nJane;25;London');
      expect(r.table, isNotNull);
      expect(r.table!.headers, ['Name', 'Age', 'City']);
    });

    test('detects CSV with pipe delimiter', () {
      final r = DataType.detect('Name|Age|City\nJohn|30|Paris\nJane|25|London');
      expect(r.table, isNotNull);
      expect(r.table!.headers, ['Name', 'Age', 'City']);
    });

    test('detects key:value pairs', () {
      final r = DataType.detect('Name: John Doe\nAge: 30\nCity: Paris');
      expect(r.fields['Name'], 'John Doe');
      expect(r.fields['Age'], '30');
      expect(r.fields['City'], 'Paris');
    });

    test('does not treat single-line text as structured', () {
      final r = DataType.detect('Just a single line of text');
      expect(r.table, isNull);
      expect(r.fields, isEmpty);
    });

    test('does not treat multi-line URLs as key:value pairs', () {
      // URLs contain colons but should not match the stricter kv regex
      final r = DataType.detect('https://example.com\nhttps://google.com');
      expect(r.fields, isEmpty);
    });

    test('key:value detection requires alphanumeric keys', () {
      // Lines with colons but non-alphanumeric keys should not match
      final r = DataType.detect('https://example.com/page\nhttp://test.com/other');
      expect(r.fields, isEmpty);
    });

    test('structured detection is lower priority than known prefix types', () {
      // CSV-like but starts with known prefix
      final r = DataType.detect('WIFI:S:Net;T:WPA;P:pass;;');
      expect(r.type, DataType.wifi);
    });
  });

  group('DataTypeMeta extension', () {
    test('label returns uppercase type name', () {
      expect(DataType.url.label, 'URL');
      expect(DataType.wifi.label, 'WiFi');
      expect(DataType.vcard.label, 'vCARD');
      expect(DataType.plainText.label, 'TEXT');
    });

    test('headlineFor truncates long URLs', () {
      final long = 'https://example.com/${'x' * 100}';
      final h = DataType.url.headlineFor(long);
      expect(h.length, lessThanOrEqualTo(63));
    });

    test('headlineFor uses fields for contact types', () {
      final h = DataType.vcard.headlineFor('BEGIN:VCARD...', {'name': 'Jane'});
      expect(h, 'Jane');
    });

    test('headlineFor uses SSID prefix for WiFi', () {
      final h = DataType.wifi.headlineFor('WIFI:S:X;P:y;;', {'ssid': 'X'});
      expect(h, 'WiFi · X');
    });
  });
}