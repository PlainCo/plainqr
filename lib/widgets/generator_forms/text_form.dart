import 'package:flutter/material.dart';
import 'package:qrscan/l10n/generated/app_localizations.dart';
import 'shared.dart';

class TextForm extends StatefulWidget {
  final OnQrChanged onChanged;
  const TextForm({super.key, required this.onChanged});

  @override
  State<TextForm> createState() => _TextFormState();
}

class _TextFormState extends State<TextForm> {
  final _controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    _controller.addListener(_notify);
  }

  void _notify() {
    final text = _controller.text.trim();
    widget.onChanged(text, text.isNotEmpty);
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
      maxLines: 3,
      decoration: InputDecoration(
        labelText: l10n.formText,
        hintText: l10n.formTextHint,
        helperText: l10n.required,
        border: const OutlineInputBorder(),
        contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 14),
      ),
    );
  }
}
