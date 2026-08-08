import 'package:flutter/material.dart';
import 'package:qrscan/l10n/generated/app_localizations.dart';
import 'package:wifi_iot/wifi_iot.dart';
import '../../utils/qr_escape.dart';
import 'shared.dart';

class WifiForm extends StatefulWidget {
  final OnQrChanged onChanged;
  const WifiForm({super.key, required this.onChanged});

  @override
  State<WifiForm> createState() => _WifiFormState();
}

class _WifiFormState extends State<WifiForm> {
  final _ssidCtrl = TextEditingController();
  final _pwdCtrl = TextEditingController();
  bool _ssidAutoFilled = false;

  @override
  void initState() {
    super.initState();
    _ssidCtrl.addListener(_notify);
    _pwdCtrl.addListener(_notify);
    _autoFillSsid();
  }

  Future<void> _autoFillSsid() async {
    try {
      final ssid = await WiFiForIoTPlugin.getSSID();
      if (ssid != null && mounted) {
        final clean = ssid.replaceAll('"', '').trim();
        if (clean.isNotEmpty && !clean.startsWith('<') && !clean.endsWith('>')) {
          _ssidCtrl.text = clean;
          _ssidAutoFilled = true;
          // ignore: no-empty-block
          setState(() {});
        }
      }
    } catch (_) {
      // Silently ignore — user can type SSID manually
    }
  }

  void _notify() {
    final ssid = escapeWifiField(_ssidCtrl.text.trim());
    final pwd = escapeWifiField(_pwdCtrl.text.trim());
    if (ssid.isEmpty) {
      widget.onChanged('', false);
      return;
    }
    final security = pwd.isEmpty ? 'nopass' : 'WPA';
    widget.onChanged('WIFI:S:$ssid;T:$security;P:$pwd;;', true);
  }

  @override
  void dispose() {
    _ssidCtrl.removeListener(_notify);
    _pwdCtrl.removeListener(_notify);
    _ssidCtrl.dispose();
    _pwdCtrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final cs = Theme.of(context).colorScheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextField(
          controller: _ssidCtrl,
          decoration: InputDecoration(
            labelText: l10n.formNetworkName,
            hintText: l10n.formWifiSsidHint,
            helperText: l10n.required,
            border: const OutlineInputBorder(),
            contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 14),
          ),
        ),
        if (_ssidAutoFilled)
          Padding(
            padding: const EdgeInsets.only(top: 4, bottom: 8),
            child: Text(
              l10n.formSsidAutoDetected,
              style: TextStyle(fontSize: 18, color: cs.onSurfaceVariant.withValues(alpha: 0.85)),
            ),
          ),
        const SizedBox(height: 8),
        TextField(
          controller: _pwdCtrl,
          obscureText: true,
          decoration: InputDecoration(
            labelText: l10n.formWifiPassword,
            helperText: l10n.formWifiPasswordHelper,
            border: const OutlineInputBorder(),
            contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 14),
          ),
        ),
      ],
    );
  }
}
