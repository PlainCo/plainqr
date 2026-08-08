import 'package:flutter/material.dart';
import 'package:qrscan/l10n/generated/app_localizations.dart';
import 'shared.dart';

class UrlForm extends StatefulWidget {
  final OnQrChanged onChanged;
  const UrlForm({super.key, required this.onChanged});

  @override
  State<UrlForm> createState() => _UrlFormState();
}

class _UrlFormState extends State<UrlForm> {
  final _controller = TextEditingController(text: 'https://');

  @override
  void initState() {
    super.initState();
    _controller.addListener(_notify);
    _notify(); // report initial value to parent
  }

  void _notify() {
    final text = _controller.text;
    final lower = text.toLowerCase();
    String? prefix;
    if (lower.startsWith('https://')) {
      prefix = 'https://';
    } else if (lower.startsWith('http://')) {
      prefix = 'http://';
    }
    final valid = prefix != null && text.length > prefix.length;
    widget.onChanged(text, valid);
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
      keyboardType: TextInputType.url,
      decoration: InputDecoration(
        labelText: l10n.formUrl,
        hintText: l10n.formUrlHint,
        helperText: l10n.formUrlHelper,
        border: const OutlineInputBorder(),
        contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 14),
      ),
    );
  }
}
