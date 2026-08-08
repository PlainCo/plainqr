import 'dart:async';
import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:qrscan/l10n/generated/app_localizations.dart';
import 'package:plainco_ui/l10n/generated/plainco_localizations.dart' as plainco_l10n;
import 'package:image_picker_android/image_picker_android.dart';
import 'package:image_picker_platform_interface/image_picker_platform_interface.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:plainco_ui/plainco_ui.dart';
import 'services/service_locator.dart';
import 'services/update_checker.dart';
import 'screens/scanner_screen.dart';

void main() => bootstrap();

/// Shared start-up path for every entrypoint.
///
/// [ensureBinding] substitutes the binding initialiser. It exists so the
/// debug automation entrypoint can install its own binding without this file
/// — or the shipped app — depending on a test-automation package. Defaults to
/// the normal Flutter binding.
Future<void> bootstrap({void Function()? ensureBinding}) async {
  (ensureBinding ?? WidgetsFlutterBinding.ensureInitialized)();

  _useSystemPhotoPicker();

  // Edge-to-edge rendering. Content draws behind the system bars; SafeArea in
  // Scaffold handles the insets.
  //
  // Deliberately no SystemUiOverlayStyle bar colours here. statusBarColor,
  // systemNavigationBarColor and systemNavigationBarDividerColor map onto
  // Window.setStatusBarColor / setNavigationBarColor / setNavigationBarDivider-
  // Color, all deprecated in API 35 and no-ops once edge-to-edge is on. Play
  // flags their use. edgeToEdge already makes the bars transparent.
  if (!kIsWeb && Platform.isAndroid) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
  }

  await purchaseService.init();
  await errorLogger.init();

  // Seed fake errors for testing the log inspector UI (debug builds only).
  if (kDebugMode) {
    await errorLogger.clear(); // prevent accumulation across launches
    errorLogger.log('Camera initialization timeout', context: 'Scanner');
    errorLogger.log('Gallery image decode failed', detail: 'Invalid format: null bytes at offset 0x1F4', context: 'ScannerScreen');
    errorLogger.log('IAP restore failed', detail: 'BILLING_UNAVAILABLE — Play Services not installed', context: 'PurchaseService');
    errorLogger.log('QR decode partial result', detail: 'WiFi SSID contains special characters: café-network\\;test', context: 'DataType');
  }

  // Non-blocking: check for Play Store updates in the background. The checker
  // needs a messenger to ask about restarting once a download lands; it polls
  // for it, so wiring the key up during the first build is soon enough.
  UpdateChecker.instance.messengerKey = scaffoldMessengerKey;
  unawaited(UpdateChecker.instance.checkOnStart());
  runApp(const PlainQRApp());
}

/// Route gallery picking through the Android system photo picker.
///
/// The picker hands back only the one image the user actually chose, so the
/// app never needs READ_MEDIA_IMAGES — which is both less to ask of the user
/// and what Play policy requires of apps targeting API 33+, since a system
/// picker is plainly sufficient for "scan a code out of one picture".
///
/// The flag lives on the Android platform implementation, so this is a no-op
/// anywhere else.
void _useSystemPhotoPicker() {
  final platform = ImagePickerPlatform.instance;
  if (platform is ImagePickerAndroid) {
    platform.useAndroidPhotoPicker = true;
  }
}

/// Lets [UpdateChecker] raise the "update ready — restart?" prompt from
/// outside the widget tree.
final GlobalKey<ScaffoldMessengerState> scaffoldMessengerKey =
    GlobalKey<ScaffoldMessengerState>();

class PlainQRApp extends StatefulWidget {
  const PlainQRApp({super.key});
  @override
  State<PlainQRApp> createState() => _PlainQRAppState();
}

class _PlainQRAppState extends State<PlainQRApp> {
  static const _themeKey = 'theme_mode';
  ThemeMode _mode = ThemeMode.system;

  @override
  void initState() {
    super.initState();
    unawaited(_loadTheme());
  }

  Future<void> _loadTheme() async {
    final prefs = await SharedPreferences.getInstance();
    final saved = prefs.getString(_themeKey);
    if (!mounted) return;
    setState(() {
      _mode = switch (saved) {
        'light' => ThemeMode.light,
        'dark' => ThemeMode.dark,
        'system' => ThemeMode.system,
        _ => ThemeMode.system,
      };
    });
  }

  void _toggleTheme() {
    final newMode = switch (_mode) {
      ThemeMode.system => ThemeMode.light,
      ThemeMode.light => ThemeMode.dark,
      ThemeMode.dark => ThemeMode.system,
    };
    unawaited(SharedPreferences.getInstance().then((prefs) async {
      await prefs.setString(_themeKey, switch (newMode) {
        ThemeMode.light => 'light',
        ThemeMode.dark => 'dark',
        ThemeMode.system => 'system',
      });
    }));
    setState(() {
      _mode = newMode;
    });
  }

  void _setThemeMode(ThemeMode mode) {
    unawaited(SharedPreferences.getInstance().then((prefs) async {
      await prefs.setString(_themeKey, switch (mode) {
        ThemeMode.light => 'light',
        ThemeMode.dark => 'dark',
        ThemeMode.system => 'system',
      });
    }));
    setState(() {
      _mode = mode;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PlainQR — Scan & Generate',
      debugShowCheckedModeBanner: false,
      scaffoldMessengerKey: scaffoldMessengerKey,
      localizationsDelegates: <LocalizationsDelegate<dynamic>>[
        ...AppLocalizations.localizationsDelegates,
        ...plainco_l10n.AppLocalizations.localizationsDelegates,
      ],
      supportedLocales: [
        ...AppLocalizations.supportedLocales,
        ...plainco_l10n.AppLocalizations.supportedLocales,
      ],
      theme: PlainCoTheme.light,
      darkTheme: PlainCoTheme.dark,
      themeMode: _mode,
      home: ScannerScreen(
        onToggleTheme: _toggleTheme,
        themeMode: _mode,
        onThemeChanged: _setThemeMode,
      ),
    );
  }
}
