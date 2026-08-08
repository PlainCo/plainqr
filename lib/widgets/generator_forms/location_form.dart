import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:qrscan/l10n/generated/app_localizations.dart';
import '../../services/geocoding_service.dart';
import 'shared.dart';

class LocationForm extends StatefulWidget {
  final OnQrChanged onChanged;
  const LocationForm({super.key, required this.onChanged});

  @override
  State<LocationForm> createState() => _LocationFormState();
}

class _LocationFormState extends State<LocationForm> {
  final _latCtrl = TextEditingController();
  final _lngCtrl = TextEditingController();
  final _addrCtrl = TextEditingController();
  bool _isResolving = false;

  @override
  void initState() {
    super.initState();
    _latCtrl.addListener(_notify);
    _lngCtrl.addListener(_notify);
  }

  void _notify() {
    final lat = _latCtrl.text.trim();
    final lng = _lngCtrl.text.trim();
    if (lat.isEmpty || lng.isEmpty) {
      widget.onChanged('', false);
      return;
    }
    widget.onChanged('geo:$lat,$lng', true);
  }

  Future<void> _resolveAddress(String address) async {
    if (address.trim().isEmpty) return;
    setState(() => _isResolving = true);
    try {
      final result = await GeocodingService.resolveAddress(address);
      if (mounted) {
        if (result.isSuccess) {
          _latCtrl.text = result.latitude!.toStringAsFixed(6);
          _lngCtrl.text = result.longitude!.toStringAsFixed(6);
          if (result.formattedAddress != null) {
            _addrCtrl.text = result.formattedAddress!;
          }
          setState(() {});
        } else if (result.errorCode != null) {
          final l10n = AppLocalizations.of(context);
          final msg = switch (result.errorCode!) {
            GeocodingError.addressLookupTimedOut => l10n.addressLookupTimedOut,
            _ => l10n.couldNotResolveAddress,
          };
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(msg)));
        }
      }
    } finally {
      if (mounted) setState(() => _isResolving = false);
    }
  }

  Future<void> _getCurrentLocation() async {
    setState(() => _isResolving = true);
    try {
      final result = await GeocodingService.getCurrentLocation();
      if (mounted) {
        if (result.isSuccess) {
          _latCtrl.text = result.latitude!.toStringAsFixed(6);
          _lngCtrl.text = result.longitude!.toStringAsFixed(6);
          if (result.formattedAddress != null) {
            _addrCtrl.text = result.formattedAddress!;
          }
          setState(() {});
        } else if (result.errorCode != null) {
          final l10n = AppLocalizations.of(context);
          final msg = switch (result.errorCode!) {
            GeocodingError.locationPermissionDenied => l10n.locationPermissionDenied,
            GeocodingError.locationLookupTimedOut => l10n.locationLookupTimedOut,
            _ => l10n.couldNotGetCurrentLocation,
          };
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(msg)));
        }
      }
    } finally {
      if (mounted) setState(() => _isResolving = false);
    }
  }

  @override
  void dispose() {
    _latCtrl.removeListener(_notify);
    _lngCtrl.removeListener(_notify);
    _latCtrl.dispose();
    _lngCtrl.dispose();
    _addrCtrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    return Column(
      children: [
        TextField(
          controller: _addrCtrl,
          decoration: InputDecoration(
            labelText: l10n.formAddress,
            hintText: l10n.formAddressHint,
            border: const OutlineInputBorder(),
            contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 14),
            suffixIcon: _isResolving
                ? const Padding(
                    padding: EdgeInsets.all(14),
                    child: SizedBox(width: 18, height: 18, child: CircularProgressIndicator(strokeWidth: 2)),
                  )
                : IconButton(
                    icon: const Icon(Icons.search, size: 20),
                    onPressed: () => _resolveAddress(_addrCtrl.text),
                  ),
          ),
          onSubmitted: (v) { _resolveAddress(v); },
        ),
        const SizedBox(height: 8),
        SizedBox(
          width: double.infinity,
          child: OutlinedButton.icon(
            onPressed: _isResolving ? null : () { _getCurrentLocation(); },
            icon: Icon(_isResolving ? Icons.hourglass_top : Icons.my_location, size: 18),
            label: Text(_isResolving ? l10n.resolving : l10n.getCurrentLocation),
          ),
        ),
        const SizedBox(height: 8),
        TextField(
          controller: _latCtrl,
          keyboardType: const TextInputType.numberWithOptions(decimal: true, signed: true),
          inputFormatters: [
            FilteringTextInputFormatter.allow(RegExp(r'^-?\d*\.?\d*$')),
          ],
          decoration: InputDecoration(
            labelText: l10n.formLatitude,
            helperText: l10n.required,
            border: const OutlineInputBorder(),
            contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 14),
          ),
        ),
        const SizedBox(height: 8),
        TextField(
          controller: _lngCtrl,
          keyboardType: const TextInputType.numberWithOptions(decimal: true, signed: true),
          inputFormatters: [
            FilteringTextInputFormatter.allow(RegExp(r'^-?\d*\.?\d*$')),
          ],
          decoration: InputDecoration(
            labelText: l10n.formLongitude,
            helperText: l10n.required,
            border: const OutlineInputBorder(),
            contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 14),
          ),
        ),
      ],
    );
  }
}
