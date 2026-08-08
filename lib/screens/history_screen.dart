import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/semantics.dart';

import '../l10n/generated/app_localizations.dart';
import '../utils/data_type.dart';
import '../utils/data_type_extensions.dart';
import '../utils/scan_history.dart';
import '../widgets/scan_result_view.dart';

String _formatTime(DateTime dt, AppLocalizations l10n) {
  final now = DateTime.now();
  final diff = now.difference(dt);
  if (diff.inMinutes < 1) return l10n.historyJustNow;
  if (diff.inHours < 1) return l10n.historyMinutesAgo(diff.inMinutes);
  if (diff.inDays < 1) return l10n.historyHoursAgo(diff.inHours);
  return '${dt.month}/${dt.day} ${dt.hour}:${dt.minute.toString().padLeft(2, '0')}';
}

class HistoryScreen extends StatefulWidget {
  final ScanHistory history;
  final bool autoOpenDangerous;

  const HistoryScreen({
    super.key,
    required this.history,
    this.autoOpenDangerous = false,
  });

  @override
  State<HistoryScreen> createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {
  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final cs = Theme.of(context).colorScheme;
    final entries = widget.history.entries;
    final mutedColor = cs.onSurface.withValues(alpha: 0.6);

    return Scaffold(
      appBar: AppBar(
        title: Text(l10n.historyAppBarTitle),
        actions: [
          if (entries.isNotEmpty)
            IconButton(
              icon: const Icon(Icons.delete_sweep),
              tooltip: l10n.historyClearAllTooltip,
              onPressed: () { _confirmClear(); },
            ),
        ],
      ),
      body: entries.isEmpty
          ? Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.history, size: 64, color: mutedColor),
                  const SizedBox(height: 16),
                  Text(
                    l10n.historyEmpty,
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          color: mutedColor,
                        ),
                  ),
                ],
              ),
            )
          : ListView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              itemCount: entries.length,
              itemBuilder: (context, index) {
                final entry = entries[index];
                final l10n = AppLocalizations.of(context)!;
                return _HistoryTile(
                  entry: entry,
                  l10n: l10n,
                  onTap: () => _showDetail(context, entry),
                  onDelete: () {
                    _deleteEntry(entry);
                  },
                );
              },
            ),
    );
  }

  Future<void> _deleteEntry(ScanEntry entry) async {
    final value = entry.displayValue;
    final view = View.of(context);
    final l10n = AppLocalizations.of(context)!;
    final index = widget.history.entries.indexWhere((e) => e.id == entry.id);
    await widget.history.remove(entry.id);
    if (mounted) {
      // ignore: no-empty-block
      setState(() {});
      SemanticsService.sendAnnouncement(view, '$value deleted', TextDirection.ltr);
      final truncated = value.length > 30 ? '${value.substring(0, 27)}...' : value;
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          duration: const Duration(seconds: 4),
          content: Text(l10n.historyDeletedSnack(truncated)),
          action: SnackBarAction(
            label: l10n.historyUndoButton,
            onPressed: () {
              unawaited(widget.history.insertAt(index, entry));
              setState(() {});
            },
          ),
        ),
      );
    }
  }

  Future<void> _confirmClear() async {
    final l10n = AppLocalizations.of(context)!;
    final confirmed = await showDialog<bool>(
      context: context,
      builder: (ctx) => AlertDialog(
        title: Text(l10n.historyClearDialogTitle),
        content: Text(l10n.historyClearDialogContent),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(ctx).pop(false),
            child: Text(l10n.actionCancel),
          ),
          FilledButton(
            onPressed: () => Navigator.of(ctx).pop(true),
            style: FilledButton.styleFrom(
              backgroundColor: Theme.of(ctx).colorScheme.error,
            ),
            child: Text(l10n.historyClearButton),
          ),
        ],
      ),
    );
    if (confirmed == true && mounted) {
      final view = View.of(context);
      await widget.history.clear();
      if (mounted) {
        // ignore: no-empty-block
        setState(() {});
        SemanticsService.sendAnnouncement(view, 'All history cleared', TextDirection.ltr);
      }
    }
  }

  void _showDetail(BuildContext context, ScanEntry entry) {
    final l10n = AppLocalizations.of(context)!;
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (ctx) => DraggableScrollableSheet(
        initialChildSize: 0.6,
        minChildSize: 0.3,
        maxChildSize: 0.9,
        expand: false,
        builder: (ctx, scrollController) => SingleChildScrollView(
          controller: scrollController,
          padding: const EdgeInsets.all(12),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // Drag handle
              Center(
                child: Container(
                  width: 32,
                  height: 4,
                  margin: const EdgeInsets.only(bottom: 8),
                  decoration: BoxDecoration(
                    color: Theme.of(ctx)
                        .colorScheme
                        .onSurfaceVariant
                        .withValues(alpha: 0.3),
                    borderRadius: const BorderRadius.all(Radius.circular(2)),
                  ),
                ),
              ),
              ScanResultView(
                result: _entryToScan(entry),
                source: entry.source == ScanSource.gallery
                    ? l10n.historySourceGallery
                    : l10n.historySourceCamera,
                timestamp: _formatTime(entry.timestamp, l10n),
                onDismiss: () => Navigator.of(ctx).pop(),
                autoOpenDangerous: widget.autoOpenDangerous,
              ),
              const SizedBox(height: 8),
            ],
          ),
        ),
      ),
    );
  }

  /// Convert a [ScanEntry] back to a [DetectedScan] for use with [ScanActions].
  DetectedScan _entryToScan(ScanEntry entry) {
    return DetectedScan(
      type: entry.type,
      value: entry.value,
      displayValue: entry.displayValue,
      fields: entry.fields,
    );
  }

}

class _HistoryTile extends StatelessWidget {
  final ScanEntry entry;
  final AppLocalizations l10n;
  final VoidCallback onTap;
  final VoidCallback onDelete;

  const _HistoryTile({
    required this.entry,
    required this.l10n,
    required this.onTap,
    required this.onDelete,
  });

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 3),
      child: ListTile(
        leading: Icon(entry.type.icon, color: cs.primary, size: 24),
        title: Text(
          entry.displayValue,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(fontSize: 18),
        ),
        subtitle: Text(
          '${entry.type.label} · ${_formatTime(entry.timestamp, l10n)}',
          style: TextStyle(
            fontSize: 18,
            color: cs.onSurfaceVariant.withValues(alpha: 0.85),
          ),
        ),
        trailing: IconButton(
          icon: Icon(Icons.close, size: 18,
              color: cs.onSurface.withValues(alpha: 0.6)),
          onPressed: onDelete,
        ),
        onTap: onTap,
        contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 2),
      ),
    );
  }
}
