import 'package:flutter/services.dart';

const fileChannel = MethodChannel('com.plainco.plainqr/file');

// Method names invoked on fileChannel
const methodSaveToDownloads = 'saveToDownloads';
const methodAddContact = 'addContact';
const methodAddEvent = 'addEvent';

/// Returns the Android navigation mode:
///   0 = 3-button, 2 = gesture, -1 = unknown.
Future<int> getNavigationMode() async {
  try {
    final result = await fileChannel.invokeMethod<int>('getNavigationMode');
    return result ?? -1;
  } catch (_) {
    return -1;
  }
}

/// Whether the device is using 3-button navigation.
Future<bool> isThreeButtonNav() async {
  return await getNavigationMode() == 0;
}

/// Request adding the PlainQR tile to Quick Settings.
/// Returns true if the tile was added, false otherwise.
Future<bool> addTile() async {
  try {
    final result = await fileChannel.invokeMethod<bool>('addTile');
    return result ?? false;
  } catch (_) {
    return false;
  }
}
