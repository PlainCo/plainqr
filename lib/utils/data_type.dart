import 'qr_escape.dart';

/// All supported QR/barcode data types.
///
/// Each variant has a safe parser that returns `null` for invalid input.
/// No exceptions thrown from parsing — always returns [DataType.plainText]
/// as the final fallback.
enum DataType {
  url,
  email,
  sms,
  phone,
  vcard,
  mecard,
  wifi,
  geo,
  calendar,
  bitcoin,
  paypal,
  whatsapp,
  telegram,
  signal,
  twitter,
  facetime,
  skype,
  appStore,
  plainText;

  /// Detect the type from [rawValue] safely.
  static DetectedScan detect(String rawValue) {
    if (rawValue.isEmpty) return DetectedScan(type: DataType.plainText, value: rawValue);

    // Ordered by prefix specificity (most specific first)
    if (rawValue.startsWith('BEGIN:VCARD')) return _vcard(rawValue);
    if (rawValue.startsWith('MECARD:')) return _mecard(rawValue);
    if (rawValue.startsWith('WIFI:')) return _wifi(rawValue);
    if (rawValue.startsWith('BEGIN:VEVENT') || rawValue.startsWith('BEGIN:VCALENDAR')) return _calendar(rawValue);
    if (rawValue.startsWith('bitcoin:')) return _bitcoin(rawValue);
    if (rawValue.startsWith('facetime://')) return _facetime(rawValue);
    if (rawValue.startsWith('facetime:')) return _facetime(rawValue);
    if (rawValue.startsWith('sgnl://')) return _signal(rawValue);
    if (rawValue.startsWith('skype:')) return _skype(rawValue);
    if (rawValue.startsWith('sms:') || rawValue.startsWith('smsto:')) return _sms(rawValue);
    if (rawValue.startsWith('tel:')) return DetectedScan(type: DataType.phone, value: rawValue, displayValue: rawValue.substring(4));
    if (rawValue.startsWith('mailto:')) return DetectedScan(type: DataType.email, value: rawValue, displayValue: rawValue.substring(7));
    if (rawValue.startsWith('geo:')) return _geo(rawValue);
    if (rawValue.startsWith('https://wa.me/') || rawValue.startsWith('http://wa.me/')) {
      final clean = rawValue.replaceFirst(RegExp(r'^https?://wa\.me/'), '');
      return DetectedScan(type: DataType.whatsapp, value: rawValue, displayValue: clean);
    }
    if (rawValue.startsWith('https://t.me/') || rawValue.startsWith('http://t.me/')) {
      final clean = rawValue.replaceFirst(RegExp(r'^https?://t\.me/'), '');
      return DetectedScan(type: DataType.telegram, value: rawValue, displayValue: clean);
    }
    if (rawValue.startsWith('https://twitter.com/') || rawValue.startsWith('http://twitter.com/')) {
      final clean = rawValue.replaceFirst(RegExp(r'^https?://twitter\.com/'), '');
      return DetectedScan(type: DataType.twitter, value: rawValue, displayValue: clean);
    }
    if (rawValue.startsWith('https://paypal.me/') || rawValue.startsWith('http://paypal.me/')) {
      final clean = rawValue.replaceFirst(RegExp(r'^https?://paypal\.me/'), '');
      return DetectedScan(type: DataType.paypal, value: rawValue, displayValue: clean);
    }
    if (rawValue.startsWith('market://details?id=')) {
      return DetectedScan(type: DataType.appStore, value: rawValue, displayValue: rawValue.substring(20));
    }
    if (rawValue.startsWith('itms-apps://') || rawValue.startsWith('itms-services://')) {
      return DetectedScan(type: DataType.appStore, value: rawValue, displayValue: rawValue);
    }
    if (rawValue.startsWith('http://') || rawValue.startsWith('https://')) {
      return DetectedScan(type: DataType.url, value: rawValue);
    }

    // Structured data detection (CSV-like, key:value, fixed-width)
    // Must be before plainText fallback
    {
      final structured = _tryStructured(rawValue);
      if (structured != null) return structured;
    }

    return DetectedScan(type: DataType.plainText, value: rawValue);
  }

