import 'dart:io';
import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:path_provider/path_provider.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:qrscan/utils/platform_channels.dart';
import 'package:share_plus/share_plus.dart';
import 'package:qrscan/l10n/generated/app_localizations.dart';

/// Theme variant for the shareable card.
enum CardThemeVariant { light, dark }

/// Data needed to render a branded shareable card.
class CardData {
  /// Text shown in the info line at the bottom.
  /// For URL/phone/email/sms types, pass the actual content so the user
  /// sees what they're sharing.  For safe types, pass a descriptive label
  /// (e.g. "vCard · Scan to save contact").
  final String headline;

  /// The raw content that the QR code encodes.
  final String rawQrContent;

  /// Optional user-provided label (currently unused in the branded layout
  /// but kept for forward-compatibility).
  final String? userLabel;

  /// Icon shown next to [headline] in the info line.
  final IconData typeIcon;

  final CardThemeVariant theme;

  /// When true, renders a square (1:1) sticker layout — just the QR code
  /// and an optional user-provided label. No CTA banner, no link text,
  /// no branding. Optimized for printing on sticker paper.
  final bool isSticker;

  const CardData({
    required this.headline,
    required this.rawQrContent,
    this.userLabel,
    required this.typeIcon,
    this.theme = CardThemeVariant.light,
    this.isSticker = false,
  });
}

/// Branded marketing card used as a shareable PNG.
///
/// Layout (top→bottom):
///   1. CTA banner — "Open with PlainQR" + domain pill
///   2. QR code
///   3. Info line — type icon + headline
///
/// When [CardData.isSticker] is true, renders a square (1:1) layout:
///   1. QR code (large, centered)
///   2. Optional user-provided label below QR
///
/// Wrap with [CardCaptureWrapper] to enable PNG export via the share sheet.
class ShareableCard extends StatelessWidget {
  final CardData data;

  const ShareableCard({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    if (data.isSticker) return _StickerCard(data: data);
    return _BrandedCard(data: data);
  }
}

/// Square sticker layout — QR centered, optional label below, nothing else.
class _StickerCard extends StatelessWidget {
  final CardData data;

  const _StickerCard({required this.data});

  @override
  Widget build(BuildContext context) {
    final isDark = data.theme == CardThemeVariant.dark;
    final bg = isDark ? const Color(0xFF1A1A1A) : Colors.white;
    final fg = isDark ? Colors.white : Colors.black;
    final muted = isDark ? Colors.white60 : Colors.black54;

    final label = data.userLabel;
    final hasLabel = label != null && label.trim().isNotEmpty;

    return AspectRatio(
      aspectRatio: 1.0,
      child: LayoutBuilder(
        builder: (context, constraints) {
          final w = constraints.maxWidth;
          final pad = w * 0.08;
          return MediaQuery.withClampedTextScaling(
            minScaleFactor: 1.0,
            maxScaleFactor: 1.0,
            child: Container(
            padding: EdgeInsets.all(pad),
            decoration: BoxDecoration(
              color: bg,
              borderRadius: BorderRadius.all(Radius.circular(w * 0.04)),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                QrImageView(
                  data: data.rawQrContent,
                  version: QrVersions.auto,
                  size: hasLabel ? w * 0.62 : w * 0.84,
                  eyeStyle: QrEyeStyle(
                    eyeShape: QrEyeShape.square,
                    color: fg,
                  ),
                  dataModuleStyle: QrDataModuleStyle(
                    dataModuleShape: QrDataModuleShape.square,
                    color: fg,
                  ),
                  backgroundColor: bg,
                  padding: EdgeInsets.zero,
                ),
                if (hasLabel) ...[
                  SizedBox(height: pad * 0.7),
                  Text(
                    label.trim(),
                    style: TextStyle(
                      fontSize: w * 0.05,
                      fontWeight: FontWeight.w600,
                      color: muted,
                    ),
                    textAlign: TextAlign.center,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ],
            ),
          ));
        },
      ),
    );
  }
}

/// Standard branded card layout — CTA banner, QR, info line.
class _BrandedCard extends StatelessWidget {
  final CardData data;

