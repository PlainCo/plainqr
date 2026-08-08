import 'package:flutter/material.dart';
import 'package:flutter/semantics.dart';
import 'package:flutter/services.dart';
import 'package:qrscan/utils/platform_channels.dart';
import 'package:share_plus/share_plus.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:wifi_iot/wifi_iot.dart';
import 'package:qrscan/l10n/generated/app_localizations.dart';

import '../utils/data_type.dart';
import '../utils/data_type_extensions.dart';
import 'shareable_card.dart';

/// Standalone row of type-specific action buttons for a [DetectedScan].
/// Used by [ScanResultCard] and the history detail screen.
class ScanActions extends StatelessWidget {
  final DetectedScan result;
  final bool autoOpenDangerous;

  const ScanActions({
    super.key,
    required this.result,
    this.autoOpenDangerous = false,
  });

  @override
  Widget build(BuildContext context) {
    final actions = _buildActions(context);
    if (actions.isEmpty) return const SizedBox.shrink();
    return Wrap(
      spacing: 8,
      runSpacing: 8,
      children: actions,
    );
  }

  List<Widget> _buildActions(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final v = result.value;
    switch (result.type) {
      case DataType.url:
        return [
          _action(l10n.actionOpen, Icons.open_in_new, () => _launchUrl(context, v)),
          _action(l10n.actionCopy, Icons.copy, () => _copy(context, v)),
          _action(l10n.actionGenerate, Icons.card_giftcard, () => _generate(context)),
          _action(l10n.actionShare, Icons.share, () => _share(context, v)),
        ];

      case DataType.email:
        return [
          _action(l10n.actionEmail, Icons.email, () => _launchUrl(context, v)),
          _action(l10n.actionCopy, Icons.copy, () => _copy(context, v)),
          _action(l10n.actionGenerate, Icons.card_giftcard, () => _generate(context)),
        ];

      case DataType.phone:
        return [
          _action(l10n.actionCall, Icons.phone, () => _launchUrl(context, v)),
          _action(l10n.actionCopy, Icons.copy, () => _copy(context, v)),
          _action(l10n.actionGenerate, Icons.card_giftcard, () => _generate(context)),
        ];

      case DataType.sms:
        return [
          _action(l10n.actionSendSms, Icons.sms, () => _launchUrl(context, v)),
          _action(l10n.actionCopy, Icons.copy, () => _copy(context, v)),
          _action(l10n.actionGenerate, Icons.card_giftcard, () => _generate(context)),
        ];

      case DataType.wifi:
        return [
          _action(l10n.actionConnect, Icons.wifi, () => _connectToWifi(context)),
          if (result.fields['ssid'] != null)
            _action(l10n.actionCopySsid, Icons.copy, () => _copy(context, result.fields['ssid']!)),
          if (result.fields['password'] != null)
            _action(l10n.actionCopyPassword, Icons.lock, () => _copy(context, result.fields['password']!)),
          _action(l10n.actionGenerate, Icons.card_giftcard, () => _generate(context)),
        ];

      case DataType.geo:
        return [
          _action(l10n.actionOpenMaps, Icons.map, () => _launchGeo(context, v)),
          _action(l10n.actionCopy, Icons.copy, () => _copy(context, v)),
          _action(l10n.actionGenerate, Icons.card_giftcard, () => _generate(context)),
        ];

      case DataType.whatsapp:
        return [
          _action(l10n.actionOpenInWhatsApp, Icons.chat, () => _launchUrl(context, v)),
          _action(l10n.actionCopy, Icons.copy, () => _copy(context, v)),
          _action(l10n.actionGenerate, Icons.card_giftcard, () => _generate(context)),
        ];
      case DataType.telegram:
        return [
          _action(l10n.actionOpenInTelegram, Icons.send, () => _launchUrl(context, v)),
          _action(l10n.actionCopy, Icons.copy, () => _copy(context, v)),
          _action(l10n.actionGenerate, Icons.card_giftcard, () => _generate(context)),
        ];
      case DataType.signal:
        return [
          _action(l10n.actionOpenInSignal, Icons.lock, () => _launchUrl(context, v)),
          _action(l10n.actionCopy, Icons.copy, () => _copy(context, v)),
          _action(l10n.actionGenerate, Icons.card_giftcard, () => _generate(context)),
        ];
      case DataType.twitter:
        return [
          _action(l10n.actionOpenInTwitter, Icons.alternate_email, () => _launchUrl(context, v)),
          _action(l10n.actionCopy, Icons.copy, () => _copy(context, v)),
          _action(l10n.actionGenerate, Icons.card_giftcard, () => _generate(context)),
        ];
      case DataType.facetime:
        return [
          _action(l10n.actionFaceTimeCall, Icons.videocam, () => _launchUrl(context, v)),
          _action(l10n.actionCopy, Icons.copy, () => _copy(context, v)),
          _action(l10n.actionGenerate, Icons.card_giftcard, () => _generate(context)),
        ];
      case DataType.skype:
        return [
          _action(l10n.actionOpenInSkype, Icons.call, () => _launchUrl(context, v)),
          _action(l10n.actionCopy, Icons.copy, () => _copy(context, v)),
          _action(l10n.actionGenerate, Icons.card_giftcard, () => _generate(context)),
        ];

      case DataType.bitcoin:
        return [
          _action(l10n.actionOpenInWallet, Icons.currency_bitcoin, () => _launchUrl(context, v)),
          _action(l10n.actionCopyAddress, Icons.copy, () => _copy(context, v)),
          _action(l10n.actionGenerate, Icons.card_giftcard, () => _generate(context)),
        ];

      case DataType.paypal:
        return [
          _action(l10n.actionOpenInPayPal, Icons.payments, () => _launchUrl(context, v)),
          _action(l10n.actionCopy, Icons.copy, () => _copy(context, v)),
          _action(l10n.actionGenerate, Icons.card_giftcard, () => _generate(context)),
        ];

      case DataType.appStore:
        return [
          _action(l10n.actionOpenStore, Icons.shopping_cart, () => _launchUrl(context, v)),
          _action(l10n.actionCopy, Icons.copy, () => _copy(context, v)),
          _action(l10n.actionGenerate, Icons.card_giftcard, () => _generate(context)),
        ];

      case DataType.vcard:
        return [
          _action(l10n.actionAddContact, Icons.person_add, () => _addContact(context)),
          _action(l10n.actionCopy, Icons.copy, () => _copy(context, v)),
          _action(l10n.actionGenerate, Icons.card_giftcard, () => _generate(context)),
          _action(l10n.actionShare, Icons.share, () => _share(context, v)),
        ];

      case DataType.mecard:
        return [
          _action(l10n.actionAddContact, Icons.person_add, () => _addContact(context)),
          _action(l10n.actionCopy, Icons.copy, () => _copy(context, v)),
          _action(l10n.actionGenerate, Icons.card_giftcard, () => _generate(context)),
          _action(l10n.actionShare, Icons.share, () => _share(context, v)),
        ];

      case DataType.calendar:
        return [
          _action(l10n.actionAddToCalendar, Icons.event, () => _addEvent(context)),
          _action(l10n.actionCopy, Icons.copy, () => _copy(context, v)),
          _action(l10n.actionGenerate, Icons.card_giftcard, () => _generate(context)),
          _action(l10n.actionShare, Icons.share, () => _share(context, v)),
        ];

      case DataType.plainText:
        return [
          _action(l10n.actionCopy, Icons.copy, () => _copy(context, v)),
          _action(l10n.actionGenerate, Icons.card_giftcard, () => _generate(context)),
          _action(l10n.actionShare, Icons.share, () => _share(context, v)),
        ];
    }
  }