  /// Try to detect structured data patterns in [raw].
  /// Returns null if no known structure is found.
  static DetectedScan? _tryStructured(String raw) {
    final lines = raw.split('\n').map((l) => l.trim()).where((l) => l.isNotEmpty).toList();
    if (lines.length < 2) return null;

    // Pattern 1: Delimiter-agnostic table (try , ; | \t)
    for (final delim in [',', ';', '|', '\t']) {
      final rows = lines.map((l) => _splitDelimited(l, delim)).toList();
      final colCount = rows.first.length;
      if (colCount >= 2 && rows.every((r) => r.length == colCount)) {
        final headers = rows.first;
        final dataRows = rows.skip(1).toList();
        return DetectedScan(
          type: DataType.plainText,
          value: raw,
          displayValue: '${dataRows.length} rows · ${headers.take(3).join(', ')}${headers.length > 3 ? '…' : ''}',
          table: StructuredTable(headers: headers, rows: dataRows),
        );
      }
    }

    // Pattern 2: Key:value pairs (at least 2 lines with "key: value" pattern)
    final kvPattern = RegExp(r'^[A-Za-z0-9_]{1,30}:\s*.+');
    if (lines.every((l) => kvPattern.hasMatch(l))) {
      final pairs = <String, String>{};
      for (final l in lines) {
        final idx = l.indexOf(':');
        if (idx > 0 && idx < l.length - 1) {
          pairs[l.substring(0, idx).trim()] = l.substring(idx + 1).trim();
        }
      }
      if (pairs.length >= 2) {
        return DetectedScan(
          type: DataType.plainText,
          value: raw,
          displayValue: pairs.entries.first.value,
          fields: pairs.map((k, v) => MapEntry(k, v)),
        );
      }
    }

    // Pattern 3: Fixed-width — all lines same length
    // No reliable column detection for fixed-width; key:value pattern above
    // catches most structured data. Fall through to plainText.

    return null;
  }

  /// Split [line] by [delimiter], trimming each cell.
  static List<String> _splitDelimited(String line, String delimiter) {
    return line.split(delimiter).map((c) => c.trim()).where((c) => c.isNotEmpty).toList();
  }

  // ─── Safe parsers per type ──────────────────────────────────

  static DetectedScan _vcard(String raw) {
    // Unescape vCard fields so escaped chars (e.g. \, \;) are human-readable
    String? u(String? s) => s != null ? unescapeVcardField(s) : null;
    final name = u(_extractVcardField(raw, 'FN'));
    final tel = u(_extractVcardField(raw, 'TEL'));
    final email = u(_extractVcardField(raw, 'EMAIL'));
    final adr = u(_extractVcardField(raw, 'ADR'));
    final org = u(_extractVcardField(raw, 'ORG'));
    final title = u(_extractVcardField(raw, 'TITLE'));
    final url = u(_extractVcardField(raw, 'URL'));
    final note = u(_extractVcardField(raw, 'NOTE'));
    final bday = u(_extractVcardField(raw, 'BDAY'));
    final nickname = u(_extractVcardField(raw, 'NICKNAME'));
    return DetectedScan(
      type: DataType.vcard,
      value: raw,
      displayValue: name ?? 'Contact',
      fields: {
        'name': name,
        'tel': tel,
        'email': email,
        'address': adr,
        'org': org,
        'title': title,
        'url': url,
        'note': note,
        'bday': bday,
        'nickname': nickname,
      },
    );
  }

