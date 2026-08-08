import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:qrscan/l10n/generated/app_localizations.dart';
import 'package:qrscan/widgets/shareable_card.dart';

/// Android's "Display size" setting changes density, not text scale, so the
/// screen reports fewer logical pixels. The card is authored at a fixed 600px
/// for PNG export, so at large display sizes the dialog has far less width
/// than the card wants and everything inside it overflows.
///
/// These sizes stand in for that: 320x600 is roughly a small phone at maximum
/// display size, 240x480 is deliberately worse than anything real.
void main() {
  Future<List<String>> overflowsAt(WidgetTester tester, Size logicalSize) async {
    tester.view.physicalSize = logicalSize;
    tester.view.devicePixelRatio = 1.0;
    addTearDown(tester.view.reset);

    final errors = <FlutterErrorDetails>[];
    final previous = FlutterError.onError;
    FlutterError.onError = errors.add;

    await tester.pumpWidget(
      MaterialApp(
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        home: Builder(
          builder: (context) => ElevatedButton(
            onPressed: () => showCardDialog(
              context,
              cardData: const CardData(
                headline: 'https://example.com',
                rawQrContent: 'https://example.com',
                typeIcon: Icons.link,
              ),
              actionLabel: 'Share',
              actionIcon: Icons.share,
              onAction: (_, __) async {},
            ),
            child: const Text('open'),
          ),
        ),
      ),
    );

    await tester.tap(find.text('open'));
    await tester.pumpAndSettle();

    FlutterError.onError = previous;

    return errors
        .where((e) => e.exception.toString().contains('overflowed'))
        .map((e) => e.exception.toString().split('\n').first)
        .toList();
  }

  testWidgets('card dialog does not overflow at large display size', (tester) async {
    final overflows = await overflowsAt(tester, const Size(320, 600));
    expect(overflows, isEmpty, reason: 'overflow at 320x600: $overflows');
  });

  testWidgets('card dialog does not overflow on a very cramped screen', (tester) async {
    final overflows = await overflowsAt(tester, const Size(240, 480));
    expect(overflows, isEmpty, reason: 'overflow at 240x480: $overflows');
  });
}
