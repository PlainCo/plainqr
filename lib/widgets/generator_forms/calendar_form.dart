import 'package:flutter/material.dart';
import 'package:qrscan/l10n/generated/app_localizations.dart';
import '../../services/geocoding_service.dart';
import 'shared.dart';
import '../../utils/qr_escape.dart';

class CalendarForm extends StatefulWidget {
  final OnQrChanged onChanged;
  const CalendarForm({super.key, required this.onChanged});

  @override
  State<CalendarForm> createState() => _CalendarFormState();
}

class _CalendarFormState extends State<CalendarForm> {
  final _titleCtrl = TextEditingController();
  final _locCtrl = TextEditingController();
  DateTime? _start;
  DateTime? _end;
  bool _isResolving = false;

  @override
  void initState() {
    super.initState();
    _titleCtrl.addListener(_notify);
    _locCtrl.addListener(_notify);
  }

  void _notify() {
    final title = _titleCtrl.text.trim();
    final hasContent = title.isNotEmpty && _start != null;
    if (!hasContent) {
      widget.onChanged('', false);
      return;
    }
    final buf = StringBuffer()
      ..writeln('BEGIN:VEVENT');
    final start = _start;
    if (start != null) buf.writeln('DTSTART:${_fmtIcs(start)}');
    final end = _end;
    if (end != null) buf.writeln('DTEND:${_fmtIcs(end)}');
    if (title.isNotEmpty) buf.writeln('SUMMARY:$title');
    if (_locCtrl.text.trim().isNotEmpty) buf.writeln('LOCATION:${escapeVcardField(_locCtrl.text.trim())}');
    buf.write('END:VEVENT');
    widget.onChanged(buf.toString(), true);
  }

  String _fmtIcs(DateTime dt) => '${dt.year}${_p2(dt.month)}${_p2(dt.day)}T${_p2(dt.hour)}${_p2(dt.minute)}00';
  String _p2(int n) => n.toString().padLeft(2, '0');

  String _fmtDisplay(DateTime dt) {
    const months = ['Jan','Feb','Mar','Apr','May','Jun','Jul','Aug','Sep','Oct','Nov','Dec'];
    final amPm = dt.hour >= 12 ? 'PM' : 'AM';
    final int h;
    if (dt.hour == 0) {
      h = 12;
    } else if (dt.hour > 12) {
      h = dt.hour - 12;
    } else {
      h = dt.hour;
    }
    return '${months[dt.month - 1]} ${dt.day}, ${dt.year} $h:${_p2(dt.minute)} $amPm';
  }

  Future<void> _pick(bool isStart) async {
    final now = DateTime.now();
    final initial = isStart ? (_start ?? now) : (_end ?? _start ?? now.add(const Duration(hours: 1)));
    final date = await showDatePicker(context: context, initialDate: initial, firstDate: DateTime(2000), lastDate: DateTime(2100));
    if (date == null || !mounted) return;
    final time = await showTimePicker(context: context, initialTime: TimeOfDay.fromDateTime(initial));
    if (time == null || !mounted) return;
    final dt = DateTime(date.year, date.month, date.day, time.hour, time.minute);
    setState(() {
      if (isStart) {
        _start = dt;
      } else {
        _end = dt;
      }
    });
    _notify();
  }

