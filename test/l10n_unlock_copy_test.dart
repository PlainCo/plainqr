// Guards what the app claims the unlock actually buys.
//
// Until August 2026 the purchase dialog said, in all 22 languages, that the
// unlock covers "all QR code generation features ... and all other generator
// types". Six of the nine generators are free (generator_screen.dart:80-89),
// so the dialog sold the user six things they already had. Every isUnlocked
// reference in the codebase gates exactly two things: the three paid types,
// and the free-tier banner.
//
// A vague claim is the failure mode -- "all features", "everything",
// "premium" -- because it reads fine and is wrong. The defence is to require
// the copy to name the three paid types explicitly, in the same words the
// generator list uses. Naming them makes an over-broad claim impossible to
// write without also being obviously inconsistent.

import 'dart:convert';
import 'dart:io';

import 'package:flutter_test/flutter_test.dart';

/// The strings that describe what the purchase includes.
const _claimKeys = <String>[
  'settingsEnableGeneratorsSubtitle',
  'unlockDialogContent',
];

/// The keys holding each locale's word for the three paid types. These are
/// what the generator list renders, so the sales copy must match them.
const _paidTypeKeys = <String>['typeWifi', 'typeVcard', 'typeCalendar'];

List<File> _arbFiles() => Directory('lib/l10n')
    .listSync()
    .whereType<File>()
    .where((f) => f.path.endsWith('.arb'))
    .toList()
  ..sort((a, b) => a.path.compareTo(b.path));

String _localeOf(File f) =>
    f.uri.pathSegments.last.replaceAll('app_', '').replaceAll('.arb', '');

Map<String, dynamic> _load(File f) {
  var raw = f.readAsStringSync(encoding: utf8);
  if (raw.startsWith('﻿')) raw = raw.substring(1); // translations carry a BOM
  return jsonDecode(raw) as Map<String, dynamic>;
}

void main() {
  for (final file in _arbFiles()) {
    final locale = _localeOf(file);

    test('$locale names the three paid generators in its unlock copy', () {
      final doc = _load(file);

      final paidTerms = <String, String>{
        for (final key in _paidTypeKeys) key: doc[key] as String,
      };

      for (final claimKey in _claimKeys) {
        final claim = doc[claimKey] as String;

        paidTerms.forEach((typeKey, term) {
          expect(claim, contains(term),
              reason: '$locale/$claimKey does not name $typeKey ("$term").\n'
                  'Copy describing the purchase must list the three types it '
                  'unlocks — WiFi, vCard and Calendar — rather than claiming '
                  'it covers generation as a whole. Six of the nine '
                  'generators are free.');
        });
      }
    });
  }

  test('the paid type list still matches the generator screen', () {
    // If a fourth type ever becomes paid, or one of these becomes free, the
    // copy above is wrong again and this test is the reminder.
    final source = File('lib/screens/generator_screen.dart').readAsStringSync();
    final paid = RegExp(r"_GenType\(key: '([^']+)'[^)]*paid: true")
        .allMatches(source)
        .map((m) => m.group(1))
        .toList();

    expect(paid, ['WiFi', 'vCard', 'Calendar'],
        reason: 'The set of paid generators changed. Update the unlock copy '
            'in all 22 .arb files, then update this test.');
  });
}
