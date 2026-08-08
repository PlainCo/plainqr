import 'package:flutter/material.dart';
import 'package:flutter/semantics.dart';
import 'package:flutter/services.dart';
import 'package:qrscan/l10n/generated/app_localizations.dart';

import '../utils/data_type.dart';
import '../utils/data_type_extensions.dart';
import 'scan_actions.dart';

/// A consistent view for displaying a scanned QR/barcode result.
///
/// Used in [ScanResultCard] (scanner overlay) and the history detail bottom
/// sheet.  Shows header, display value, raw value, a key-value field table
/// with expand/collapse (long-press any field to copy), and action buttons.
class ScanResultView extends StatefulWidget {
  final DetectedScan result;
  final VoidCallback? onDismiss;
  final bool showSave;
  final VoidCallback? onSave;
  final String? source;
  final String? timestamp;
  final int initialVisibleFields;
  final bool autoOpenDangerous;
  final VoidCallback? onViewImage;

  const ScanResultView({
    super.key,
    required this.result,
    this.onDismiss,
    this.showSave = false,
    this.onSave,
    this.source,
    this.timestamp,
    this.initialVisibleFields = 4,
    this.autoOpenDangerous = false,
    this.onViewImage,
  });

  @override
  State<ScanResultView> createState() => _ScanResultViewState();
}

class _ScanResultViewState extends State<ScanResultView> {
  bool _expanded = false;

  @override
  void initState() {
    super.initState();
    if (widget.source != null) {
      WidgetsBinding.instance.addPostFrameCallback((_) => _announce());
    }
  }

