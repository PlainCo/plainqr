// lib/screens/generator_screen.dart
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:qr_flutter/qr_flutter.dart';

import '../l10n/generated/app_localizations.dart';
import '../services/service_locator.dart';
import '../widgets/generator_forms/url_form.dart';
import '../widgets/generator_forms/text_form.dart';
import '../widgets/generator_forms/wifi_form.dart';
import '../widgets/generator_forms/vcard_form.dart';
import '../widgets/generator_forms/calendar_form.dart';
import '../widgets/generator_forms/phone_form.dart';
import '../widgets/generator_forms/email_form.dart';
import '../widgets/generator_forms/sms_form.dart';
import '../widgets/generator_forms/location_form.dart';
import '../widgets/shareable_card.dart';

// ── Helper functions ──────────────────────────────────────────

String _typeName(AppLocalizations l10n, String key) {
  switch (key) {
    case 'URL': return l10n.typeUrl;
    case 'Plain text': return l10n.typePlainText;
    case 'WiFi': return l10n.typeWifi;
    case 'vCard': return l10n.typeVcard;
    case 'Calendar': return l10n.typeCalendar;
    case 'Phone': return l10n.typePhone;
    case 'Email': return l10n.typeEmail;
    case 'SMS': return l10n.typeSms;
    case 'Location': return l10n.typeLocation;
    default: return key;
  }
}

String _typeDescription(AppLocalizations l10n, String key) {
  switch (key) {
    case 'URL': return l10n.typeUrlDescription;
    case 'Plain text': return l10n.typePlainTextDescription;
    case 'WiFi': return l10n.typeWifiDescription;
    case 'vCard': return l10n.typeVcardDescription;
    case 'Calendar': return l10n.typeCalendarDescription;
    case 'Phone': return l10n.typePhoneDescription;
    case 'Email': return l10n.typeEmailDescription;
    case 'SMS': return l10n.typeSmsDescription;
    case 'Location': return l10n.typeLocationDescription;
    default: return key;
  }
}

String _typeHeadline(AppLocalizations l10n, String key) {
  switch (key) {
    case 'URL': return l10n.typeUrlHeadline;
    case 'Plain text': return l10n.typePlainTextHeadline;
    case 'WiFi': return l10n.typeWifiHeadline;
    case 'vCard': return l10n.typeVcardHeadline;
    case 'Calendar': return l10n.typeCalendarHeadline;
    case 'Phone': return l10n.typePhoneHeadline;
    case 'Email': return l10n.typeEmailHeadline;
    case 'SMS': return l10n.typeSmsHeadline;
    case 'Location': return l10n.typeLocationHeadline;
    default: return key;
  }
}

// ── Type list ─────────────────────────────────────────────────

class _GenType {
  final String key;
  final IconData icon;
  final bool paid;
  const _GenType({
    required this.key,
    required this.icon,
    this.paid = false,
  });
}

const _types = <_GenType>[
  _GenType(key: 'URL', icon: Icons.link),
  _GenType(key: 'Plain text', icon: Icons.text_fields),
  _GenType(key: 'WiFi', icon: Icons.wifi, paid: true),
  _GenType(key: 'vCard', icon: Icons.contact_page, paid: true),
  _GenType(key: 'Calendar', icon: Icons.event, paid: true),
  _GenType(key: 'Phone', icon: Icons.phone),
  _GenType(key: 'Email', icon: Icons.email),
  _GenType(key: 'SMS', icon: Icons.sms),
  _GenType(key: 'Location', icon: Icons.map),
];

class GeneratorScreen extends StatefulWidget {
  const GeneratorScreen({super.key});
  @override
  State<GeneratorScreen> createState() => _GeneratorScreenState();
}

class _GeneratorScreenState extends State<GeneratorScreen> {
  @override
  void initState() {
    super.initState();
    purchaseService.processingNotifier.addListener(_onPurchaseChanged);
    purchaseService.unlockedNotifier.addListener(_onPurchaseChanged);
    purchaseService.priceNotifier.addListener(_onPurchaseChanged);
  }

  void _onPurchaseChanged() {
    if (mounted) {
      // ignore: no-empty-block
      setState(() {});
    }
  }

  Future<void> _onTypeTap(BuildContext context, _GenType t, bool isLocked) async {
    if (isLocked) {
      await _openUnlockScreen(context);
      if (mounted) {
        // ignore: no-empty-block
        setState(() {});
      }
    } else {
      Navigator.of(context).push(MaterialPageRoute(
        builder: (_) => _GeneratorForm(type: t),
      ));
    }
  }