  Future<void> _resolveLocation() async {
    final addr = _locCtrl.text.trim();
    if (addr.isEmpty) return;
    setState(() => _isResolving = true);
    try {
      final result = await GeocodingService.resolveAddress(addr);
      if (mounted && result.formattedAddress != null) {
        _locCtrl.text = result.formattedAddress!;
      }
      if (mounted && result.errorCode != null) {
        final l10n = AppLocalizations.of(context);
        final msg = switch (result.errorCode!) {
          GeocodingError.addressLookupTimedOut => l10n.addressLookupTimedOut,
          _ => l10n.couldNotResolveAddress,
        };
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(msg)));
      }
    } finally {
      if (mounted) setState(() => _isResolving = false);
    }
  }

  Future<void> _getFromGps() async {
    setState(() => _isResolving = true);
    try {
      final result = await GeocodingService.getCurrentLocation();
      if (mounted) {
        if (result.errorCode != null) {
          final l10n = AppLocalizations.of(context);
          final msg = switch (result.errorCode!) {
            GeocodingError.locationPermissionDenied => l10n.locationPermissionDenied,
            GeocodingError.locationLookupTimedOut => l10n.locationLookupTimedOut,
            _ => l10n.couldNotGetCurrentLocation,
          };
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(msg)));
        } else if (result.formattedAddress != null) {
          _locCtrl.text = result.formattedAddress!;
        }
      }
    } finally {
      if (mounted) setState(() => _isResolving = false);
    }
  }

  @override
  void dispose() {
    _titleCtrl.removeListener(_notify);
    _locCtrl.removeListener(_notify);
    _titleCtrl.dispose();
    _locCtrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    return Column(
      children: [
        _dateField(l10n.formStartDate, _start, () => _pick(true), l10n),
        const SizedBox(height: 8),
        _dateField(l10n.formEndDate, _end, () => _pick(false), l10n),
        const SizedBox(height: 8),
        _locField(l10n),
        const SizedBox(height: 8),
        SizedBox(
          width: double.infinity,
          child: OutlinedButton.icon(
            onPressed: _isResolving ? null : () { _getFromGps(); },
            icon: Icon(_isResolving ? Icons.hourglass_top : Icons.my_location, size: 18),
            label: Text(_isResolving ? l10n.resolving : l10n.getCurrentLocation),
          ),
        ),
        const SizedBox(height: 8),
        _field(l10n.formEventTitle, _titleCtrl, helperText: l10n.required),
      ],
    );
  }

  Widget _field(String label, TextEditingController ctrl, {String? helperText}) {
    return TextField(
      controller: ctrl,
      decoration: InputDecoration(
        labelText: label,
        helperText: helperText,
        border: const OutlineInputBorder(),
        contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 14),
      ),
    );
  }

  Widget _dateField(String label, DateTime? value, VoidCallback onTap, AppLocalizations l10n) {
    final cs = Theme.of(context).colorScheme;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 14),
        decoration: BoxDecoration(
          border: Border.all(color: cs.outline),
          borderRadius: const BorderRadius.all(Radius.circular(4)),
        ),
        child: Row(
          children: [
            Expanded(child: _dateFieldContent(label: label, value: value, cs: cs, l10n: l10n)),
            Icon(Icons.calendar_month, size: 20, color: cs.primary),
          ],
        ),
      ),
    );
  }

  Widget _dateFieldContent({required String label, required DateTime? value, required ColorScheme cs, required AppLocalizations l10n}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label,
          style: TextStyle(fontSize: 18, color: cs.onSurfaceVariant),
        ),
        const SizedBox(height: 4),
        Text(
          value != null ? _fmtDisplay(value) : l10n.tapToPickDateTime,
          style: TextStyle(
            fontSize: 18,
            color: value != null
                ? cs.onSurface
                : cs.onSurfaceVariant.withValues(alpha: 0.85),
          ),
        ),
      ],
    );
  }

  Widget _locField(AppLocalizations l10n) {
    return TextField(
      controller: _locCtrl,
      decoration: InputDecoration(
        labelText: l10n.formLocation,
        hintText: l10n.formLocationHint,
        border: const OutlineInputBorder(),
        contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 14),
        suffixIcon: _isResolving
            ? const Padding(
                padding: EdgeInsets.all(14),
                child: SizedBox(width: 18, height: 18, child: CircularProgressIndicator(strokeWidth: 2)),
              )
            : IconButton(
                icon: const Icon(Icons.search, size: 20),
                onPressed: () { if (_locCtrl.text.trim().isNotEmpty) _resolveLocation(); },
              ),
      ),
      onSubmitted: (v) { if (v.trim().isNotEmpty) _resolveLocation(); },
    );
  }
}