  @override
  void didUpdateWidget(ScanResultView oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.source != null &&
        oldWidget.result.value != widget.result.value) {
      WidgetsBinding.instance.addPostFrameCallback((_) => _announce());
    }
  }

  void _announce() {
    final l10n = AppLocalizations.of(context)!;
    final type = widget.result.type.label;
    final value = widget.result.displayValue;
    final brief = value.length > 40 ? '${value.substring(0, 37)}...' : value;
    SemanticsService.sendAnnouncement(View.of(context), l10n.scannerDetectedAnnounce(type, brief), TextDirection.ltr);
  }

  @override
  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final cs = Theme.of(context).colorScheme;
    final children = <Widget>[];

    // ── Header row ──────────────────────────────────────────────
    children.add(_buildHeader(cs));

    // ── Display value ───────────────────────────────────────────
    children.add(const SizedBox(height: 6));
    children.add(Text(
      widget.result.displayValue,
      style: const TextStyle(fontSize: 26),
    ));

    // ── Raw value (if different & not structured) ───────────────
    final rawValue = widget.result.value;
    if (rawValue != widget.result.displayValue &&
        !_isStructured(rawValue)) {
      children.add(const SizedBox(height: 8));
      children.add(Text(
        rawValue,
        style: TextStyle(
          fontSize: 22,
          color: cs.onSurfaceVariant,
        ),
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
      ));
    }

    // ── Field table ─────────────────────────────────────────────
    final fieldRows = _buildFieldRows(cs);
    if (fieldRows.isNotEmpty) {
      children.add(const SizedBox(height: 8));
      children.addAll(fieldRows);
    }

    // ── Action buttons ──────────────────────────────────────────
    children.add(const SizedBox(height: 12));
    final onSave = widget.onSave;
    children.add(Wrap(
      spacing: 8,
      runSpacing: 8,
      children: [
        ScanActions(result: widget.result, autoOpenDangerous: widget.autoOpenDangerous),
        if (widget.showSave && onSave != null)
          _action(l10n.actionSave, Icons.bookmark_border, onSave),
      ],
    ));

    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: children,
    );
  }

  // ── Header ──────────────────────────────────────────────────

  Widget _buildHeader(ColorScheme cs) {
    final type = widget.result.type;
    return Row(
      children: [
        Icon(type.icon,
            color: cs.primary, size: 20),
        const SizedBox(width: 8),
        Text(
          type.label,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,
            color: cs.onSurfaceVariant,
            letterSpacing: 1.2,
          ),
        ),
        if (widget.source != null) ...[
          const SizedBox(width: 6),
          Text(
            '· ${widget.source}',
            style: TextStyle(
              fontSize: 18,
              color: cs.onSurfaceVariant,
            ),
          ),
        ],
        const Spacer(),
        if (widget.onViewImage != null)
          Semantics(
            button: true,
            label: 'View scanned image',
            child: SizedBox(
              width: 44,
              height: 44,
              child: IconButton(
                key: const ValueKey('view_image_button'),
                icon: const Icon(Icons.image, size: 28),
                onPressed: widget.onViewImage,
                padding: EdgeInsets.zero,
                style: IconButton.styleFrom(
                  backgroundColor: cs.onSurfaceVariant.withValues(alpha: 0.15),
                  shape: const CircleBorder(),
                ),
              ),
            ),
          ),
        if (widget.timestamp case final ts?)
          Padding(
            padding: const EdgeInsets.only(right: 6),
            child: Text(
              ts,
              style: TextStyle(
                fontSize: 18,
                color: cs.onSurfaceVariant,
              ),
            ),
          ),
        if (widget.onDismiss != null)
          Semantics(
            button: true,
            label: 'Close',
            child: SizedBox(
              width: 44,
              height: 44,
              child: IconButton(
                key: const ValueKey('dismiss_button'),
                icon: const Icon(Icons.close, size: 28),
                onPressed: widget.onDismiss,
                padding: EdgeInsets.zero,
                style: IconButton.styleFrom(
                  backgroundColor: cs.onSurfaceVariant.withValues(alpha: 0.15),
                  shape: const CircleBorder(),
                ),
              ),
            ),
          ),
      ],
    );
  }

  // ── Field table with expand/collapse ─────────────────────────

  List<Widget> _buildFieldRows(ColorScheme cs) {
    final l10n = AppLocalizations.of(context)!;
    final allRows = <Widget>[];

    // Key:value fields from detected types (vCard, WiFi, calendar, etc.)
    for (final e in widget.result.fields.entries) {
      final value = e.value;
      if (value != null && value.isNotEmpty) {
        allRows.add(_fieldRow(cs, _friendlyLabel(l10n, e.key), _formatValue(l10n, e.key, value)));
      }
    }

    /// Table data from structured content (CSV, delimited, etc.).
    /// Flattened into field rows: one entry per cell, grouped by row.
    /// First N entries (up to [initialVisibleFields]) visible on collapse;
    /// expanding reveals remaining rows.
    final table = widget.result.table;
    if (table != null) {
      for (var ri = 0; ri < table.rows.length; ri++) {
        for (var ci = 0; ci < table.headers.length; ci++) {
          if (ci < table.rows[ri].length) {
            allRows.add(_fieldRow(cs, table.headers[ci], table.rows[ri][ci]));
          }
        }
      }
    }

    if (allRows.isEmpty) return [];

    // For tables, show exactly one full row on collapse; for key:value use default.
    final visibleCount = table != null
        ? (table.headers.length)
        : widget.initialVisibleFields;

    final showAll =
        allRows.length <= visibleCount || _expanded;
    final visibleRows =
        showAll ? allRows : allRows.take(visibleCount).toList();
    final hiddenRows = table != null
        ? (allRows.length - visibleRows.length) ~/ table.headers.length
        : allRows.length - visibleRows.length;
    final rowWord = hiddenRows == 1 ? l10n.row : l10n.rows;
    final hiddenLabel = table != null
        ? l10n.showMoreRows(hiddenRows, rowWord)
        : l10n.showMoreFields(hiddenRows);

    return [
      Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: cs.surfaceContainerHighest.withValues(alpha: 0.3),
          borderRadius: const BorderRadius.all(Radius.circular(8)),
        ),
        child: Column(
          children: [
            ...visibleRows,
            if (!showAll && hiddenRows > 0)
              Semantics(
                button: true,
                label: l10n.showMoreFields(hiddenRows),
                child: Focus(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 6),
                    child: InkWell(
                      key: const ValueKey('expand_button'),
                      onTap: () => setState(() => _expanded = true),
                      borderRadius: const BorderRadius.all(Radius.circular(4)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            hiddenLabel,
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              color: cs.primary,
                            ),
                          ),
                          const SizedBox(width: 6),
                          Icon(Icons.expand_more,
                              size: 24, color: cs.primary),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            if (showAll && allRows.length > visibleCount)
              Semantics(
                button: true,
                label: l10n.showLess,
                child: Focus(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 6),
                    child: InkWell(
                      key: const ValueKey('collapse_button'),
                      onTap: () => setState(() => _expanded = false),
                      borderRadius: const BorderRadius.all(Radius.circular(4)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            l10n.showLess,
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              color: cs.primary,
                            ),
                          ),
                          const SizedBox(width: 6),
                          Icon(Icons.expand_less,
                              size: 24, color: cs.primary),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
    ];
  }

  Widget _fieldRow(ColorScheme cs, String label, String value) {
    final l10n = AppLocalizations.of(context)!;
    return GestureDetector(
      onLongPress: () {
        Clipboard.setData(ClipboardData(text: value));
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(l10n.copiedToClipboard),
            duration: const Duration(seconds: 1),
          ),
        );
        SemanticsService.sendAnnouncement(View.of(context), l10n.copiedToClipboard, TextDirection.ltr);
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 3),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: 100,
              child: Text(
                label,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: cs.onSurfaceVariant.withValues(alpha: 0.85),
                ),
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Text(
                value,
                style: TextStyle(
                  fontSize: 22,
                  color: cs.onSurface,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // ── Action button ───────────────────────────────────────────

  Widget _action(String label, IconData icon, VoidCallback onTap) {
    return OutlinedButton.icon(
      onPressed: onTap,
      icon: Icon(icon, size: 20),
      label: Text(label, style: const TextStyle(fontSize: 20)),
      style: OutlinedButton.styleFrom(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        minimumSize: const Size(0, 48),
      ),
    );
  }

  // ── Helpers ─────────────────────────────────────────────────

  bool _isStructured(String value) {
    return value.startsWith('BEGIN:VCARD') ||
        value.startsWith('MECARD:') ||
        value.startsWith('WIFI:') ||
        value.startsWith('BEGIN:VEVENT');
  }

  String _capitalize(String s) =>
      s.isEmpty ? s : '${s[0].toUpperCase()}${s.substring(1)}';

  /// Maps internal field keys to user-facing labels.
  String _friendlyLabel(AppLocalizations l10n, String key) {
    return switch (key.toLowerCase()) {
      'summary' => l10n.fieldEvent,
      'dtstart' => l10n.fieldStartTime,
      'dtend' => l10n.fieldEndTime,
      'location' => l10n.fieldLocation,
      'description' => l10n.fieldDescription,
      'organizer' => l10n.fieldOrganizer,
      'attendee' => l10n.fieldAttendee,
      'name' => l10n.fieldName,
      'phone' || 'tel' => l10n.fieldPhone,
      'email' => l10n.fieldEmail,
      'org' || 'organization' => l10n.fieldOrganization,
      'title' => l10n.fieldTitle,
      'address' => l10n.fieldAddress,
      'note' || 'notes' => l10n.fieldNotes,
      'ssid' => l10n.fieldSsid,
      'password' => l10n.fieldPassword,
      'encryption' => l10n.fieldEncryption,
      'url' || 'website' => l10n.fieldUrl,
      'nickname' => l10n.fieldNickname,
      'role' => l10n.fieldRole,
      'bday' || 'birthday' => l10n.fieldBirthday,
      _ => _capitalize(key),
    };
  }

  /// Formats known field values for human display.
  String _formatValue(AppLocalizations l10n, String key, String value) {
    return switch (key.toLowerCase()) {
      'dtstart' || 'dtend' => _formatIcsTime(l10n, value),
      _ => value,
    };
  }

  /// Parses an iCalendar datetime string and returns a friendly label.
  ///
  /// Supports three formats:
  /// - `YYYYMMDD` (all-day, 8 chars)
  /// - `YYYYMMDDTHHMMSSZ` (UTC, 15 chars)
  /// - `YYYYMMDDTHHMMSS` (local floating time, 16 chars)
  String _formatIcsTime(AppLocalizations l10n, String ics) {
    try {
      final lc = ics.toUpperCase();
      final year = int.parse(lc.substring(0, 4));
      final month = int.parse(lc.substring(4, 6));
      final day = int.parse(lc.substring(6, 8));
      final months = [
        l10n.monthJan, l10n.monthFeb, l10n.monthMar, l10n.monthApr, l10n.monthMay, l10n.monthJun,
        l10n.monthJul, l10n.monthAug, l10n.monthSep, l10n.monthOct, l10n.monthNov, l10n.monthDec,
      ];

      if (lc.length == 8) {
        // All-day: YYYYMMDD
        return '${months[month - 1]} $day, $year';
      }

      if (lc.length >= 15) {
        final hour = int.parse(lc.substring(9, 11));
        final min = int.parse(lc.substring(11, 13));
        final amPm = hour >= 12 ? 'PM' : 'AM';
        final int h12;
        if (hour == 0) {
          h12 = 12;
        } else if (hour > 12) {
          h12 = hour - 12;
        } else {
          h12 = hour;
        }
        final minStr = min.toString().padLeft(2, '0');
        return '${months[month - 1]} $day, $year $h12:$minStr $amPm';
      }

      return ics;
    } catch (_) {
      return ics;
    }
  }


}
