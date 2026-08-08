import 'package:flutter/material.dart';
import 'package:qrscan/l10n/generated/app_localizations.dart';
import 'shared.dart';

class EmailForm extends StatefulWidget {
  final OnQrChanged onChanged;
  const EmailForm({super.key, required this.onChanged});

  @override
  State<EmailForm> createState() => _EmailFormState();
}

class _EmailFormState extends State<EmailForm> {
  final _emailCtrl = TextEditingController();
  final _subjectCtrl = TextEditingController();
  final _bodyCtrl = TextEditingController();

  @override
  void initState() {
    super.initState();
    _emailCtrl.addListener(_notify);
    _subjectCtrl.addListener(_notify);
    _bodyCtrl.addListener(_notify);
  }

  void _notify() {
    final email = _emailCtrl.text.trim();
    final subj = _subjectCtrl.text.trim();
    final body = _bodyCtrl.text.trim();
    if (email.isEmpty || !email.contains('@')) {
      widget.onChanged('', false);
      return;
    }
    final params = <String>[];
    if (subj.isNotEmpty) params.add('subject=${Uri.encodeComponent(subj)}');
    if (body.isNotEmpty) params.add('body=${Uri.encodeComponent(body)}');
    final content =
        'mailto:$email${params.isNotEmpty ? '?${params.join('&')}' : ''}';
    widget.onChanged(content, true);
  }

  @override
  void dispose() {
    _emailCtrl.removeListener(_notify);
    _subjectCtrl.removeListener(_notify);
    _bodyCtrl.removeListener(_notify);
    _emailCtrl.dispose();
    _subjectCtrl.dispose();
    _bodyCtrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    return Column(
      children: [
        _field(l10n.formEmailAddress, _emailCtrl,
            keyboardType: TextInputType.emailAddress,
            hintText: l10n.formEmailHint,
            helperText: l10n.formEmailRequired),
        const SizedBox(height: 8),
        _field(l10n.formSubject, _subjectCtrl),
        const SizedBox(height: 8),
        _field(l10n.formBody, _bodyCtrl),
      ],
    );
  }

  Widget _field(String label, TextEditingController ctrl,
      {TextInputType? keyboardType, String? helperText, String? hintText}) {
    return TextField(
      controller: ctrl,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        labelText: label,
        hintText: hintText,
        helperText: helperText,
        border: const OutlineInputBorder(),
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 12, vertical: 14),
      ),
    );
  }
}