  static DetectedScan _mecard(String raw) {
    final name = _extractField(raw, 'N:');
    final tel = _extractField(raw, 'TEL:');
    final email = _extractField(raw, 'EMAIL:');
    final adr = _extractField(raw, 'ADR:');
    final url = _extractField(raw, 'URL:');
    final bday = _extractField(raw, 'BDAY:');
    final nickname = _extractField(raw, 'NICKNAME:');
    final note = _extractField(raw, 'NOTE:');
    final display = name != null ? name.replaceAll(',', ' ') : 'Contact';
    return DetectedScan(
      type: DataType.mecard,
      value: raw,
      displayValue: display,
      fields: {
        'name': display,
        'tel': tel,
        'email': email,
        'address': adr,
        'url': url,
        'bday': bday,
        'nickname': nickname,
        'note': note,
      },
    );
  }

  static DetectedScan _wifi(String raw) {
    final ssid = _extractWifiField(raw, 'S:');
    final password = _extractWifiField(raw, 'P:');
    final encryption = _extractWifiField(raw, 'T:');
    final hidden = _extractWifiField(raw, 'H:');
    return DetectedScan(
      type: DataType.wifi,
      value: raw,
      displayValue: ssid ?? 'WiFi Network',
      fields: {
        'ssid': ssid,
        'password': password,
        'encryption': encryption,
        'hidden': hidden,
      },
    );
  }

