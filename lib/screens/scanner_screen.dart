import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter/semantics.dart';
import 'package:flutter/services.dart';
import 'package:image/image.dart' as img;
import 'package:image_picker/image_picker.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import 'package:path_provider/path_provider.dart';
import 'package:plainco_ui/plainco_ui.dart';
import 'package:plainco_ui/components/feedback_store.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:url_launcher/url_launcher.dart';

import '../constants.dart';
import '../l10n/generated/app_localizations.dart';
import '../services/error_logger.dart';
import '../services/service_locator.dart';
import '../utils/data_type.dart';
import '../utils/data_type_extensions.dart';
import '../utils/platform_channels.dart' show addTile, isThreeButtonNav;
import '../utils/scan_history.dart';
import '../widgets/scan_result_card.dart';
import 'generator_screen.dart';
import 'history_screen.dart';
import 'settings_screen.dart';

class ScannerScreen extends StatefulWidget {
  final VoidCallback onToggleTheme;
  final ThemeMode themeMode;
  final ValueChanged<ThemeMode> onThemeChanged;

  const ScannerScreen({
    super.key,
    required this.onToggleTheme,
    required this.themeMode,
    required this.onThemeChanged,
  });

  @override
  State<ScannerScreen> createState() => _ScannerScreenState();
}

class _ScannerScreenState extends State<ScannerScreen> {
  final MobileScannerController _controller = MobileScannerController(
    returnImage: true,
    // No initialZoom — let the camera stay at its natural default (1.0× on
    // most devices), which keeps the main lens. We sync _zoomScale to the
    // controller's reported zoomScale after the camera starts.
  );
  final ScanHistory _scanHistory = ScanHistory();
  final FeedbackStore _feedbackStore = FeedbackStore();
  bool _isDetecting = false;
  double _zoomScale = _zoomDefault; // start on main camera, not ultrawide
  double _zoomAtGestureStart = _zoomDefault;
  DateTime _lastZoomCall = DateTime(2000);
  DetectedScan? _lastResult;
  ScanSource _lastSource = ScanSource.camera;
  int _selectedIndex = 0;
  bool _autoSave = true;
  bool _autoOpenDangerous = false;
  bool _autoFlashlight = false;
  bool _isThreeButtonNav = false; // 0 = buttons, 2 = gesture
  bool _torchOn = false;
  bool _togglingTorch = false;
  bool _shouldRestoreTorch = false;
  bool _zoomCalibrated = false;
  double _zoomBaseline = _zoomDefault;
  File? _frozenFrame; // static image shown when scan result is displayed
  bool _cardHidden = false; // toggled by the view-image button on gallery scans

  static const _saveKey = 'save_scan_history';
  static const _openDangerousKey = 'open_dangerous_types';
  static const _flashKey = 'auto_flashlight';
  static const _scanDismissCountKey = 'scan_dismiss_count';
  static const _ratePromptShownKey = 'rate_prompt_shown';
  static const _launchCountKey = 'launch_count';
  static const _tilePromptShownKey = 'tile_prompt_shown';

  List<PlainCoDrawerItem> _drawerItems(AppLocalizations l10n) => [
        PlainCoDrawerItem(icon: Icons.qr_code_scanner, label: l10n.drawerScan),
        PlainCoDrawerItem(icon: Icons.photo_library_outlined, label: l10n.drawerScanFromGallery),
        PlainCoDrawerItem(icon: Icons.qr_code_2, label: l10n.drawerGenerator),
        PlainCoDrawerItem(icon: Icons.history, label: l10n.drawerHistory),
        PlainCoDrawerItem(icon: Icons.settings, label: l10n.drawerSettings),
      ];

  @override
  void initState() {
    super.initState();
    _loadSettings();
    _feedbackStore.load();
    _controller.addListener(_onControllerStateChanged);
    purchaseService.unlockedNotifier.addListener(_onUnlockChanged);
    purchaseService.priceNotifier.addListener(_onPriceChanged);
    _checkNavigationMode();
  }

  Future<void> _checkNavigationMode() async {
    if (!mounted) return;
    _isThreeButtonNav = await isThreeButtonNav();
    if (mounted) setState(() {});
  }