  const _BrandedCard({required this.data});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final isDark = data.theme == CardThemeVariant.dark;
    final bg = isDark ? const Color(0xFF1A1A1A) : Colors.white;
    final muted = isDark ? Colors.white60 : Colors.black54;
    final accent = isDark ? Colors.blue.shade300 : const Color(0xFF6FA8DC);

    return MediaQuery.withClampedTextScaling(
      minScaleFactor: 1.0,
      maxScaleFactor: 1.0,
      child: Container(
      width: 600,
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: bg,
        borderRadius: const BorderRadius.all(Radius.circular(16)),
        border: Border.all(color: muted.withValues(alpha: 0.15)),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          _buildCtaBanner(isDark: isDark, accent: accent, l10n: l10n),
          const SizedBox(height: 16),
          _buildQrCode(isDark: isDark, bg: bg),
          const SizedBox(height: 14),
          _buildInfoLine(muted: muted),
        ],
      ),
    ));
  }

  Widget _buildCtaBanner({required bool isDark, required Color accent, required AppLocalizations l10n}) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: isDark
              ? [accent.withValues(alpha: 0.25), accent.withValues(alpha: 0.1)]
              : [accent, accent.withValues(alpha: 0.8)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: const BorderRadius.all(Radius.circular(12)),
      ),
      child: Column(
        children: [
          _buildCtaTitle(isDark: isDark, accent: accent, l10n: l10n),
          const SizedBox(height: 8),
          _buildDomainPill(isDark: isDark, accent: accent),
        ],
      ),
    );
  }

  Widget _buildCtaTitle({required bool isDark, required Color accent, required AppLocalizations l10n}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(Icons.qr_code_scanner, size: 28,
            color: isDark ? accent : Colors.white),
        const SizedBox(width: 10),
        // Flexible + scaleDown, not a bare Text. The card is a fixed 600px
        // wide and this string is translated: Russian ("Открыть с помощью
        // PlainQR") overflows by 121px at this size. Shrinking beats clipping
        // here because the result is an exported PNG — an overflow stripe or
        // an ellipsis ships to whoever the user sends the card to.
        Flexible(
          child: FittedBox(
            fit: BoxFit.scaleDown,
            alignment: Alignment.centerLeft,
            child: Text(l10n.cardCtaTitle,
              maxLines: 1,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w800,
                color: isDark ? accent : Colors.white,
                letterSpacing: -0.3,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildDomainPill({required bool isDark, required Color accent}) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
      decoration: BoxDecoration(
        color: isDark
            ? Colors.black.withValues(alpha: 0.3)
            : Colors.white.withValues(alpha: 0.2),
        borderRadius: const BorderRadius.all(Radius.circular(24)),
      ),
      child: Text('plainco.app/qr',
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w600,
          color: isDark ? accent : Colors.white,
          letterSpacing: 0.5,
        ),
      ),
    );
  }

  Widget _buildQrCode({required bool isDark, required Color bg}) {
    return QrImageView(
      data: data.rawQrContent,
      version: QrVersions.auto,
      size: 280,
      eyeStyle: QrEyeStyle(
        eyeShape: QrEyeShape.square,
        color: isDark ? Colors.white : Colors.black,
      ),
      dataModuleStyle: QrDataModuleStyle(
        dataModuleShape: QrDataModuleShape.square,
        color: isDark ? Colors.white : Colors.black,
      ),
      backgroundColor: bg,
      padding: EdgeInsets.zero,
    );
  }

  Widget _buildInfoLine({required Color muted}) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: muted.withValues(alpha: 0.06),
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(data.typeIcon, size: 20, color: muted),
          const SizedBox(width: 8),
          Flexible(
            child: Text(
              data.headline,
              style: TextStyle(
                fontSize: 16,
                color: muted,
                fontWeight: FontWeight.w600,
              ),
              textAlign: TextAlign.center,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}

/// Wraps a child widget in a [RepaintBoundary] so it can be captured as PNG.
/// Use [CardCaptureWrapper.share] to trigger the export via the nearest
/// wrapper ancestor.
class CardCaptureWrapper extends StatefulWidget {
  final Widget child;

  const CardCaptureWrapper({super.key, required this.child});

  @override
  State<CardCaptureWrapper> createState() => CardCaptureState();
}

class CardCaptureState extends State<CardCaptureWrapper> {
  final GlobalKey _boundaryKey = GlobalKey();

  Future<void> capture(BuildContext context, {String? subject}) async {
    final l10n = AppLocalizations.of(context)!;
    try {
      final boundary = _boundaryKey.currentContext?.findRenderObject()
          as RenderRepaintBoundary?;
      if (boundary == null) return;

      final image = await boundary.toImage(pixelRatio: 3.0);
      final byteData = await image.toByteData(format: ui.ImageByteFormat.png);
      image.dispose();
      if (byteData == null) return;

      final dir = await getTemporaryDirectory();
      final file = File('${dir.path}/qrcard_${DateTime.now().millisecondsSinceEpoch}.png');
      await file.writeAsBytes(byteData.buffer.asUint8List());

      if (!context.mounted) return;
      try {
        await SharePlus.instance.share(
          ShareParams(
            files: [XFile(file.path)],
            subject: subject ?? l10n.shareSubjectQrCode,
          ),
        );
      } finally {
        if (await file.exists()) await file.delete();
      }
    } catch (e) {
      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(l10n.cardShareFailed)),
        );
      }
    }
  }

  Future<void> saveToDownloads(BuildContext context) async {
    final l10n = AppLocalizations.of(context)!;
    try {
      final boundary = _boundaryKey.currentContext?.findRenderObject()
          as RenderRepaintBoundary?;
      if (boundary == null) return;

      final image = await boundary.toImage(pixelRatio: 3.0);
      final byteData = await image.toByteData(format: ui.ImageByteFormat.png);
      image.dispose();
      if (byteData == null) return;

      final dir = await getTemporaryDirectory();
      final file = File('${dir.path}/qrcard_${DateTime.now().millisecondsSinceEpoch}.png');
      await file.writeAsBytes(byteData.buffer.asUint8List());

      try {
        if (!context.mounted) return;
        await fileChannel.invokeMethod(methodSaveToDownloads, {'path': file.path});
        if (context.mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(l10n.cardSavedToDownloads)),
          );
        }
      } finally {
        if (await file.exists()) await file.delete();
      }
    } catch (e) {
      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(l10n.cardSaveFailed)),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return RepaintBoundary(
      key: _boundaryKey,
      child: widget.child,
    );
  }
}

