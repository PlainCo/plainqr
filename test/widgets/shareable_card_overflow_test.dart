import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:qrscan/l10n/generated/app_localizations.dart';
import 'package:qrscan/widgets/shareable_card.dart';

/// The card's CTA banner lays its icon and title out in a Row with no
/// Flexible, at a fixed 600px card width. English fits comfortably; longer
/// translations are the risk, and an overflow there ships in an exported PNG
/// where nobody sees a debug stripe until a user does.
void main() {
  final locales = AppLocalizations.supportedLocales;

  for (final locale in locales) {
    testWidgets('branded card CTA banner does not overflow in ${locale.languageCode}',
        (tester) async {
      final errors = <FlutterErrorDetails>[];
      final previous = FlutterError.onError;
      FlutterError.onError = errors.add;

      await tester.pumpWidget(
        MaterialApp(
          locale: locale,
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          supportedLocales: locales,
          home: Scaffold(
            body: SingleChildScrollView(
              child: ShareableCard(
                data: CardData(
                  headline: 'https://example.com',
                  rawQrContent: 'https://example.com',
                  typeIcon: Icons.link,
                ),
              ),
            ),
          ),
        ),
      );
      await tester.pumpAndSettle();

      FlutterError.onError = previous;

      final overflows = errors
          .where((e) => e.exception.toString().contains('overflowed'))
          .map((e) => e.exception.toString().split('\n').first)
          .toList();

      expect(
        overflows,
        isEmpty,
        reason: 'CTA banner overflows in ${locale.languageCode}: $overflows',
      );
    });
  }
}