  Future<void> _loadSettings() async {
    // Load history first so it's ready when the user navigates to it
    await _scanHistory.load();

    final prefs = await SharedPreferences.getInstance();
    if (!mounted) return;
    setState(() {
      _autoSave = prefs.getBool(_saveKey) ?? true;
      _autoOpenDangerous = prefs.getBool(_openDangerousKey) ?? false;
      _autoFlashlight = prefs.getBool(_flashKey) ?? false;
    });

    // Increment launch count, show tile prompt on 5th cold start
    final launchCount = (prefs.getInt(_launchCountKey) ?? 0) + 1;
    await prefs.setInt(_launchCountKey, launchCount);
    if (launchCount == 5 && prefs.getBool(_tilePromptShownKey) != true) {
      WidgetsBinding.instance.addPostFrameCallback((_) => _maybeShowTilePrompt());
    }

    // Auto-flashlight on start — listener syncs _torchOn
    if (mounted && _autoFlashlight) {
      try {
        await _controller.toggleTorch();
      } catch (_) {
        // Controller may not be initialized yet
      }
    }
  }

  @override
  void dispose() {
    _scanHistory.dispose();
    purchaseService.unlockedNotifier.removeListener(_onUnlockChanged);
    purchaseService.priceNotifier.removeListener(_onPriceChanged);
    _controller.removeListener(_onControllerStateChanged);
    if (_torchOn) _controller.toggleTorch();
    _controller.dispose();
    super.dispose();
  }

  void _onControllerStateChanged() {
    if (!mounted) return;
    final newTorchOn = _controller.value.torchState == TorchState.on;
    if (newTorchOn != _torchOn) {
      setState(() => _torchOn = newTorchOn);
    }

    // Calibrate our internal zoom to match the camera's actual linearZoom.
    // The controller reports the real Camera2 linearZoom value once the camera
    // is running. We sync on first valid report so zoom +/- starts from the
    // correct baseline instead of our arbitrary _zoomDefault.
    final reported = _controller.value.zoomScale;
    if (!_zoomCalibrated && reported > 0 && reported < 1.0) {
      _zoomCalibrated = true;
      _zoomScale = reported;
      _zoomBaseline = reported;
    }
  }

  /// The localised price arrives after the first frame, so the banner is
  /// already on screen showing the fallback. Rebuild — and re-layout, since a
  /// longer price string can change the banner's height.
  void _onPriceChanged() {
    if (!mounted) return;
    setState(() {});
  }

