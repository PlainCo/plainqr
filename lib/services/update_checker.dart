import 'package:flutter/material.dart';
import 'package:in_app_update/in_app_update.dart';
import 'package:qrscan/l10n/generated/app_localizations.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'error_logger.dart';

/// How stale the installed build must be before we spend the user's data on a
/// background download. Play counts this from the day the update reached their
/// device, so a same-day patch no longer costs every user a bundle download.
const _minStalenessDays = 3;

/// An [AppUpdateInfo.updatePriority] at or above this skips the staleness wait.
/// Priority is set per-release through the Play Developer API and defaults to
/// 0, so this only fires on releases we deliberately mark urgent.
const _urgentPriority = 4;

/// How long to leave the user alone after they decline an update.
const _denialBackoff = Duration(days: 7);

const _prefDeclinedAt = 'update_declined_at';

/// Checks for a Play Store update on cold start, downloads it in the
/// background, then asks before restarting to install it.
///
/// Flexible mode lets the user keep using the app while the download runs.
/// Installing is what forces the restart, so it is always gated behind an
/// explicit tap — never done silently on the user's behalf.
///
/// Android only; [InAppUpdate] throws on other platforms and the throw is
/// caught and ignored.
class UpdateChecker {
  UpdateChecker._();
  static final UpdateChecker instance = UpdateChecker._();

  bool _checkedThisSession = false;

  /// Lets the checker surface the restart prompt. Assigned by the app before
  /// [checkOnStart] can reach the point of needing it — even the Play query
  /// outlives the first frame, and a download far more so.
  GlobalKey<ScaffoldMessengerState>? messengerKey;

  /// Call once on cold start, after the binding is initialised.
  Future<void> checkOnStart() async {
    if (_checkedThisSession) return;
    _checkedThisSession = true;

    final AppUpdateInfo info;
    try {
      info = await InAppUpdate.checkForUpdate();
    } catch (e) {
      debugPrint('[UpdateChecker] check failed: $e');
      return;
    }

    // A previous session finished the download but the user never restarted.
    // Offer again rather than installing under them: completeFlexibleUpdate()
    // restarts the app immediately, and doing that during cold start means the
    // user taps the icon and watches it relaunch itself.
    if (info.installStatus == InstallStatus.downloaded) {
      await _promptRestart();
      return;
    }

    // An immediate update was already under way and got interrupted. Resuming
    // it is the only way off the old build, so it takes precedence — and it
    // needs performImmediateUpdate(), not completeFlexibleUpdate(), which has
    // no downloaded flexible update to install and would just throw.
    if (info.updateAvailability ==
        UpdateAvailability.developerTriggeredUpdateInProgress) {
      try {
        await InAppUpdate.performImmediateUpdate();
      } catch (e) {
        debugPrint('[UpdateChecker] resume immediate update failed: $e');
      }
      return;
    }

    if (info.updateAvailability != UpdateAvailability.updateAvailable) return;
    if (!info.flexibleUpdateAllowed) return;
    if (!await _shouldOfferNow(info)) return;

    final AppUpdateResult result;
    try {
      // Resolves only once the download has finished, which may be minutes
      // away. Nothing downstream blocks the UI, so that wait is free.
      result = await InAppUpdate.startFlexibleUpdate();
    } catch (e) {
      debugPrint('[UpdateChecker] flexible update failed: $e');
      return;
    }

    if (result == AppUpdateResult.userDeniedUpdate) {
      await _recordDenial();
      return;
    }
    if (result != AppUpdateResult.success) return;

    await _promptRestart();
  }

  /// Whether to start a download right now.
  ///
  /// Two gates: a user who said no recently is not asked again, and a build
  /// that has only just shipped waits — otherwise publishing anything spends
  /// every user's mobile data on their next launch.
  Future<bool> _shouldOfferNow(AppUpdateInfo info) async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final declinedAt = prefs.getInt(_prefDeclinedAt);
      if (declinedAt != null) {
        final since = DateTime.now()
            .difference(DateTime.fromMillisecondsSinceEpoch(declinedAt));
        if (!since.isNegative && since < _denialBackoff) return false;
      }
    } catch (e) {
      // Reading the backoff is best-effort; falling through only risks asking
      // one more time than intended.
      debugPrint('[UpdateChecker] denial lookup failed: $e');
    }

    if (info.updatePriority >= _urgentPriority) return true;

    // Null means Play has not reported staleness for this device yet. Hold off
    // rather than guess — Play's own auto-update still covers these users.
    final staleness = info.clientVersionStalenessDays;
    return staleness != null && staleness >= _minStalenessDays;
  }

  Future<void> _recordDenial() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      await prefs.setInt(
          _prefDeclinedAt, DateTime.now().millisecondsSinceEpoch);
    } catch (e) {
      debugPrint('[UpdateChecker] failed to persist denial: $e');
    }
  }

  /// Ask the user to restart. Installing is destructive to whatever they were
  /// doing, so it only happens on an explicit tap.
  ///
  /// Uses a dialog rather than a SnackBar because completeFlexibleUpdate() must
  /// be called while the Activity is fully in the foreground. A SnackBar
  /// dismisses before the call resolves, which can cause the Play install UI to
  /// fail silently — the user sees nothing happen.
  Future<void> _promptRestart() async {
    final messenger = await _waitForMessenger();
    final context = messengerKey?.currentContext;
    if (messenger == null || context == null || !context.mounted) return;

    final l10n = AppLocalizations.of(context);
    messenger.clearSnackBars();
    showDialog<void>(
      context: context,
      barrierDismissible: false,
      builder: (ctx) => AlertDialog(
        title: Text(l10n.updateReadyMessage),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(ctx).pop(),
            child: Text(l10n.actionCancel),
          ),
          FilledButton(
            onPressed: () {
              InAppUpdate.completeFlexibleUpdate().catchError((Object e) {
                debugPrint('[UpdateChecker] install failed: $e');
                ErrorLogger.instance.log('Update install failed',
                    detail: e.toString(), context: 'UpdateChecker');
              });
            },
            child: Text(l10n.updateReadyAction),
          ),
        ],
      ),
    );
  }

  /// The prompt can become due before the first frame, since [checkOnStart] is
  /// kicked off ahead of `runApp`. Poll briefly rather than drop the
  /// notification and leave a downloaded update stranded until next launch.
  Future<ScaffoldMessengerState?> _waitForMessenger() async {
    for (var attempt = 0; attempt < 20; attempt++) {
      final state = messengerKey?.currentState;
      if (state != null) return state;
      await Future<void>.delayed(const Duration(milliseconds: 250));
    }
    return null;
  }
}