  /// Extract a WiFi field value, handling backslash-escaped delimiters.
  /// WiFi format: `WIFI:S:<ssid>;T:<enc>;P:<pwd>;H:<hidden>;;`
  /// Semicolons preceded by `\` are part of the value, not field separators.
  static String? _extractWifiField(String data, String prefix) {
    final start = data.indexOf(prefix);
    if (start < 0) return null;
    final valueStart = start + prefix.length;
    if (valueStart >= data.length) return null;
    // Walk character by character, respecting \; as escaped semicolon
    var i = valueStart;
    while (i < data.length) {
      if (data[i] == ';' && (i == 0 || data[i - 1] != r'\')) {
        break; // Unescaped semicolon = field separator
      }
      if (data[i] == '\n') {
        break; // Newline always ends the field
      }
      i++;
    }
    final raw = data.substring(valueStart, i).trim();
    return unescapeWifiField(raw);
  }

  static DetectedScan _calendar(String raw) {
    // If wrapped in VCALENDAR, extract the VEVENT block
    String data = raw;
    if (data.startsWith('BEGIN:VCALENDAR')) {
      final veventStart = data.indexOf('BEGIN:VEVENT');
      final veventEnd = data.indexOf('END:VEVENT');
      if (veventStart >= 0 && veventEnd > veventStart) {
        data = data.substring(veventStart, veventEnd + 'END:VEVENT'.length);
      }
    }

    final summary = _extractIcsField(data, 'SUMMARY');
    final dtstart = _extractIcsField(data, 'DTSTART');
    final dtend = _extractIcsField(data, 'DTEND');
    final location = _extractIcsField(data, 'LOCATION');
    final description = _extractIcsField(data, 'DESCRIPTION');
    // Unescape vCard-style escaped chars in location (from calendar_form.dart)
    final uLocation = location != null ? unescapeVcardField(location) : null;
    final organizer = _extractIcsField(data, 'ORGANIZER');
    final attendee = _extractIcsField(data, 'ATTENDEE');
    return DetectedScan(
      type: DataType.calendar,
      value: raw,
      displayValue: summary ?? 'Calendar Event',
      fields: {
        'summary': summary,
        'dtstart': dtstart,
        'dtend': dtend,
        'location': uLocation,
        'description': description,
        'organizer': organizer,
        'attendee': attendee,
      },
    );
  }

  /// Extract an iCalendar field that may have parameters (e.g. DTSTART;VALUE=DATE:).
  /// Uses simple string search: finds the field name, then the next colon,
  /// then the value until end of line.
  static String? _extractIcsField(String data, String fieldName) {
    // Find FIELD: or FIELD; (the latter means it has parameters)
    var start = data.indexOf('$fieldName:');
    if (start < 0) {
      start = data.indexOf('$fieldName;');
    }
    if (start < 0) return null;
    // Find the colon that separates the parameter/value from the actual value
    final colon = data.indexOf(':', start);
    if (colon < 0 || colon >= data.length - 1) return null;
    final end = data.indexOf('\n', colon + 1);
    return data.substring(colon + 1, end >= 0 ? end : data.length).trim();
  }

  static DetectedScan _bitcoin(String raw) {
    final clean = raw.startsWith('bitcoin:') ? raw.substring(8) : raw;
    return DetectedScan(
      type: DataType.bitcoin,
      value: raw,
      displayValue: clean,
    );
  }

  static DetectedScan _sms(String raw) {
    final clean = raw.replaceFirst(RegExp(r'^sms(to)?:'), '');
    return DetectedScan(
      type: DataType.sms,
      value: raw,
      displayValue: clean,
    );
  }

  static DetectedScan _facetime(String raw) {
    String target;
    if (raw.startsWith('facetime://')) {
      target = raw.substring(11);
    } else if (raw.startsWith('facetime:')) {
      target = raw.substring(9);
    } else {
      target = raw;
    }
    return DetectedScan(
      type: DataType.facetime,
      value: raw,
      displayValue: target,
    );
  }

  static DetectedScan _signal(String raw) {
    final clean = raw.startsWith('sgnl://') ? raw.substring(7) : raw;
    return DetectedScan(
      type: DataType.signal,
      value: raw,
      displayValue: clean,
    );
  }

  static DetectedScan _skype(String raw) {
    final clean = raw.startsWith('skype:') ? raw.substring(6) : raw;
    return DetectedScan(
      type: DataType.skype,
      value: raw,
      displayValue: clean,
    );
  }

  /// Extract a vCard field that may have parameters (e.g. TEL;TYPE=WORK:).
  static String? _extractVcardField(String data, String fieldName) {
    // Try exact match first: FIELD:value
    var result = _extractField(data, '$fieldName:');
    if (result != null) return result;
    // Try with parameters: FIELD;PARAM=val:value
    final start = RegExp('^$fieldName;.*?:', multiLine: true).firstMatch(data);
    if (start != null) {
      final afterColon = start.end;
      final end = data.indexOf('\n', afterColon);
      return data.substring(afterColon, end >= 0 ? end : data.length).trim();
    }
    return null;
  }

  static DetectedScan _geo(String raw) {
    final coords = raw.startsWith('geo:') ? raw.substring(4) : raw;
    return DetectedScan(
      type: DataType.geo,
      value: raw,
      displayValue: coords,
    );
  }

  /// Extract the value after [prefix] before the next newline or semicolon.
  static String? _extractField(String data, String prefix) {
    final start = data.indexOf(prefix);
    if (start < 0) return null;
    final valueStart = start + prefix.length;
    if (valueStart >= data.length) return null;
    final end = data.indexOf('\n', valueStart);
    final semicolon = data.indexOf(';', valueStart);
    final actualEnd = switch ((end >= 0, semicolon >= 0)) {
      (true, true) => end < semicolon ? end : semicolon,
      (true, false) => end,
      (false, true) => semicolon,
      (false, false) => data.length,
    };
    return data.substring(valueStart, actualEnd).trim();
  }
}

/// A parsed table from structured data (CSV, fixed-width, etc.).
class StructuredTable {
  final List<String> headers;
  final List<List<String>> rows;

  const StructuredTable({required this.headers, required this.rows});
}

/// The result of scanning + detecting a barcode value.
class DetectedScan {
  final DataType type;
  final String value;
  final String displayValue;
  final Map<String, String?> fields;
  final StructuredTable? table;

  const DetectedScan({
    required this.type,
    required this.value,
    String? displayValue,
    Map<String, String?>? fields,
    this.table,
  }) : displayValue = displayValue ?? value,
       fields = fields ?? const {};
}
