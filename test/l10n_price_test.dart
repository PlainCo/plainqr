// Guards the localised price.
//
// The unlock price used to be written into six strings in all 22 .arb files as
// a literal "$0.99" -- so a German user was quoted dollars, and a price change
// meant editing 132 strings. It now comes from Play Billing via
// PurchaseService.price, which is already formatted for the user's locale
// ("0,89 €", "¥120", "₹89").
//
// Two ways that regresses, both silent:
//   1. a translator re-introduces a literal price, and the string still
//      renders fine -- in the wrong currency;
//   2. a translation drops {price}, and the price vanishes from the UI
//      entirely without any error.
//
// Both are checked here, against the .arb files on disk and against the
// generated delegates at runtime.

import 'dart:convert';
import 'dart:io';

import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:qrscan/l10n/generated/app_localizations.dart';

/// Every message that quotes the unlock price.
const _priceKeys = <String>[
  'scannerFreeTierBanner',
  'settingsEnableGeneratorsSubtitle',
  'unlockDescription',
  'unlockEnableButton',
  'unlockDialogContent',
  'purchaseButton',
];

/// A literal amount in any of the orders that were present before this change:
/// "$0.99", "$0,99", "0,99 $". Matches a bare amount too, so a translation
/// that keeps the number but drops the symbol is still caught.
final _literalPrice = RegExp(r'\d+[.,]\d{2}');

/// Deliberately not dollars, and deliberately with a comma decimal and a
/// trailing symbol -- if substitution is broken this will not appear.
const _sample = '0,89 €';

List<File> _arbFiles() {
  final dir = Directory('lib/l10n');
  final files = dir
      .listSync()
      .whereType<File>()
      .where((f) => f.path.endsWith('.arb'))
      .toList()
    ..sort((a, b) => a.path.compareTo(b.path));
  return files;
}

String _localeOf(File f) =>
    f.uri.pathSegments.last.replaceAll('app_', '').replaceAll('.arb', '');

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  test('every .arb file exists and is readable', () {
    expect(_arbFiles().length, 22, reason: '22 locales are shipped');
  });

  group('.arb source', () {
    for (final file in _arbFiles()) {
      final locale = _localeOf(file);

      test('$locale uses {price} and quotes no literal amount', () {
        // The 21 translations carry a UTF-8 BOM; app_en.arb does not.
        var raw = file.readAsStringSync(encoding: utf8);
        if (raw.startsWith('﻿')) raw = raw.substring(1);
        final doc = jsonDecode(raw) as Map<String, dynamic>;

        for (final key in _priceKeys) {
          expect(doc.containsKey(key), isTrue,
              reason: '$locale is missing $key');
          final value = doc[key] as String;

          expect(value, contains('{price}'),
              reason: '$locale/$key dropped the {price} placeholder, so the '
                  'price will not appear at all');
          expect(_literalPrice.hasMatch(value), isFalse,
              reason: '$locale/$key hardcodes an amount: "$value" — use '
                  '{price} so Play Billing supplies the local currency');
        }
      });
    }
  });

  group('generated delegate', () {
    for (final file in _arbFiles()) {
      final locale = _localeOf(file);

      test('$locale substitutes the price at runtime', () async {
        final l10n = await AppLocalizations.delegate.load(Locale(locale));

        final rendered = <String, String>{
          'scannerFreeTierBanner': l10n.scannerFreeTierBanner(_sample),
          'settingsEnableGeneratorsSubtitle':
              l10n.settingsEnableGeneratorsSubtitle(_sample),
          'unlockDescription': l10n.unlockDescription(_sample),
          'unlockEnableButton': l10n.unlockEnableButton(_sample),
          'unlockDialogContent': l10n.unlockDialogContent(_sample),
          'purchaseButton': l10n.purchaseButton(_sample),
        };

        rendered.forEach((key, value) {
          expect(value, contains(_sample),
              reason: '$locale/$key did not substitute the price');
          expect(value, isNot(contains('{price}')),
              reason: '$locale/$key left the placeholder unsubstituted');
        });
      });
    }
  });
}