  void _onUnlockChanged() {
    if (!mounted) return;
    setState(() {}); // rebuild to hide banner and re-layout card position
    if (purchaseService.unlockedNotifier.value) {
      final l10n = AppLocalizations.of(context)!;
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(l10n.scannerUnlockSnack),
          duration: const Duration(seconds: 3),
        ),
      );
      SemanticsService.sendAnnouncement(
        View.of(context), l10n.scannerUnlockAnnounce, TextDirection.ltr,
      );
    }
  }

  DateTime? _detectCooldown;

  void _onDetect(BarcodeCapture capture) {
    if (!mounted) return;
    if (_isDetecting || _lastResult != null) return;
    final cooldown = _detectCooldown;
    if (cooldown != null &&
        DateTime.now().isBefore(cooldown)) {
      return;
    }
    _detectCooldown = null;
    final barcodes = capture.barcodes;
    if (barcodes.isEmpty) return;

    final barcode = barcodes.first;
    final value = barcode.rawValue;
    if (value == null || value.isEmpty) return;

    setState(() => _isDetecting = true);
    HapticFeedback.lightImpact();

    final detected = DataType.detect(value);
    ErrorLogger.instance.breadcrumb('Scanned ${detected.type.label} (camera)');
    setState(() {
      _lastResult = detected;
      _lastSource = ScanSource.camera;
    });

    // Announce scan to screen readers
    final type = detected.type.label;
    final brief = value.length > 40 ? '${value.substring(0, 37)}...' : value;
    final l10n = AppLocalizations.of(context)!;
    SemanticsService.sendAnnouncement(View.of(context), l10n.scannerDetectedAnnounce(type, brief), TextDirection.ltr);

    if (_autoSave) {
      _scanHistory.add(ScanEntry.fromScan(detected, source: ScanSource.camera));
    }

    // Freeze the current camera frame so the result card is shown over
    // a static image of what was just scanned, not a black screen.
    _saveFrozenFrame(capture.image);
    _zoomCalibrated = false; // recalibrate on next camera start
    if (mounted) {
      _shouldRestoreTorch = _torchOn || _autoFlashlight;
      _controller.stop();
    }
  }

  Future<void> _scanFromGallery() async {
    setState(() {
      _lastResult = null;
      _cardHidden = false;
      _isDetecting = true;
    });

    _shouldRestoreTorch = _torchOn || _autoFlashlight;
    if (mounted) _controller.stop();

    // Pick image
    final xfile = await ImagePicker().pickImage(source: ImageSource.gallery);
    if (xfile == null) {
      if (mounted) {
        setState(() => _isDetecting = false);
        _restartCamera();
      }
      return;
    }
    final imageFile = File(xfile.path);

    // Fast path: ML Kit on the full photo.  It reads codes in real-world
    // images — angled, reflective, small in frame — without any framing
    // help, so most gallery scans should never see the crop dialog at all.
    String? decoded = await _analyzeWithMlKit(imageFile.path);

    if (decoded == null) {
      // Fallback: let the user point at the code, then try the crop.
      final cropped = await _showImageCropDialog(imageFile);
      if (cropped == null || !mounted) {
        setState(() => _isDetecting = false);
        _restartCamera();
        return;
      }

      final tempDir = await getTemporaryDirectory();
      final cropFile = File('${tempDir.path}/plainqr_crop.png');
      await cropFile.writeAsBytes(cropped);

      decoded = await _analyzeWithMlKit(cropFile.path);
    }

    if (!mounted) return;

    if (decoded != null) {
      HapticFeedback.lightImpact();
      final detected = DataType.detect(decoded);
      ErrorLogger.instance.breadcrumb('Scanned ${detected.type.label} (gallery)');
      // Freeze on the original gallery photo, never the crop
      _frozenFrame = imageFile;
      setState(() {
        _lastResult = detected;
        _lastSource = ScanSource.gallery;
        _detectCooldown = DateTime.now().add(const Duration(seconds: 3));
      });
      final type = detected.type.label;
      final brief = decoded.length > 40
          ? '${decoded.substring(0, 37)}...'
          : decoded;
      final l10n = AppLocalizations.of(context)!;
      SemanticsService.sendAnnouncement(View.of(context), l10n.scannerDetectedAnnounce(type, brief), TextDirection.ltr);
    } else {
      // No QR found — show message and restart camera
      if (mounted) {
        final failL10n = AppLocalizations.of(context)!;
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(failL10n.galleryNoQrFound)),
        );
        // A SnackBar alone is silent to a screen reader, and the success path
        // announces. Failure has to announce too or it is indistinguishable
        // from nothing happening.
        SemanticsService.sendAnnouncement(
            View.of(context), failL10n.galleryNoQrFound, TextDirection.ltr);
      }
      _frozenFrame = null;
      setState(() => _isDetecting = false);
      _restartCamera();
    }
  }

  /// Decode an image file with ML Kit — the same decoder the live camera uses,
  /// already bundled in the APK via mobile_scanner.
  Future<String?> _analyzeWithMlKit(String path) async {
    try {
      final capture = await _controller.analyzeImage(path,
          formats: const [BarcodeFormat.qrCode]);
      if (capture == null) return null;
      for (final barcode in capture.barcodes) {
        final value = barcode.rawValue;
        if (value != null && value.isNotEmpty) return value;
      }
    } catch (e) {
      errorLogger.log('ML Kit image analysis failed',
          detail: e.toString(), context: 'ScannerScreen');
    }
    return null;
  }

  /// Shows the picked gallery image in a full-screen crop dialog.
  /// The user pinch-zooms to frame the QR code, then taps "Scan".
  /// Returns the cropped image bytes, or null if cancelled.
  Future<Uint8List?> _showImageCropDialog(File imageFile) async {
    final imageBytes = await imageFile.readAsBytes();
    final raw = img.decodeImage(imageBytes);
    if (raw == null) return null;

    // Flutter's Image.memory applies the EXIF orientation flag when it paints.
    // The image package does not apply it when it decodes. A portrait photo
    // from a phone camera is stored landscape with "rotate 90" in EXIF, so
    // without baking it in, what is on screen is rotated relative to the pixel
    // buffer the crop rectangle indexes into — and the crop lands somewhere
    // other than what was framed, while every number still looks plausible.
    final decoded = img.bakeOrientation(raw);

    final imageWidth = decoded.width.toDouble();
    final imageHeight = decoded.height.toDouble();
    final viewportKey = GlobalKey();
    TransformationController? _cropController;
    double initialScale = 1.0;
    Offset initialOffset = Offset.zero;

    final cropped = await showDialog<Uint8List?>(
      context: context,
      barrierDismissible: false,
      builder: (ctx) => Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          foregroundColor: Colors.white,
          title: Text(AppLocalizations.of(ctx)!.galleryCropTitle),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(ctx).pop(),
              child: Text(AppLocalizations.of(ctx)!.actionCancel),
            ),
            TextButton(
              onPressed: () {
                final renderBox = viewportKey.currentContext?.findRenderObject() as RenderBox?;
                if (renderBox == null || !renderBox.hasSize || _cropController == null) return;
                final viewportSize = renderBox.size;

                // The controller was initialised with the fit-to-screen
                // transform and accumulates gestures on top, so its value is
                // already the full image-pixel → viewport transform.
                // Composing the fit in again would square the scale.
                final inverse = Matrix4.inverted(_cropController!.value);
                final topLeft = MatrixUtils.transformPoint(inverse, Offset.zero);
                final bottomRight = MatrixUtils.transformPoint(inverse, Offset(viewportSize.width, viewportSize.height));

                // Pad the framed region outward — cropping flush removes
                // the QR quiet zone (4 modules of white margin), making
                // the symbol undecodable.  15 % padding restores it.
                const quietZone = 0.15;
                final framedW = bottomRight.dx - topLeft.dx;
                final framedH = bottomRight.dy - topLeft.dy;

                final left = (topLeft.dx - framedW * quietZone).clamp(0.0, imageWidth);
                final top = (topLeft.dy - framedH * quietZone).clamp(0.0, imageHeight);
                final right = (bottomRight.dx + framedW * quietZone).clamp(0.0, imageWidth);
                final bottom = (bottomRight.dy + framedH * quietZone).clamp(0.0, imageHeight);

                final x = left.round();
                final y = top.round();
                final w = (right - left).clamp(1.0, imageWidth - x).round();
                final h = (bottom - top).clamp(1.0, imageHeight - y).round();

                final crop = img.copyCrop(decoded, x: x, y: y, width: w, height: h);
                Navigator.of(ctx).pop(Uint8List.fromList(img.encodePng(crop)));
              },
              child: Text(AppLocalizations.of(ctx)!.galleryCropScan,
                  style: const TextStyle(fontWeight: FontWeight.bold)),
            ),
          ],
        ),
        body: LayoutBuilder(
          builder: (ctx, constraints) {
            final vw = constraints.maxWidth;
            final vh = constraints.maxHeight;
            initialScale = (vw / imageWidth).clamp(0.0, vh / imageHeight);
            initialOffset = Offset(
              (vw - imageWidth * initialScale) / 2,
              (vh - imageHeight * initialScale) / 2,
            );
            _cropController ??= TransformationController(
              Matrix4.identity()
                ..translate(initialOffset.dx, initialOffset.dy)
                ..scale(initialScale),
            );
            return InteractiveViewer(
              key: viewportKey,
              transformationController: _cropController,
              minScale: initialScale,
              // maxScale must stay above minScale or InteractiveViewer
              // asserts. initialScale exceeds 1 whenever the image is smaller
              // than the viewport — a small QR PNG saved off a web page, say.
              maxScale: initialScale > 8.0 ? initialScale * 4 : 8.0,
              // Without this, the child's edges may never come inside the
              // viewport. The image is laid out at full size and scaled down
              // to fit, so that rule is already violated on arrival, and the
              // first touch is when InteractiveViewer enforces it and snaps.
              // That snap is the "zoomed in too much as soon as I touch it".
              boundaryMargin: const EdgeInsets.all(double.infinity),
              constrained: false,
              child: Image.memory(
                imageBytes,
                width: imageWidth,
                height: imageHeight,
                fit: BoxFit.fill,
              ),
            );
          },
        ),
      ),
    );
    _cropController?.dispose();
    return cropped;
  }

  /// Save the raw camera frame JPEG to a temp file so we can display it
  /// as a static freeze-frame behind the result card instead of black.
  Future<void> _saveFrozenFrame(Uint8List? imageBytes) async {
    if (imageBytes == null || imageBytes.isEmpty) return;
    try {
      final dir = await getTemporaryDirectory();
      final file = File('${dir.path}/plainqr_freeze_${DateTime.now().millisecondsSinceEpoch}.jpg');
      await file.writeAsBytes(imageBytes);
      if (mounted) {
        setState(() => _frozenFrame = file);
      }
    } catch (_) {
      // If we can't save the frame, fall through — the screen goes black
      // (existing behavior) rather than crashing.
    }
  }

  void _saveCurrentResult() {
    final result = _lastResult;
    if (result == null) return;
    _scanHistory.add(ScanEntry.fromScan(
      result,
      source: _lastSource,
    ));
    if (mounted) {
      final l10n = AppLocalizations.of(context)!;
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(l10n.scannerSavedToHistory),
          duration: const Duration(seconds: 1),
        ),
      );
      SemanticsService.sendAnnouncement(View.of(context), l10n.scannerSavedToHistory, TextDirection.ltr);
    }
  }

  void _dismissResult() async {
    // Delete the temp freeze-frame from camera scans (gallery uses the original file)
    final frame = _frozenFrame;
    if (frame != null && frame.path.contains('plainqr_freeze')) {
      try { frame.delete(); } catch (_) { /* best-effort cleanup */ }
    }
    setState(() {
      _lastResult = null;
      _isDetecting = false;
      _frozenFrame = null;
      _cardHidden = false;
      _detectCooldown = DateTime.now().add(const Duration(seconds: 3));
    });
    _restartCamera();

    // Rate prompt: after 2nd scan dismissal, once only
    final prefs = await SharedPreferences.getInstance();
    final count = (prefs.getInt(_scanDismissCountKey) ?? 0) + 1;
    await prefs.setInt(_scanDismissCountKey, count);
    if (count == 2 && prefs.getBool(_ratePromptShownKey) != true) {
      _maybeShowRatePrompt();
    }
  }

  void _maybeShowRatePrompt() {
    if (!mounted) return;
    final l10n = AppLocalizations.of(context)!;
    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        title: Text(l10n.ratePromptTitle),
        content: Text(l10n.ratePromptBody),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(ctx).pop();
              _markRatePromptShown();
            },
            child: Text(l10n.actionCancel),
          ),
          TextButton.icon(
            onPressed: () {
              Navigator.of(ctx).pop();
              _markRatePromptShown();
              launchUrl(Uri.parse(kRateUrl),
                  mode: LaunchMode.externalApplication);
            },
            icon: const Icon(Icons.star, size: 18),
            label: Text(l10n.ratePromptRate),
          ),
          TextButton.icon(
            onPressed: () {
              Navigator.of(ctx).pop();
              _markRatePromptShown();
              Navigator.of(context).push(MaterialPageRoute(
                builder: (_) => FeedbackScreen(
                  appName: AppLocalizations.of(context)!.appName,
                  appKey: kPlainCoAppKey,
                  workerBaseUrl: kPlainCoWorkerUrl,
                  feedbackStore: _feedbackStore,
                  logsProvider: () => ErrorLogger.instance.hasErrors
                      ? ErrorLogger.instance.feedbackReport
                      : null,
                ),
              ));
            },
            icon: const Icon(Icons.feedback_outlined, size: 18),
            label: Text(l10n.ratePromptFeedback),
          ),
        ],
      ),
    );
  }

  Future<void> _markRatePromptShown() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool(_ratePromptShownKey, true);
  }

  void _maybeShowTilePrompt() {
    if (!mounted) return;
    final l10n = AppLocalizations.of(context)!;
    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        title: Text(l10n.tilePromptTitle),
        content: Text(l10n.tilePromptBody),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(ctx).pop();
              _markTilePromptShown();
            },
            child: Text(l10n.actionCancel),
          ),
          FilledButton.icon(
            onPressed: () {
              Navigator.of(ctx).pop();
              _markTilePromptShown();
              addTile();
            },
            icon: const Icon(Icons.widgets_outlined, size: 18),
            label: Text(l10n.tilePromptAdd),
          ),
        ],
      ),
    );
  }

  Future<void> _markTilePromptShown() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool(_tilePromptShownKey, true);
  }

  Future<void> _restartCamera() async {
    if (!mounted) return;
    await _controller.start();
    final restore = _shouldRestoreTorch;
    _shouldRestoreTorch = false;
    if (mounted && restore) {
      await _controller.toggleTorch();
    }
  }

  void _showPurchaseDialog() async {
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

  void _onDrawerItemTap(int index) {
    if (index == 0) {
      setState(() => _selectedIndex = 0);
      return;
    }
    if (index == 1) {
      setState(() => _selectedIndex = 0);
      _scanFromGallery();
      return;
    }
    // index 2, 3, 4 — push route, stop camera while covered
    _shouldRestoreTorch = _torchOn || _autoFlashlight;
    _controller.stop();
    Navigator.of(context).push(_routeForIndex(index)).then((_) {
      if (!mounted) return;
      setState(() => _selectedIndex = 0);
      if (_lastResult == null) {
        _restartCamera();
      }
    });
  }

  MaterialPageRoute<void> _routeForIndex(int index) {
    switch (index) {
      case 2:
        return MaterialPageRoute(builder: (_) => const GeneratorScreen());
      case 3:
        return MaterialPageRoute(
          builder: (_) => HistoryScreen(
            history: _scanHistory,
            autoOpenDangerous: _autoOpenDangerous,
          ),
        );
      case 4:
        return MaterialPageRoute(
          builder: (_) => SettingsScreen(
            onAutoSaveChanged: _onAutoSaveChanged,
            onAutoOpenDangerousChanged: _onAutoOpenDangerousChanged,
            onAutoFlashlightChanged: _onAutoFlashlightChanged,
            currentThemeMode: widget.themeMode,
            onThemeChanged: widget.onThemeChanged,
          ),
        );
      default:
        throw ArgumentError('Unknown drawer index: $index');
    }
  }

  void _onAutoSaveChanged(bool value) {
    setState(() => _autoSave = value);
  }

  void _onAutoOpenDangerousChanged(bool value) {
    setState(() => _autoOpenDangerous = value);
  }

  Future<void> _onAutoFlashlightChanged(bool value) async {
    setState(() => _autoFlashlight = value);
    if (_togglingTorch) return;
    if ((value && !_torchOn) || (!value && _torchOn)) {
      _togglingTorch = true;
      try {
        await _controller.toggleTorch();
      } finally {
        _togglingTorch = false;
      }
    }
  }

  Future<void> _toggleTorch() async {
    if (_togglingTorch) return;
    _togglingTorch = true;
    try {
      await _controller.toggleTorch();
      // _torchOn is synced by the controller listener
    } finally {
      _togglingTorch = false;
    }
  }

  // ── Zoom Controls ─────────────────────────────────────────────────
  // mobile_scanner uses Camera2 setLinearZoom (0.0–1.0): 0 = min zoom
  // (ultrawide on multi-cam phones), 1 = max zoom. We start at a small
  // non-zero default to stay on the main camera, not the ultrawide.
  static const double _zoomMin = 0;
  static const double _zoomMax = 1;
  static const double _zoomDefault = 0.2;
  static const double _zoomStep = 0.05;
  static const Duration _zoomThrottle = Duration(milliseconds: 50);

  /// Display zoom: 1.0× at the calibrated camera default.
  double get _displayZoom => _zoomScale / _zoomBaseline;

  void _applyZoom(double zoom) {
    _zoomScale = zoom.clamp(_zoomMin, _zoomMax);
    _controller.setZoomScale(_zoomScale);
  }

  /// Gesture-based zoom with throttle (fires many times/sec during pinch).
  void _applyGestureZoom(double zoom) {
    _zoomScale = zoom.clamp(_zoomMin, _zoomMax);
    final now = DateTime.now();
    if (now.difference(_lastZoomCall) < _zoomThrottle) return;
    _lastZoomCall = now;
    _controller.setZoomScale(_zoomScale);
  }

  void _zoomIn() {
    setState(() {
      _applyZoom(_zoomScale + _zoomStep);
    });
  }

  void _zoomOut() {
    setState(() {
      _applyZoom(_zoomScale - _zoomStep);
    });
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final cs = Theme.of(context).colorScheme;
    final lastResult = _lastResult;
    return Scaffold(
      backgroundColor: Colors.black,
        drawer: PlainCoDrawer(
        appName: l10n.appName,
        appKey: kPlainCoAppKey,
        version: appVersion,
        workerUrl: kPlainCoWorkerUrl,
        sourceUrl: kPlainCoSourceUrl,
        issuesUrl: kPlainCoIssuesUrl,
        feedbackStore: _feedbackStore,
        logsProvider: () => ErrorLogger.instance.hasReport
            ? ErrorLogger.instance.feedbackReport
            : null,
        rateUrl: kRateUrl,
        changelogUrl: kChangelogUrl,
        changelog: [
          ReleaseNote(version: '0.4', items: [
            l10n.changelog04Item1,
            l10n.changelog04Item2,
            l10n.changelog04Item3,
            l10n.changelog04Item4,
            l10n.changelog04Item5,
          ]),
        ],
        items: _drawerItems(l10n),
        selectedIndex: _selectedIndex,
        onItemTap: _onDrawerItemTap,
      ),
      appBar: AppBar(
        leading: Builder(
          builder: (context) => IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () => Scaffold.of(context).openDrawer(),
          ),
        ),
        title: Text(l10n.appName),
        actions: [
          IconButton(
            icon: Icon(_torchOn ? Icons.flash_on : Icons.flash_off),
            tooltip: _torchOn ? l10n.scannerTooltipDisableFlashlight : l10n.scannerTooltipEnableFlashlight,
            onPressed: _toggleTorch,
          ),
          IconButton(
            icon: const Icon(Icons.photo_library_outlined),
            tooltip: l10n.scannerTooltipGallery,
            onPressed: () { _scanFromGallery(); },
          ),
          IconButton(
            icon: Icon(Theme.of(context).brightness == Brightness.dark ? Icons.light_mode : Icons.dark_mode),
            onPressed: widget.onToggleTheme,
          ),
        ],
      ),
      body: CustomMultiChildLayout(
        delegate: _ScannerLayoutDelegate(
          navBarInset: MediaQuery.viewPaddingOf(context).bottom,
          hasCard: lastResult != null,
          hasBanner: !purchaseService.isUnlocked,
          isThreeButton: _isThreeButtonNav,
        ),
        children: [
          // ── Camera ──
          LayoutId(
            id: 'camera',
            child: GestureDetector(
              onScaleStart: _frozenFrame != null ? null : (details) {
                _zoomAtGestureStart = _zoomScale;
              },
              onScaleUpdate: _frozenFrame != null ? null : (details) {
                _applyGestureZoom(_zoomAtGestureStart * details.scale);
              },
              child: MobileScanner(
                controller: _controller,
                onDetect: _frozenFrame != null ? null : _onDetect,
              ),
            ),
          ),
          // ── Frozen frame ──
          if (_frozenFrame != null)
            LayoutId(
              id: 'frozenFrame',
              child: Image.file(
                _frozenFrame!,
                fit: BoxFit.cover,
                gaplessPlayback: true,
                errorBuilder: (_, __, ___) => const SizedBox.expand(),
              ),
            ),
          // ── Scan guide ──
          LayoutId(
            id: 'guide',
            child: _ScanGuide(cs: cs),
          ),
          // ── Nav bar colour fill (3-button nav only)
          if (!purchaseService.isUnlocked && _isThreeButtonNav)
            LayoutId(
              id: 'navBarFill',
              child: Container(
                height: MediaQuery.viewPaddingOf(context).bottom,
                color: cs.surface,
              ),
            ),
          // ── Free-tier banner ──
          if (!purchaseService.isUnlocked)
            LayoutId(
              id: 'banner',
              child: GestureDetector(
                onTap: _showPurchaseDialog,
                child: Container(
                  height: 60,
                  color: cs.surface,
                  alignment: Alignment.center,
                  child: Text(
                    l10n.scannerFreeTierBanner(purchaseService.price),
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: cs.onSurface,
                    ),
                  ),
                ),
              ),
            ),
          // ── Result card ──
          if (lastResult != null && !_cardHidden)
            LayoutId(
              id: 'card',
              child: ScanResultCard(
                result: lastResult,
                onDismiss: _dismissResult,
                showSave: !_autoSave && _lastSource == ScanSource.camera,
                onSave: _saveCurrentResult,
                autoOpenDangerous: _autoOpenDangerous,
                onViewImage: _lastSource == ScanSource.gallery
                    ? () => setState(() => _cardHidden = true)
                    : null,
              ),
            ),
          // ── Show-card button (when card is hidden for gallery image viewing) ──
          if (_cardHidden)
            Positioned(
              top: 16,
              right: 16,
              child: FloatingActionButton.small(
                onPressed: () => setState(() => _cardHidden = false),
                child: const Icon(Icons.article_outlined),
              ),
            ),
          // ── Zoom buttons ──
          LayoutId(
            id: 'zoom',
            child: _ZoomButtons(
              displayZoom: _displayZoom,
              zoomAtMin: _zoomScale <= _zoomMin,
              zoomAtMax: _zoomScale >= _zoomMax,
              onZoomIn: _zoomIn,
              onZoomOut: _zoomOut,
              l10n: l10n,
            ),
          ),
        ],
      ),
    );
  }
}

