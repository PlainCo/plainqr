import 'package:flutter/material.dart';
import 'package:qrscan/l10n/generated/app_localizations.dart';
import 'shared.dart';

class PhoneForm extends StatefulWidget {
  final OnQrChanged onChanged;
  const PhoneForm({super.key, required this.onChanged});

  @override
  State<PhoneForm> createState() => _PhoneFormState();
}

class _PhoneFormState extends State<PhoneForm> {
  final _controller = TextEditingController();
  static const _prefix = 'tel:';

  @override
  void initState() {
    super.initState();
    _controller.addListener(_notify);
  }

  void _notify() {
    final text = _controller.text.trim();
    widget.onChanged(text.isEmpty ? '' : '$_prefix$text', text.isNotEmpty);
  }

  @override
  void dispose() {
    _controller.removeListener(_notify);
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    return TextField(
      controller: _controller,
      keyboardType: TextInputType.phone,
      decoration: InputDecoration(
        labelText: l10n.formPhoneNumber,
        hintText: l10n.formPhoneHint,
        helperText: l10n.required,
        border: const OutlineInputBorder(),
        contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 14),
      ),
    );
  }
}
