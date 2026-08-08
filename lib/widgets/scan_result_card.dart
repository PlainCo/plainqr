import 'package:flutter/material.dart';

import '../utils/data_type.dart';
import 'scan_result_view.dart';

/// Thin wrapper that positions [ScanResultView] as a card overlay on the
/// camera view.  All display logic lives in [ScanResultView] so the same
/// layout is shared with the history detail bottom sheet.
class ScanResultCard extends StatelessWidget {
  final DetectedScan result;
  final VoidCallback onDismiss;
  final bool showSave;
  final VoidCallback? onSave;
  final bool autoOpenDangerous;
  final VoidCallback? onViewImage;

  const ScanResultCard({
    super.key,
    required this.result,
    required this.onDismiss,
    this.showSave = false,
    this.onSave,
    this.autoOpenDangerous = false,
    this.onViewImage,
  });

  /// Builds the card content.  Layout (positioning relative to other
  /// overlays) is handled by the parent via [CustomMultiChildLayout].
  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    return Material(
      elevation: 4,
      borderRadius: const BorderRadius.all(Radius.circular(8)),
      color: cs.surface,
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: ScanResultView(
          result: result,
          onDismiss: onDismiss,
          showSave: showSave,
          onSave: onSave,
          autoOpenDangerous: autoOpenDangerous,
          onViewImage: onViewImage,
        ),
      ),
    );
  }
}
