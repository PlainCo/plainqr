import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../constants.dart';
import '../l10n/generated/app_localizations.dart';
import '../services/service_locator.dart';

class SettingsScreen extends StatefulWidget {
  final ValueChanged<bool>? onAutoSaveChanged;
  final ValueChanged<bool>? onAutoOpenDangerousChanged;
  final ValueChanged<bool>? onAutoFlashlightChanged;
  final ThemeMode currentThemeMode;
  final ValueChanged<ThemeMode>? onThemeChanged;

  const SettingsScreen({
    super.key,
    this.onAutoSaveChanged,
    this.onAutoOpenDangerousChanged,
    this.onAutoFlashlightChanged,
    required this.currentThemeMode,
    this.onThemeChanged,
  });

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  static const _saveKey = 'save_scan_history';
  static const _openDangerousKey = 'open_dangerous_types';
  static const _flashKey = 'auto_flashlight';

  bool _autoSave = true;
  bool _autoOpenDangerous = false;
  bool _autoFlashlight = false;
  @override
  void initState() {
    super.initState();
    _load();
  }

  Future<void> _load() async {
    final prefs = await SharedPreferences.getInstance();
    if (!mounted) return;
    setState(() {
      _autoSave = prefs.getBool(_saveKey) ?? true;
      _autoOpenDangerous = prefs.getBool(_openDangerousKey) ?? false;
      _autoFlashlight = prefs.getBool(_flashKey) ?? false;
    });
  }

