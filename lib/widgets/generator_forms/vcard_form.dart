import 'package:flutter/material.dart';
import 'package:flutter_contacts/flutter_contacts.dart';
import 'package:qrscan/l10n/generated/app_localizations.dart';
import '../../services/service_locator.dart';
import '../../utils/qr_escape.dart';
import 'shared.dart';

class VcardForm extends StatefulWidget {
  final OnQrChanged onChanged;
  const VcardForm({super.key, required this.onChanged});

  @override
  State<VcardForm> createState() => _VcardFormState();
}

class _VcardFormState extends State<VcardForm> {
  final _nameCtrl = TextEditingController();
  final _phoneCtrl = TextEditingController();
  final _emailCtrl = TextEditingController();
  final _orgCtrl = TextEditingController();
  final _titleCtrl = TextEditingController();

  @override
  void initState() {
    super.initState();
    for (final c in [_nameCtrl, _phoneCtrl, _emailCtrl, _orgCtrl, _titleCtrl]) {
      // ignore: always-remove-listener
      c.addListener(_notify);
    }
  }

  void _notify() {
    final name = _nameCtrl.text.trim();
    final phone = _phoneCtrl.text.trim();
    final email = _emailCtrl.text.trim();
    final org = _orgCtrl.text.trim();
    final title = _titleCtrl.text.trim();

    if (name.isEmpty) {
      widget.onChanged('', false);
      return;
    }

    final buf = StringBuffer()
      ..writeln('BEGIN:VCARD')
      ..writeln('VERSION:3.0');
    if (name.isNotEmpty) buf.writeln('FN:${escapeVcardField(name)}');
    if (phone.isNotEmpty) buf.writeln('TEL:${escapeVcardField(phone)}');
    if (email.isNotEmpty) buf.writeln('EMAIL:${escapeVcardField(email)}');
    if (org.isNotEmpty) buf.writeln('ORG:${escapeVcardField(org)}');
    if (title.isNotEmpty) buf.writeln('TITLE:${escapeVcardField(title)}');
    buf.write('END:VCARD');
    widget.onChanged(buf.toString(), true);
  }

  @override
  void dispose() {
    for (final c in [_nameCtrl, _phoneCtrl, _emailCtrl, _orgCtrl, _titleCtrl]) {
      c.removeListener(_notify);
      c.dispose();
    }
    super.dispose();
  }

  Future<void> _importFromContacts(BuildContext context) async {
    try {
      final permission = await FlutterContacts.permissions.request(PermissionType.readWrite);
      if (permission != PermissionStatus.granted) {
        if (mounted) {
          final l10n = AppLocalizations.of(context);
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(l10n.contactsPermissionDenied)),
          );
        }
        return;
      }
      final contact = await FlutterContacts.native.showPicker(
        properties: {ContactProperty.phone, ContactProperty.email},
      );
      if (contact == null || !mounted) return;

      _nameCtrl.text = contact.displayName ?? '';
      _phoneCtrl.text = (contact.phones.isNotEmpty) ? contact.phones.first.number : '';
      _emailCtrl.text = (contact.emails.isNotEmpty) ? contact.emails.first.address : '';
      _orgCtrl.text = (contact.organizations.isNotEmpty) ? contact.organizations.first.name ?? '' : '';
    } catch (e) {
      errorLogger.log('Import contacts failed', detail: e.toString(), context: 'VcardForm');
      if (mounted) {
        final l10n = AppLocalizations.of(context);
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(l10n.couldNotAccessContacts)),
        );
      }
      return;
    }

    if (mounted) {
      final l10n = AppLocalizations.of(context);
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(l10n.contactImported)),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: _field(l10n.formFullName, _nameCtrl,
                  helperText: l10n.formVcardHelper),
            ),
            const SizedBox(width: 8),
            IconButton(
              icon: const Icon(Icons.person_add, size: 24),
              tooltip: l10n.importFromContacts,
              onPressed: () => _importFromContacts(context),
            ),
          ],
        ),
        const SizedBox(height: 8),
        _field(l10n.fieldPhone, _phoneCtrl,
            keyboardType: TextInputType.phone,
            hintText: l10n.formPhoneHint),
        const SizedBox(height: 8),
        _field(l10n.fieldEmail, _emailCtrl,
            keyboardType: TextInputType.emailAddress,
            hintText: l10n.formEmailHint),
        const SizedBox(height: 8),
        _field(l10n.formOrganization, _orgCtrl),
        const SizedBox(height: 8),
        _field(l10n.formTitle, _titleCtrl),
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