/// Positions scanner overlay children relative to each other, not just the
/// Stack edges.  The banner is laid out first so the card and zoom buttons
/// can reference its measured height instead of a hardcoded constant.
///
/// The Flutter docs recommend this over [Stack] when children depend on each
/// other's sizes:
/// <https://api.flutter.dev/flutter/widgets/Stack-class.html>
///   "In particular, when using a Stack you can't position children relative
///    to their size or the stack's own size."
class _ScannerLayoutDelegate extends MultiChildLayoutDelegate {
  final double navBarInset;
  final bool hasCard;
  final bool hasBanner;
  final bool isThreeButton;

  _ScannerLayoutDelegate({
    required this.navBarInset,
    required this.hasCard,
    required this.hasBanner,
    required this.isThreeButton,
  });

  @override
  void performLayout(Size size) {
    // ── Full-screen layers ──
    if (hasChild('camera')) {
      layoutChild('camera', BoxConstraints.tight(size));
      positionChild('camera', Offset.zero);
    }
    if (hasChild('frozenFrame')) {
      layoutChild('frozenFrame', BoxConstraints.tight(size));
      positionChild('frozenFrame', Offset.zero);
    }

    // ── Scan guide: centered ──
    if (hasChild('guide')) {
      final gs = layoutChild('guide', BoxConstraints.loose(size));
      positionChild(
        'guide',
        Offset((size.width - gs.width) / 2, (size.height - gs.height) / 2),
      );
    }

    // ── Nav bar fill: 0 px on gesture nav, ~48 px on 3-button. ──
    double navFillHeight = 0;
    if (hasChild('navBarFill') && isThreeButton) {
      final ns = layoutChild('navBarFill', BoxConstraints(
        minWidth: size.width,
        maxWidth: size.width,
        maxHeight: navBarInset,
      ));
      positionChild('navBarFill', Offset(0, size.height - ns.height));
      navFillHeight = ns.height;
    }

    // ── Banner: sits right on top of the nav fill (or screen edge). ──
    double bannerHeight = 0;
    if (hasChild('banner')) {
      final bs = layoutChild('banner', BoxConstraints(
        minWidth: size.width,
        maxWidth: size.width,
        maxHeight: size.height,
      ));
      positionChild('banner', Offset(0, size.height - navFillHeight - bs.height));
      bannerHeight = bs.height;
    }

    // The "floor" is the top of everything anchored at the bottom.
    final floor = (navFillHeight + bannerHeight) > 0
        ? navFillHeight + bannerHeight
        : navBarInset;

    // ── Result card: floats above the floor with a 20 px gap ──
    double cardHeight = 0;
    if (hasChild('card')) {
      final cs = layoutChild('card', BoxConstraints(
        maxWidth: size.width - 32,
        maxHeight: size.height - floor - 20,
      ));
      positionChild('card', Offset(16, size.height - floor - cs.height - 20));
      cardHeight = cs.height;
    }

    // ── Zoom buttons: right side, flush against card (or 20 px above banner) ──
    if (hasChild('zoom')) {
      final clearance = floor + cardHeight + 20;
      final zs = layoutChild('zoom', BoxConstraints.loose(size));
      positionChild('zoom', Offset(
        size.width - 12 - zs.width,
        size.height - clearance - zs.height,
      ));
    }
  }