  @override
  void dispose() {
    purchaseService.processingNotifier.removeListener(_onPurchaseChanged);
    purchaseService.unlockedNotifier.removeListener(_onPurchaseChanged);
    purchaseService.priceNotifier.removeListener(_onPurchaseChanged);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final cs = Theme.of(context).colorScheme;
    return Scaffold(
      appBar: AppBar(title: Text(l10n.generatorAppBarTitle)),
      body: ListView.separated(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
        itemCount: _types.length,
        separatorBuilder: (_, _) => const Divider(height: 1),
        itemBuilder: (context, index) {
          final t = _types[index];
          final isLocked = t.paid && !purchaseService.isUnlocked;
          final opacity = isLocked ? 0.4 : 1.0;

          return Opacity(
            opacity: opacity,
            child: ListTile(
              leading: Icon(t.icon, color: isLocked ? cs.onSurface : cs.primary),
              title: Text(_typeName(l10n, t.key), style: const TextStyle(fontSize: 18)),
              subtitle: Text(_typeDescription(l10n, t.key), style: TextStyle(fontSize: 18, color: cs.onSurfaceVariant)),
              trailing: t.paid
                  ? Switch(
                      value: purchaseService.isUnlocked,
                      onChanged: (_) {
                        if (!purchaseService.isUnlocked) {
                          _openUnlockScreen(context);
                        }
                      },
                    )
                  : const Icon(Icons.chevron_right, size: 18),
              contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 2),
              onTap: () => _onTypeTap(context, t, isLocked),
            ),
          );
        },
      ),
    );
  }
}

/// Opens the unlock screen for paid generator types.
Future<void> _openUnlockScreen(BuildContext context) {
  return Navigator.of(context).push(MaterialPageRoute(
    builder: (_) => const _UnlockScreen(),
  ));
}

Future<void> _doPurchase(BuildContext context) async {
  final success = await purchaseService.purchase(context);
  if (success && context.mounted) Navigator.of(context).pop();
}

Future<void> _doRestore(BuildContext context) async {
  await purchaseService.restore();
  if (purchaseService.isUnlocked && context.mounted) Navigator.of(context).pop();
}

// ── Coordinator form ─────────────────────────────────────────

class _GeneratorForm extends StatefulWidget {
  final _GenType type;
  const _GeneratorForm({required this.type});
  @override
  State<_GeneratorForm> createState() => _GeneratorFormState();
}

class _GeneratorFormState extends State<_GeneratorForm> {
  String _qrContent = '';
  bool _hasContent = false;
  CardThemeVariant _cardTheme = CardThemeVariant.light;
  bool _isSticker = false;
  String? _userLabel;
  Timer? _debounceTimer;

  void _onQrChanged(String content, bool valid) {
    _debounceTimer?.cancel();
    _debounceTimer = Timer(const Duration(milliseconds: 200), () {
      if (mounted) setState(() { _qrContent = content; _hasContent = valid; });
    });
  }

  @override
  void dispose() {
    _debounceTimer?.cancel();
    super.dispose();
  }

  String _headlineForCard(AppLocalizations l10n) {
    final label = _userLabel;
    if (label != null && label.trim().isNotEmpty) return label;
    if (widget.type.key == 'URL') return _qrContent;
    return _typeHeadline(l10n, widget.type.key);
  }

  Widget _buildForm() {
    switch (widget.type.key) {
      case 'URL': return UrlForm(onChanged: _onQrChanged);
      case 'Plain text': return TextForm(onChanged: _onQrChanged);
      case 'WiFi': return WifiForm(onChanged: _onQrChanged);
      case 'vCard': return VcardForm(onChanged: _onQrChanged);
      case 'Calendar': return CalendarForm(onChanged: _onQrChanged);
      case 'Phone': return PhoneForm(onChanged: _onQrChanged);
      case 'Email': return EmailForm(onChanged: _onQrChanged);
      case 'SMS': return SmsForm(onChanged: _onQrChanged);
      case 'Location': return LocationForm(onChanged: _onQrChanged);
      default: return const SizedBox.shrink();
    }
  }

  Future<void> _saveCardToDevice(AppLocalizations l10n) async {
    final cardData = CardData(
      headline: _headlineForCard(l10n), rawQrContent: _qrContent,
      userLabel: _userLabel, typeIcon: widget.type.icon, theme: _cardTheme,
      isSticker: _isSticker,
    );
    await showCardDialog(
      context,
      cardData: cardData,
      actionLabel: l10n.actionSave,
      actionIcon: Icons.download,
      onAction: (ctx, cardKey) async {
        await cardKey.currentState?.saveToDownloads(ctx);
        if (ctx.mounted) Navigator.of(ctx).pop();
      },
    );
  }

