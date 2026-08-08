import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:qrscan/l10n/generated/app_localizations.dart';
import 'package:in_app_purchase/in_app_purchase.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'error_logger.dart';

/// Product ID for the one-time generator unlock.
/// Must match the Play Console product exactly.
const _productId = 'plainqr_generator_unlock';
const _prefKey = 'generator_unlocked';

/// Shown until Play Billing returns the real, locale-formatted price.
/// Matches the US tier so the UI is never blank on the first frame.
const _fallbackPrice = r'$0.99';

/// Manages the $0.99 one-time IAP for generator type unlocks.
///
/// Responsibilities:
/// 1. Initialize InAppPurchase on app start
/// 2. Restore purchases silently on every cold start
/// 3. Launch purchase flow when user taps Enable
/// 4. Listen to purchase stream, verify, acknowledge
/// 5. Persist unlock state to SharedPreferences
/// 6. Expose isUnlocked bool to the rest of the app
class PurchaseService {
  final InAppPurchase _iap = InAppPurchase.instance;
  bool _isUnlocked = false;
  bool _isReady = false;
  bool _isProcessing = false;
  /// Guard flag: true while a silent restore triggered by a purchase error is
  /// in-flight. Prevents an infinite loop if the restore itself errors.
  bool _restoreFromError = false;
  StreamSubscription<List<PurchaseDetails>>? _purchaseSubscription;
  String _price = _fallbackPrice;

  /// Product IDs Play returned during the current reconcile sweep.
  final Set<String> _restoreSeen = <String>{};

  /// Completes as soon as the sweep sees [_productId], so an owner never waits
  /// out the full timeout.
  Completer<void>? _restoreSettle;

  /// Whether the generator unlock has been purchased.
  bool get isUnlocked => _isUnlocked;

  /// The unlock price, already formatted in the user's local currency by Play
  /// Billing — "0,89 €", "¥120", "₹89". Falls back to [_fallbackPrice] until
  /// the Store responds, so this is never empty.
  String get price => _price;

  /// Fires when the localised price arrives. It is fetched asynchronously
  /// after cold start, so any surface that is already on screen — the
  /// free-tier banner, the settings subtitle — must rebuild when it lands.
  final ValueNotifier<String> priceNotifier = ValueNotifier<String>(_fallbackPrice);

  /// Stream of processing state changes — widgets can listen to show/hide loading.
  final ValueNotifier<bool> processingNotifier = ValueNotifier<bool>(false);

  /// Stream of unlock state changes — widgets rebuild when purchase completes.
  final ValueNotifier<bool> unlockedNotifier = ValueNotifier<bool>(false);

  /// Initialize the service.
  /// Call once before the app's home screen renders.
  Future<void> init() async {
    if (_isReady) return; // prevent duplicate init

    final prefs = await SharedPreferences.getInstance();
    _isUnlocked = prefs.getBool(_prefKey) ?? false;
    // Debug builds: auto-unlock all paid features for testing.
    // kDebugMode is a compile-time constant — release AABs are never affected.
    if (kDebugMode) _isUnlocked = true;
    unlockedNotifier.value = _isUnlocked;

    // Set up purchase stream and reconcile in the background — don't block cold start.
    _purchaseSubscription = _iap.purchaseStream.listen(_onPurchaseUpdate);
    unawaited(_reconcileWithPlay());
    unawaited(_loadPrice());

    _isReady = true;
  }

  void _onPurchaseUpdate(List<PurchaseDetails> purchases) {
    for (final purchase in purchases) {
      if (purchase.status == PurchaseStatus.purchased ||
          purchase.status == PurchaseStatus.restored) {
        _restoreSeen.add(purchase.productID);
        if (purchase.productID == _productId) {
          if (_restoreSettle?.isCompleted == false) _restoreSettle?.complete();
          _setUnlocked(true);
          ErrorLogger.instance.breadcrumb('Purchase: unlocked');
          _setProcessing(false);
        }
      } else if (purchase.status == PurchaseStatus.error) {
        debugPrint('[PurchaseService] Error: ${purchase.error?.message}');
        ErrorLogger.instance.log('Purchase failed',
            detail: purchase.error?.message, context: 'PurchaseService');
        if (purchase.productID == _productId) {
          _setProcessing(false);
        }
        // An interrupted transaction often surfaces as a purchase error (e.g.
        // ITEM_ALREADY_OWNED). If the user is still locked despite a prior
        // purchase, silently trigger a restore so the lost entitlement is
        // recovered within the same session. Guard against infinite loops:
        // an error during the restore itself must not trigger another restore.
        if (!_isUnlocked && !_restoreFromError) {
          _restoreFromError = true;
          _iap.restorePurchases().whenComplete(() {
            _restoreFromError = false;
          });
        }
      }
      // Always complete the purchase to prevent auto-refund after 3 days
      if (purchase.pendingCompletePurchase) {
        _iap.completePurchase(purchase).catchError((e) {
          debugPrint('[PurchaseService] Failed to complete purchase: $e');
          ErrorLogger.instance.log('Failed to complete purchase',
              detail: e.toString(), context: 'PurchaseService');
        });
      }
    }
  }