  @override
  bool shouldRelayout(_ScannerLayoutDelegate old) {
    return old.navBarInset != navBarInset
        || old.hasCard != hasCard
        || old.hasBanner != hasBanner
        || old.isThreeButton != isThreeButton;
  }
}

class _ScanGuide extends StatelessWidget {
  final ColorScheme cs;
  const _ScanGuide({required this.cs});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 250,
        height: 250,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.white.withValues(alpha: 0.6), width: 2),
          borderRadius: const BorderRadius.all(Radius.circular(12)),
        ),
      ),
    );
  }
}

/// Semi-transparent zoom +/- buttons overlaid on the scanner.
/// Positioned on the right side, above the free-tier banner.
class _ZoomButtons extends StatelessWidget {
  final double displayZoom;
  final bool zoomAtMin;
  final bool zoomAtMax;
  final VoidCallback onZoomIn;
  final VoidCallback onZoomOut;
  final AppLocalizations l10n;

  const _ZoomButtons({
    required this.displayZoom,
    required this.zoomAtMin,
    required this.zoomAtMax,
    required this.onZoomIn,
    required this.onZoomOut,
    required this.l10n,
  });

  @override
  Widget build(BuildContext context) {
    final zoomInDisabled = zoomAtMax;
    final zoomOutDisabled = zoomAtMin;

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
          // Zoom in (+)
          _ZoomCircleButton(
            icon: Icons.add,
            tooltip: l10n.scannerZoomIn,
            disabled: zoomInDisabled,
            onTap: zoomInDisabled ? null : onZoomIn,
          ),
          const SizedBox(height: 16),
          // Zoom level label
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
            decoration: BoxDecoration(
              color: Colors.black.withValues(alpha: 0.55),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Text(
              '${displayZoom.toStringAsFixed(1)}×',
              style: const TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          const SizedBox(height: 16),
          // Zoom out (−)
          _ZoomCircleButton(
            icon: Icons.remove,
            tooltip: l10n.scannerZoomOut,
            disabled: zoomOutDisabled,
            onTap: zoomOutDisabled ? null : onZoomOut,
          ),
        ],
      );
  }
}

/// A single circular zoom button (+, −).
class _ZoomCircleButton extends StatelessWidget {
  final IconData icon;
  final String tooltip;
  final bool disabled;
  final VoidCallback? onTap;

  const _ZoomCircleButton({
    required this.icon,
    required this.tooltip,
    required this.disabled,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final iconColor = disabled ? Colors.white38 : Colors.white;
    final bgColor = disabled
        ? Colors.black.withValues(alpha: 0.25)
        : Colors.black.withValues(alpha: 0.55);

    return Semantics(
      button: true,
      enabled: !disabled,
      label: tooltip,
      child: GestureDetector(
        onTap: disabled ? null : onTap,
        child: Tooltip(
          message: tooltip,
          child: Container(
            width: 56,
            height: 56,
            decoration: BoxDecoration(
              color: bgColor,
              shape: BoxShape.circle,
            ),
            alignment: Alignment.center,
            child: Icon(icon, color: iconColor, size: 32),
          ),
        ),
      ),
    );
  }
}