  Widget _action(String label, IconData icon, VoidCallback onTap) {
    return SizedBox(
      key: ValueKey('action_$label'),
      height: 40,
      child: OutlinedButton.icon(
        onPressed: onTap,
        icon: Icon(icon, size: 18),
        label: Text(label, style: const TextStyle(fontSize: 20)),
        style: OutlinedButton.styleFrom(
          padding: const EdgeInsets.symmetric(horizontal: 16),
        ),
      ),
    );
  }

  NetworkSecurity _wifiSecurity(String? encryption) {
    switch (encryption?.toUpperCase()) {
      case 'WEP':
        return NetworkSecurity.WEP;
      case 'NOPASS':
      case 'NONE':
        return NetworkSecurity.NONE;
      default:
        return NetworkSecurity.WPA;
    }
  }

  Future<void> _connectToWifi(BuildContext context) async {
    final l10n = AppLocalizations.of(context)!;
    final ssid = result.fields['ssid'];
    if (ssid == null || ssid.isEmpty) {
      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(l10n.wifiNoSsid)),
        );
        SemanticsService.sendAnnouncement(View.of(context), l10n.wifiNoSsid, TextDirection.ltr);
      }
      return;
    }
    final password = result.fields['password'] ?? '';
    final security = _wifiSecurity(result.fields['encryption']);
    try {
      final connected = await WiFiForIoTPlugin.connect(
        ssid, password: password, security: security, joinOnce: true,
      );
      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(connected ? l10n.wifiConnected(ssid) : l10n.wifiCouldNotConnect(ssid))),
        );
        SemanticsService.sendAnnouncement(View.of(context),
          connected ? l10n.wifiConnected(ssid) : l10n.wifiCouldNotConnect(ssid),
          TextDirection.ltr,
        );
      }
    } catch (e) {
      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(l10n.wifiConnectionFailed)),
        );
        SemanticsService.sendAnnouncement(View.of(context), l10n.wifiConnectionFailed, TextDirection.ltr);
      }
    }
  }

  void _copy(BuildContext context, String text) {
    final l10n = AppLocalizations.of(context)!;
    Clipboard.setData(ClipboardData(text: text));
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(l10n.copiedToClipboard), duration: const Duration(seconds: 1)),
    );
    SemanticsService.sendAnnouncement(View.of(context), l10n.copiedToClipboard, TextDirection.ltr);
  }

  void _share(BuildContext context, String text) {
    final l10n = AppLocalizations.of(context)!;
    SharePlus.instance.share(ShareParams(text: text));
    SemanticsService.sendAnnouncement(View.of(context), l10n.sharing, TextDirection.ltr);
  }





  /// Shows a dialog previewing the branded shareable card for this scan,
  /// then exports it as PNG when the user taps "Share".
  Future<void> _saveCardFromDialog(BuildContext ctx, GlobalKey<CardCaptureState> cardKey) async {
    await cardKey.currentState?.saveToDownloads(ctx);
    if (ctx.mounted) Navigator.of(ctx).pop();
  }

  Future<void> _shareCardFromDialog(BuildContext ctx, GlobalKey<CardCaptureState> cardKey) async {
    final l10n = AppLocalizations.of(ctx)!;
    await cardKey.currentState?.capture(ctx, subject: l10n.shareSubjectQrCode);
    if (ctx.mounted) Navigator.of(ctx).pop();
  }

  Future<void> _generate(BuildContext context) async {
    final l10n = AppLocalizations.of(context)!;
    final cardData = CardData(
      headline: result.type.headlineFor(result.value, result.fields),
      rawQrContent: result.value,
      typeIcon: result.type.icon,
    );

    await showDialog(
      context: context,
      builder: (ctx) {
        final cardKey = GlobalKey<CardCaptureState>();
        return AlertDialog(
          contentPadding: EdgeInsets.zero,
          content: CardCaptureWrapper(
            key: cardKey,
            child: ShareableCard(data: cardData),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(ctx).pop(),
              child: Text(l10n.actionCancel),
            ),
            OutlinedButton.icon(
              onPressed: () { _saveCardFromDialog(ctx, cardKey); },
              icon: const Icon(Icons.download, size: 16),
              label: Text(l10n.actionSave),
            ),
            const SizedBox(width: 8),
            FilledButton.icon(
              onPressed: () { _shareCardFromDialog(ctx, cardKey); },
              icon: const Icon(Icons.share, size: 16),
              label: Text(l10n.actionShare),
            ),
          ],
        );
      },
    );
  }

  Future<void> _addContact(BuildContext context) async {
    try {
      await fileChannel.invokeMethod(methodAddContact, {
        'name': result.fields['name'],
        'phone': result.fields['tel'],
        'email': result.fields['email'],
        'address': result.fields['address'],
        'org': result.fields['org'],
        'title': result.fields['title'],
        'note': result.fields['note'],
      });
    } catch (e) {
      if (context.mounted) {
        final l10n = AppLocalizations.of(context)!;
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(l10n.contactOpenFailed)),
        );
        SemanticsService.sendAnnouncement(View.of(context), l10n.contactOpenFailed, TextDirection.ltr);
      }
    }
  }

  Future<void> _addEvent(BuildContext context) async {
    try {
      await fileChannel.invokeMethod(methodAddEvent, {
        'summary': result.fields['summary'],
        'description': result.fields['description'],
        'location': result.fields['location'],
        'dtstart': result.fields['dtstart'],
        'dtend': result.fields['dtend'],
      });
    } catch (e) {
      if (context.mounted) {
        final l10n = AppLocalizations.of(context)!;
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(l10n.eventOpenFailed)),
        );
        SemanticsService.sendAnnouncement(View.of(context), l10n.eventOpenFailed, TextDirection.ltr);
      }
    }
  }

  /// Opens a geo: URI in Maps, enriched with a q parameter so Maps shows a pin.
  Future<void> _launchGeo(BuildContext context, String geoUri) async {
    // geo:lat,lng?q=lat,lng tells Maps to center AND drop a marker.
    // Using 0,0 as the base and q for the actual coordinates ensures a pin is shown.
    final enriched = geoUri.replaceFirstMapped(
      RegExp(r'^geo:([\d.\-]+),([\d.\-]+)'),
      (m) => 'geo:0,0?q=${m[1]},${m[2]}',
    );
    await _launchUrl(context, enriched);
  }

  Future<void> _launchUrl(BuildContext context, String url) async {
    if (!autoOpenDangerous) {
      final confirmed = await _confirmLaunch(context, url);
      if (!confirmed) return;
    }
    final uri = Uri.tryParse(url);
    Uri target;
    if (uri == null || !uri.hasScheme) {
      final withScheme = 'https://$url';
      final parsed = Uri.tryParse(withScheme);
      if (parsed == null) {
        if (context.mounted) {
          final l10n = AppLocalizations.of(context)!;
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(l10n.invalidUrl)),
          );
          SemanticsService.sendAnnouncement(View.of(context), l10n.invalidUrl, TextDirection.ltr);
        }
        return;
      }
      target = parsed;
    } else {
      target = uri;
    }
    try {
      final ok = await launchUrl(target, mode: LaunchMode.externalApplication);
      if (!ok && context.mounted) {
        final l10n = AppLocalizations.of(context)!;
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(l10n.couldNotOpenLink)),
        );
        SemanticsService.sendAnnouncement(View.of(context), l10n.couldNotOpenLink, TextDirection.ltr);
      } else if (ok && context.mounted) {
        final l10n = AppLocalizations.of(context)!;
        SemanticsService.sendAnnouncement(View.of(context), l10n.openingLink, TextDirection.ltr);
      }
    } catch (e) {
      if (context.mounted) {
        final l10n = AppLocalizations.of(context)!;
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(l10n.errorOpeningLink)),
        );
        SemanticsService.sendAnnouncement(View.of(context), l10n.errorOpeningLink, TextDirection.ltr);
      }
    }
  }

  Future<bool> _confirmLaunch(BuildContext context, String url) async {
    final l10n = AppLocalizations.of(context)!;
    final confirmed = await showDialog<bool>(
      context: context,
      builder: (ctx) => AlertDialog(
        title: Text(l10n.confirmOpenExternalTitle),
        content: Text(l10n.confirmOpenExternalBody(url)),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(ctx).pop(false),
            child: Text(l10n.actionCancel),
          ),
          FilledButton(
            onPressed: () => Navigator.of(ctx).pop(true),
            child: Text(l10n.actionOpen),
          ),
        ],
      ),
    );
    return confirmed ?? false;
  }
}
