import 'package:flutter/material.dart';
import 'package:qrscan/l10n/generated/app_localizations.dart';
import 'shared.dart';
import '../../utils/qr_escape.dart';

class SmsForm extends StatefulWidget {
  final OnQrChanged onChanged;
  const SmsForm({super.key, required this.onChanged});

  @override
  State<SmsForm> createState() => _SmsFormState();
}

class _SmsFormState extends State<SmsForm> {
  final _phoneCtrl = TextEditingController();
  final _msgCtrl = TextEditingController();

  @override
  void initState() {
    super.initState();
    _phoneCtrl.addListener(_notify);
    _msgCtrl.addListener(_notify);
  }

  void _notify() {
    final num = _phoneCtrl.text.trim();
    final msg = _msgCtrl.text.trim();
    if (num.isEmpty) {
      widget.onChanged('', false);
      return;
    }
    widget.onChanged('smsto:$num${msg.isNotEmpty ? ':${encodeSmsBody(msg)}' : ''}', true);
  }

  @override
  void dispose() {
    _phoneCtrl.removeListener(_notify);
    _msgCtrl.removeListener(_notify);
    _phoneCtrl.dispose();
    _msgCtrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    return Column(
      children: [
        TextField(
          controller: _phoneCtrl,
          keyboardType: TextInputType.phone,
          decoration: InputDecoration(
            labelText: l10n.formPhoneNumber,
            hintText: l10n.formPhoneHint,
            helperText: l10n.formSmsHelper,
            border: const OutlineInputBorder(),
            contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 14),
          ),
        ),
        const SizedBox(height: 8),
        TextField(
          controller: _msgCtrl,
          maxLines: 2,
          decoration: InputDecoration(
            labelText: l10n.formMessage,
            border: const OutlineInputBorder(),
            contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 14),
          ),
        ),
      ],
    );
  }
}
