import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:geocoding/geocoding.dart' as geo;
import 'package:location/location.dart' as loc;
import 'error_logger.dart';

/// Error codes so callers can branch without string-matching.
enum GeocodingError {
  emptyAddress,
  noResults,
  addressLookupTimedOut,
  couldNotResolveAddress,
  locationPermissionDenied,
  locationLookupTimedOut,
  couldNotGetCurrentLocation,
}

const _timeout = Duration(seconds: 15);

/// Structured result from a geocoding operation.
///
/// On full success: `latitude`, `longitude`, and `formattedAddress` are set.
/// On degraded success: coordinates are set but `formattedAddress` is null
///   (reverse geocode failed — caller still has usable coordinates).
/// On failure: `errorCode` is set and callers should show a localized message.
class GeocodingResult {
  final double? latitude;
  final double? longitude;
  final String? formattedAddress; // "Street, City, Region, Country"
  final GeocodingError? errorCode;

  const GeocodingResult({
    this.latitude,
    this.longitude,
    this.formattedAddress,
    this.errorCode,
  });

  bool get isSuccess => errorCode == null;
  bool get isDegraded => isSuccess && formattedAddress == null;
  bool get isFailure => errorCode != null;
}

/// Centralized geocoding operations shared by the Calendar and Location forms.
class GeocodingService {
  /// Geocode an address string to coordinates, then reverse-geocode to a
  /// normalized human-readable address.
  ///
  /// Graceful fallback: if the forward geocode succeeds but the reverse
  /// geocode fails (timeout, no network), the result still returns usable
  /// coordinates with `formattedAddress = null`.
  static Future<GeocodingResult> resolveAddress(String address) async {
    if (address.trim().isEmpty) {
      return const GeocodingResult(errorCode: GeocodingError.emptyAddress);
    }
    try {
      final gc = geo.Geocoding();
      final locations = await gc
          .locationFromAddress(address)
          .timeout(_timeout);
      if (locations.isEmpty) {
        return const GeocodingResult(errorCode: GeocodingError.noResults);
      }
      return _reverseGeocode(gc, locations.first.latitude, locations.first.longitude);
    } on TimeoutException catch (e) {
      _log('resolveAddress timeout', e);
      return const GeocodingResult(errorCode: GeocodingError.addressLookupTimedOut);
    } catch (e, st) {
      _log('resolveAddress failed', e, st);
      return const GeocodingResult(errorCode: GeocodingError.couldNotResolveAddress);
    }
  }

  /// Request location permission, get GPS position, and reverse-geocode to a
  /// human-readable address.
  ///
  /// Graceful fallback: if GPS succeeds but reverse geocode fails (timeout,
  /// no network), the result still returns usable coordinates with
  /// `formattedAddress = null`.
  static Future<GeocodingResult> getCurrentLocation() async {
    final location = loc.Location();
    final granted = await location.requestPermission();
    if (granted != loc.PermissionStatus.granted) {
      return const GeocodingResult(errorCode: GeocodingError.locationPermissionDenied);
    }
    try {
      final pos = await location
          .getLocation()
          .timeout(_timeout);
      final lat = pos.latitude;
      final lng = pos.longitude;
      if (lat == null || lng == null) {
        return const GeocodingResult(errorCode: GeocodingError.couldNotGetCurrentLocation);
      }
      return _reverseGeocode(geo.Geocoding(), lat, lng);
    } on TimeoutException catch (e) {
      _log('getCurrentLocation timeout', e);
      return const GeocodingResult(errorCode: GeocodingError.locationLookupTimedOut);
    } catch (e, st) {
      _log('getCurrentLocation failed', e, st);
      return const GeocodingResult(errorCode: GeocodingError.couldNotGetCurrentLocation);
    }
  }

  /// Reverse-geocode coordinates to a formatted address string.
  ///
  /// **Graceful fallback:** if reverse geocoding fails for any reason
  /// (timeout, no network, no results), returns coordinates without
  /// an address — the caller still has usable data.
  static Future<GeocodingResult> _reverseGeocode(
    geo.Geocoding gc,
    double lat,
    double lng,
  ) async {
    try {
      final placemarks = await gc
          .placemarkFromCoordinates(lat, lng)
          .timeout(_timeout);
      if (placemarks.isEmpty) {
        return GeocodingResult(latitude: lat, longitude: lng);
      }
      final p = placemarks.first;
      final formatted = [p.street, p.locality, p.administrativeArea, p.country]
          .where((s) => s != null && s.isNotEmpty).join(', ');
      return GeocodingResult(
        latitude: lat,
        longitude: lng,
        formattedAddress: formatted.isNotEmpty ? formatted : null,
      );
    } on TimeoutException catch (e) {
      _log('reverseGeocode timeout', e);
      return GeocodingResult(latitude: lat, longitude: lng); // degraded — coords only
    } catch (e, st) {
      _log('reverseGeocode failed', e, st);
      return GeocodingResult(latitude: lat, longitude: lng); // degraded — coords only
    }
  }

  static void _log(String context, Object error, [StackTrace? stack]) {
    ErrorLogger.instance.log('GeocodingService.$context: $error');
    if (stack != null) {
      // Stack trace is stripped by ErrorLogger (no PII), safe to log
      debugPrint('GeocodingService.$context\n$stack');
    }
  }
}