  Future<void> _toggleSave(bool value) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool(_saveKey, value);
    if (!mounted) return;
    setState(() => _autoSave = value);
    widget.onAutoSaveChanged?.call(value);
  }

  Future<void> _toggleOpenDangerous(bool value) async {
    // Risk acknowledgment when turning ON
    if (value) {
      final l10n = AppLocalizations.of(context)!;
      final ok = await showDialog<bool>(
        context: context,
        builder: (ctx) => AlertDialog(
          title: Text(l10n.autoOpenDialogTitle),
          content: Text(l10n.autoOpenDialogContent),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(ctx).pop(false),
              child: Text(l10n.actionCancel),
            ),
            FilledButton(
              onPressed: () => Navigator.of(ctx).pop(true),
              child: Text(l10n.autoOpenConfirmButton),
            ),
          ],
        ),
      );
      if (ok != true) return;
    }
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool(_openDangerousKey, value);
    if (!mounted) return;
    setState(() => _autoOpenDangerous = value);
    widget.onAutoOpenDangerousChanged?.call(value);
  }

  Future<void> _toggleFlashlight(bool value) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool(_flashKey, value);
    if (!mounted) return;
    setState(() => _autoFlashlight = value);
    widget.onAutoFlashlightChanged?.call(value);
  }

  void _showPurchaseDialog(BuildContext context) async {
    final cs = Theme.of(context).colorScheme;
    final l10n = AppLocalizations.of(context)!;
    final ok = await showDialog<bool>(
      context: context,
      builder: (ctx) => AlertDialog(
        title: Text(l10n.unlockDialogTitle),
        content: Text(l10n.unlockDialogContent(purchaseService.price)),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(ctx).pop(false),
            child: Text(l10n.actionCancel),
          ),
          FilledButton(
            onPressed: () => Navigator.of(ctx).pop(true),
            style: FilledButton.styleFrom(backgroundColor: cs.primary),
            child: Text(l10n.purchaseButton(purchaseService.price)),
          ),
        ],
      ),
    );
    if (ok == true && mounted) {
      await purchaseService.purchase(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final cs = Theme.of(context).colorScheme;
    return Scaffold(
      appBar: AppBar(title: Text(l10n.settingsAppBarTitle)),
      body: ListView(
        children: [
          _SectionTitle(text: l10n.settingsSectionScanning, cs: cs),
          SwitchListTile(
            title: Text(l10n.settingsSaveHistory),
            subtitle: Text(
              _autoSave
                  ? l10n.settingsSaveHistoryOn
                  : l10n.settingsSaveHistoryOff,
              style: TextStyle(color: cs.onSurfaceVariant),
            ),
            value: _autoSave,
            onChanged: (v) { _toggleSave(v); },
          ),
          SwitchListTile(
            title: Text(l10n.settingsAutoOpen),
            subtitle: Text(
              _autoOpenDangerous
                  ? l10n.settingsAutoOpenOn
                  : l10n.settingsAutoOpenOff,
              style: TextStyle(color: cs.onSurfaceVariant),
            ),
            value: _autoOpenDangerous,
            onChanged: (v) { _toggleOpenDangerous(v); },
          ),
          SwitchListTile(
            title: Text(l10n.settingsAutoFlashlight),
            subtitle: Text(
              _autoFlashlight
                  ? l10n.settingsAutoFlashlightOn
                  : l10n.settingsAutoFlashlightOff,
              style: TextStyle(color: cs.onSurfaceVariant),
            ),
            value: _autoFlashlight,
            onChanged: (v) { _toggleFlashlight(v); },
          ),
          const Divider(),
          ValueListenableBuilder<bool>(
            valueListenable: purchaseService.unlockedNotifier,
            builder: (context, unlocked, _) {
              if (!unlocked)
                return ListTile(
                  leading: Icon(Icons.lock_open, color: cs.primary),
                  title: Text(l10n.settingsEnableGenerators),
                  // The price is fetched after this tile is first built, so
                  // it needs its own listenable to pick up the real one.
                  subtitle: ValueListenableBuilder<String>(
                    valueListenable: purchaseService.priceNotifier,
                    builder: (context, price, _) => Text(
                      l10n.settingsEnableGeneratorsSubtitle(price),
                      style: TextStyle(color: cs.onSurfaceVariant),
                    ),
                  ),
                  trailing: const Icon(Icons.chevron_right, size: 18),
                  onTap: () => _showPurchaseDialog(context),
                );
              return ListTile(
                leading: Icon(Icons.check_circle, color: cs.primary),
                title: Text(l10n.settingsPremiumUnlocked),
                subtitle: Text(
                  l10n.settingsPremiumUnlockedSubtitle,
                  style: TextStyle(color: cs.onSurfaceVariant),
                ),
              );
            },
          ),
          const Divider(),
          _SectionTitle(text: l10n.settingsSectionAppearance, cs: cs),
          RadioListTile<ThemeMode>(
            title: Text(l10n.settingsThemeSystem),
            value: ThemeMode.system,
            groupValue: widget.currentThemeMode,
            onChanged: (v) => widget.onThemeChanged?.call(v!),
          ),
          RadioListTile<ThemeMode>(
            title: Text(l10n.settingsThemeLight),
            value: ThemeMode.light,
            groupValue: widget.currentThemeMode,
            onChanged: (v) => widget.onThemeChanged?.call(v!),
          ),
          RadioListTile<ThemeMode>(
            title: Text(l10n.settingsThemeDark),
            value: ThemeMode.dark,
            groupValue: widget.currentThemeMode,
            onChanged: (v) => widget.onThemeChanged?.call(v!),
          ),
          const Divider(),
          _SectionTitle(text: l10n.settingsSectionLegal, cs: cs),
          ListTile(
            leading: Icon(Icons.description_outlined, color: cs.primary),
            title: Text(l10n.settingsOpenSourceLicences),
            trailing: const Icon(Icons.chevron_right, size: 18),
            onTap: () =>
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (_) => _LicencesScreen(),
                )),
          ),
        ],
      ),
    );
  }
}

class _SectionTitle extends StatelessWidget {
  final String text;
  final ColorScheme cs;
  const _SectionTitle({required this.text, required this.cs});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.fromLTRB(12, 12, 12, 4),
      child: Text(
        text,
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w500,
          color: cs.onSurfaceVariant,
          letterSpacing: 1.2,
        ),
      ),
    );
  }
}

class _LicencesScreen extends StatelessWidget {
  const _LicencesScreen();

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    return Scaffold(
      appBar: AppBar(title: Text(l10n.settingsOpenSourceLicences)),
      body: LicensePage(
        applicationName: l10n.appNameFull,
        applicationVersion: appVersion,
      ),
    );
  }
}