  /// Launch the purchase flow for the generator unlock.
  Future<bool> purchase(BuildContext context) async {
    if (_isProcessing) return false;
    _setProcessing(true);
    ErrorLogger.instance.breadcrumb('Purchase: started');
    final l10n = AppLocalizations.of(context)!;

    try {
      final available = await _iap.isAvailable();
      if (!available) {
        if (context.mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(l10n.storeUnavailable)),
          );
        }
        _setProcessing(false);
        return false;
      }

      final productResponse = await _iap.queryProductDetails({_productId});
      final error = productResponse.error;
      if (error != null) {
        if (context.mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(l10n.productLoadFailed)),
          );
        }
        _setProcessing(false);
        return false;
      }

      final product = productResponse.productDetails.firstWhere(
        (p) => p.id == _productId,
        orElse: () => _throwProductNotFound(),
      );

      final started = await _iap.buyNonConsumable(
        purchaseParam: PurchaseParam(productDetails: product),
      );
      if (!started) {
        _setProcessing(false);
      }
      return started;
    } catch (e) {
      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(l10n.purchaseFailed)),
        );
      }
      _setProcessing(false);
      return false;
    }
  }

  /// Restore previous purchases silently.
  Future<void> restore() async {
    if (_isProcessing) return;
    _setProcessing(true);
    try {
      await _iap.restorePurchases();
    } catch (_) {
      // Silently fail — restore is best-effort
    }
    _setProcessing(false);
  }

  /// Ask Play what the user actually owns and make the stored flag match.
  ///
  /// The pref is a cache, not the source of truth — it exists so the first
  /// frame after a cold start doesn't flicker while Play is queried. Any
  /// *confirmed* answer wins, including a negative one. Without that negative
  /// a refunded or revoked purchase keeps the unlock forever, because nothing
  /// else ever writes false.
  ///
  /// Confirming requires a clean round-trip. An unavailable store or a thrown
  /// query leaves the cache alone: a paying user offline must never lose what
  /// they bought.
  Future<void> _reconcileWithPlay() async {
    if (kDebugMode) return; // debug builds force-unlock in init()
    try {
      if (!await _iap.isAvailable()) return; // no Play Services — keep cache
      _restoreSeen.clear();
      final settle = Completer<void>();
      _restoreSettle = settle;
      await _iap.restorePurchases();
      // restorePurchases() resolves once the query is *issued*; the results
      // arrive separately on purchaseStream. An owner settles immediately,
      // so only a non-owner waits this out — and they stay locked regardless.
      await settle.future
          .timeout(const Duration(seconds: 3), onTimeout: () {});
      if (!_restoreSeen.contains(_productId)) {
        await _setUnlocked(false);
      }
    } catch (e) {
      debugPrint('[PurchaseService] Reconcile failed, keeping cache: $e');
      ErrorLogger.instance.log('Purchase reconcile failed',
          detail: e.toString(), context: 'PurchaseService');
    }
  }

  Future<void> _setUnlocked(bool value) async {
    _isUnlocked = value;
    unlockedNotifier.value = value;
    try {
      final prefs = await SharedPreferences.getInstance();
      await prefs.setBool(_prefKey, value);
    } catch (e) {
      debugPrint('[PurchaseService] Failed to persist unlock state: $e');
      ErrorLogger.instance.log('Failed to persist unlock state',
          detail: e.toString(), context: 'PurchaseService');
    }
  }

  /// Fetch the localised price from Play Billing.
  ///
  /// Best-effort by design: on an unavailable store, a query error, a missing
  /// product or an empty price string the fallback stands. A price is
  /// cosmetic — failing to get one must never block the purchase flow, which
  /// queries the product again at the point of sale.
  Future<void> _loadPrice() async {
    try {
      if (!await _iap.isAvailable()) return;
      final response = await _iap.queryProductDetails({_productId});
      if (response.error != null) return;
      for (final product in response.productDetails) {
        if (product.id == _productId && product.price.isNotEmpty) {
          _price = product.price;
          priceNotifier.value = _price;
          return;
        }
      }
    } catch (e) {
      debugPrint('[PurchaseService] Price lookup failed: $e');
      ErrorLogger.instance.log('Price lookup failed',
          detail: e.toString(), context: 'PurchaseService');
    }
  }

  void _setProcessing(bool value) {
    _isProcessing = value;
    processingNotifier.value = value;
  }

  Never _throwProductNotFound() {
    throw Exception('Product $_productId not found in Play Console. Create it before testing purchases.');
  }
}