  Future<void> _shareCard(AppLocalizations l10n) async {
    final localizedTypeName = _typeName(l10n, widget.type.key);
    final cardData = CardData(
      headline: _headlineForCard(l10n), rawQrContent: _qrContent,
      userLabel: _userLabel, typeIcon: widget.type.icon, theme: _cardTheme,
      isSticker: _isSticker,
    );
    await showCardDialog(
      context,
      cardData: cardData,
      actionLabel: l10n.actionShare,
      actionIcon: Icons.share,
      onAction: (ctx, cardKey) async {
        await cardKey.currentState?.capture(ctx, subject: '$localizedTypeName QR Code');
        if (ctx.mounted) Navigator.of(ctx).pop();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final cs = Theme.of(context).colorScheme;
    final localizedTypeName = _typeName(l10n, widget.type.key);
    return Scaffold(
      appBar: AppBar(title: Text(l10n.generatorFormAppBarTitle(localizedTypeName))),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          _buildForm(),
          const SizedBox(height: 12),
          if (widget.type.key != 'Plain text')
            Padding(
              padding: const EdgeInsets.only(bottom: 8),
              child: TextField(
                decoration: InputDecoration(
                  labelText: l10n.generatorCardLabel,
                  hintText: l10n.generatorCardLabelHint,
                  border: const OutlineInputBorder(),
                  contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 14),
                ),
                onChanged: (v) => setState(() => _userLabel = v),
              ),
            ),
          if (_hasContent) ...[
            Text(l10n.generatorPreview, style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500, color: cs.onSurfaceVariant, letterSpacing: 1.2)),
            const SizedBox(height: 6),
            Center(
              child: QrImageView(data: _qrContent, version: QrVersions.auto, size: 200, backgroundColor: cs.surface, padding: const EdgeInsets.all(12)),
            ),
          ],
          const SizedBox(height: 16),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(l10n.generatorStyle, style: TextStyle(fontSize: 20, color: cs.onSurfaceVariant)),
              const SizedBox(height: 8),
              Wrap(
                spacing: 8,
                children: [
                  ChoiceChip(label: Text(l10n.generatorStyleLight), selected: !_isSticker && _cardTheme == CardThemeVariant.light, onSelected: (_) => setState(() { _isSticker = false; _cardTheme = CardThemeVariant.light; })),
                  ChoiceChip(label: Text(l10n.generatorStyleDark), selected: !_isSticker && _cardTheme == CardThemeVariant.dark, onSelected: (_) => setState(() { _isSticker = false; _cardTheme = CardThemeVariant.dark; })),
                  ChoiceChip(label: Text(l10n.generatorStyleSticker), selected: _isSticker, onSelected: (_) => setState(() => _isSticker = true)),
                ],
              ),
            ],
          ),
          const SizedBox(height: 16),
          FilledButton.icon(onPressed: _hasContent ? () { _shareCard(l10n); } : null, icon: const Icon(Icons.share, size: 18), label: Text(l10n.generatorShareCard)),
          const SizedBox(height: 8),
          OutlinedButton.icon(onPressed: _hasContent ? () { _saveCardToDevice(l10n); } : null, icon: const Icon(Icons.download, size: 18), label: Text(l10n.generatorSaveToDevice)),
          const SizedBox(height: 8),
          OutlinedButton.icon(
            onPressed: _hasContent ? () {
              Clipboard.setData(ClipboardData(text: _qrContent));
              final l10n = AppLocalizations.of(context)!;
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(l10n.generatorCopiedSnack)));
            } : null,
            icon: const Icon(Icons.copy, size: 18), label: Text(l10n.generatorCopyQrContent),
          ),
          const SizedBox(height: 32),
        ],
      ),
    );
  }
}

// ── Unlock Screen (Block 7) ──────────────────────────────────

/// Full-screen purchase flow for paid generator types.
class _UnlockScreen extends StatelessWidget {
  const _UnlockScreen();

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final cs = Theme.of(context).colorScheme;
    return Scaffold(
      appBar: AppBar(title: Text(l10n.unlockAppBarTitle)),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              _buildIcon(cs),
              const SizedBox(height: 16),
              _buildTitle(l10n, cs),
              const SizedBox(height: 12),
              _buildDescription(l10n, cs),
              const SizedBox(height: 32),
              _buildPurchaseButton(context, l10n),
              const SizedBox(height: 12),
              _buildRestoreButton(context, l10n),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildIcon(ColorScheme cs) =>
      Icon(Icons.lock_outline, size: 48, color: cs.primary);

  Widget _buildTitle(AppLocalizations l10n, ColorScheme cs) => Text(
        l10n.unlockTitle,
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 22, fontWeight: FontWeight.w700, color: cs.onSurface),
      );

  Widget _buildDescription(AppLocalizations l10n, ColorScheme cs) => Text(
        l10n.unlockDescription(purchaseService.price),
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 20, color: cs.onSurfaceVariant),
      );

  Widget _buildPurchaseButton(BuildContext context, AppLocalizations l10n) => SizedBox(
        width: double.infinity,
        child: FilledButton(
          onPressed: () { _doPurchase(context); },
          child: Text(l10n.unlockEnableButton(purchaseService.price)),
        ),
      );

  Widget _buildRestoreButton(BuildContext context, AppLocalizations l10n) => TextButton(
        onPressed: () { _doRestore(context); },
        child: Text(l10n.unlockRestoreButton),
      );
}