/// Shows a dialog with a preview of the shareable card and an action button.
/// Used by the generator screen and scan result actions to share or save.
///
/// [cardData] is the data to render. [actionLabel] is the button text (e.g. "Save", "Share").
/// [onAction] is called when the user taps the action button. It receives the dialog context
/// and the [CardCaptureState] key. Pop the dialog after the action completes if [autoPop] is true.
Future<void> showCardDialog(
  BuildContext context, {
  required CardData cardData,
  required String actionLabel,
  required IconData actionIcon,
  required Future<void> Function(BuildContext ctx, GlobalKey<CardCaptureState> cardKey) onAction,
}) async {
  final cardKey = GlobalKey<CardCaptureState>();
  await showDialog(
    context: context,
    builder: (ctx) => AlertDialog(
      contentPadding: EdgeInsets.zero,
      // The card is authored at a fixed 600px because that is the exported
      // PNG's geometry. A dialog on a device with a large display size offers
      // far fewer logical pixels than that, and without this the 600px
      // container is simply squeezed and every child overflows -- visibly, in
      // the preview the user is looking at.
      //
      // FittedBox scales the laid-out card down to fit instead. It sits
      // outside CardCaptureWrapper on purpose: RepaintBoundary.toImage()
      // captures the boundary's own layer at its natural size, so the export
      // stays 600px wide at 3x no matter how far the preview is scaled.
      content: FittedBox(
        fit: BoxFit.scaleDown,
        child: CardCaptureWrapper(
          key: cardKey,
          child: ShareableCard(data: cardData),
        ),
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.of(ctx).pop(),
          child: Text(AppLocalizations.of(context)!.actionCancel),
        ),
        FilledButton.icon(
          onPressed: () => onAction(ctx, cardKey),
          icon: Icon(actionIcon, size: 16),
          label: Text(actionLabel),
        ),
      ],
    ),
  );
}
