import 'package:flutter/material.dart';
import 'data_type.dart';

extension DataTypeMeta on DataType {
  String get label => switch (this) {
    DataType.url => 'URL',
    DataType.email => 'EMAIL',
    DataType.sms => 'SMS',
    DataType.phone => 'PHONE',
    DataType.vcard => 'vCARD',
    DataType.mecard => 'MeCARD',
    DataType.wifi => 'WiFi',
    DataType.geo => 'GEO',
    DataType.calendar => 'EVENT',
    DataType.bitcoin => 'BITCOIN',
    DataType.paypal => 'PAYPAL',
    DataType.whatsapp => 'WHATSAPP',
    DataType.telegram => 'TELEGRAM',
    DataType.signal => 'SIGNAL',
    DataType.twitter => 'TWITTER',
    DataType.facetime => 'FACETIME',
    DataType.skype => 'SKYPE',
    DataType.appStore => 'APP STORE',
    DataType.plainText => 'TEXT',
  };

  IconData get icon => switch (this) {
    DataType.url => Icons.link,
    DataType.email => Icons.email,
    DataType.sms => Icons.sms,
    DataType.phone => Icons.phone,
    DataType.vcard || DataType.mecard => Icons.contact_page,
    DataType.wifi => Icons.wifi,
    DataType.geo => Icons.map,
    DataType.calendar => Icons.event,
    DataType.bitcoin => Icons.currency_bitcoin,
    DataType.paypal => Icons.payments,
    DataType.whatsapp => Icons.chat,
    DataType.telegram => Icons.send,
    DataType.signal => Icons.lock,
    DataType.twitter => Icons.alternate_email,
    DataType.facetime => Icons.videocam,
    DataType.skype => Icons.call,
    DataType.appStore => Icons.shopping_cart,
    DataType.plainText => Icons.text_fields,
  };

  /// Human-readable headline for the shareable card's info line.
  /// Falls back to a friendly type label if no better field is available.
  String headlineFor(String rawValue, [Map<String, String?>? fields]) {
    switch (this) {
      case DataType.url:
        return rawValue.length <= 60 ? rawValue : '${rawValue.substring(0, 60)}…';
      case DataType.vcard || DataType.mecard:
        return fields?['name'] ?? 'Contact';
      case DataType.wifi:
        final ssid = fields?['ssid'];
        return ssid != null ? 'WiFi · $ssid' : 'WiFi Network';
      case DataType.calendar:
        return fields?['summary'] ?? 'Calendar Event';
      case DataType.email:
        final email = fields?['email'];
        return email is String && email.isNotEmpty
            ? email
            : 'Email';
      case DataType.phone:
        return 'Phone';
      case DataType.sms:
        return 'SMS';
      case DataType.geo:
        return 'Location';
      case DataType.bitcoin:
        return 'Bitcoin';
      case DataType.paypal:
        return 'PayPal';
      case DataType.whatsapp:
        return 'WhatsApp';
      case DataType.telegram:
        return 'Telegram';
      case DataType.signal:
        return 'Signal';
      case DataType.twitter:
        return 'Twitter';
      case DataType.facetime:
        return 'FaceTime';
      case DataType.skype:
        return 'Skype';
      case DataType.appStore:
        return 'App Store';
      case DataType.plainText:
        return rawValue.length <= 60 ? rawValue : '${rawValue.substring(0, 60)}…';
    }
  }
}