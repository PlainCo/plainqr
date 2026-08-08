import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:qrscan/l10n/generated/app_localizations.dart';
import 'package:qrscan/widgets/shareable_card.dart';

/// The preview being squeezed is cosmetic. The export being squeezed is not --
/// that PNG is what the user sends to someone else, and a clipped card travels
/// with it.
///
/// The capture boundary must therefore lay out at the card's 600px design
/// width regardless of how little room the dialog has, and toImage(3.0) must
/// produce 1800px across.
void main() {
  Future<ui.Image> captureAt(WidgetTester tester, Size logicalSize) async {
    tester.view.physicalSize = logicalSize;
    tester.view.devicePixelRatio = 1.0;
    addTearDown(tester.view.reset);

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

    final boundary = tester.renderObject<RenderRepaintBoundary>(
      find
          .descendant(
            of: find.byType(CardCaptureWrapper),
            matching: find.byType(RepaintBoundary),
          )
          .first,
    );
    return boundary.toImage(pixelRatio: 3.0);
  }

  testWidgets('export is full size on a roomy screen', (tester) async {
    final image = await captureAt(tester, const Size(1200, 2000));
    addTearDown(image.dispose);
    expect(image.width, 1800, reason: '600px design width at 3x');
  });

  testWidgets('export stays full size on a cramped screen', (tester) async {
    // This is the case that matters: max display size leaves the dialog far
    // less than 600px, and before the FittedBox the boundary was squeezed
    // along with it -- so the shared PNG was clipped, not just the preview.
    final image = await captureAt(tester, const Size(240, 480));
    addTearDown(image.dispose);
    expect(image.width, 1800, reason: 'export must not shrink with the screen');
  });
}
