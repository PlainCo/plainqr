/// Escaping helpers for QR code data formats.
///
/// Centralizes escaping logic for vCard, WiFi, and SMS QR code types
/// so the same rules are applied consistently in generation and can
/// be unit-tested independently of widget code.
library;

/// Escape a text field for vCard 3.0 (RFC 2426).
///
/// Must escape (in order): backslash, semicolon, comma, newline.
String escapeVcardField(String s) => s
    .replaceAll(r'\', r'\\')
    .replaceAll(';', r'\;')
    .replaceAll(',', r'\,')
    .replaceAll('\n', r'\n');

/// Escape a WiFi QR field (WIFI: format).
///
/// Must escape (in order): backslash, double-quote, comma, semicolon, colon.
String escapeWifiField(String s) => s
    .replaceAll(r'\', r'\\')
    .replaceAll('"', r'\"')
    .replaceAll(',', r'\,')
    .replaceAll(';', r'\;')
    .replaceAll(':', r'\:');

/// Unescape a WiFi QR field (reverse of [escapeWifiField]).
String unescapeWifiField(String s) => s
    .replaceAll(r'\:', ':')
    .replaceAll(r'\;', ';')
    .replaceAll(r'\,', ',')
    .replaceAll(r'\"', '"')
    .replaceAll(r'\\', r'\');

/// Unescape a vCard 3.0 field (reverse of [escapeVcardField]).
String unescapeVcardField(String s) => s
    .replaceAll(r'\n', '\n')
    .replaceAll(r'\,', ',')
    .replaceAll(r'\;', ';')
    .replaceAll(r'\\', r'\');

/// URL-encode an SMS message body for the `smsto:` URI scheme.
///
/// `smsto:` doesn't use standard query-string encoding, but special
/// characters like `&`, `?`, `#`, `%`, and spaces will break the URI
/// or truncate the message on some SMS apps.
String encodeSmsBody(String s) => Uri.encodeComponent(s);