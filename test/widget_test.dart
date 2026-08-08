import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:qrscan/utils/data_type.dart';
import 'package:qrscan/utils/scan_history.dart';
import 'package:qrscan/l10n/generated/app_localizations.dart';
import 'package:qrscan/screens/history_screen.dart';

void main() {
  setUp(() {
    TestWidgetsFlutterBinding.ensureInitialized();
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger
        .setMockMethodCallHandler(
      const MethodChannel('plugins.flutter.io/path_provider'),
      (MethodCall methodCall) async {
        if (methodCall.method == 'getApplicationDocumentsDirectory') {
          return '/tmp/test_docs';
        }
        return null;
      },
    );
  });

  tearDown(() {
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger
        .setMockMethodCallHandler(
      const MethodChannel('plugins.flutter.io/path_provider'),
      null,
    );
  });

  group('ScanHistory — HistoryScreen', () {
    testWidgets('shows empty state when no entries', (tester) async {
      await tester.binding.setSurfaceSize(const Size(400, 800));

      final history = ScanHistory();

      await tester.pumpWidget(MaterialApp(
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        home: HistoryScreen(history: history),
      ));
      await tester.pumpAndSettle();

      expect(find.text('No scans yet'), findsOneWidget);
      expect(find.byIcon(Icons.history), findsOneWidget);
    });

    testWidgets('displays entry after adding', (tester) async {
      await tester.binding.setSurfaceSize(const Size(400, 800));

      final history = ScanHistory();
      await history.add(ScanEntry(
        id: '1',
        timestamp: DateTime.now(),
        type: DataType.url,
        value: 'https://example.com',
        displayValue: 'https://example.com',
      ));
      // Flush the 500ms debounce timer from ScanHistory._save
      await tester.pump(const Duration(milliseconds: 600));

      await tester.pumpWidget(MaterialApp(
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        home: HistoryScreen(history: history),
      ));
      await tester.pumpAndSettle();

      expect(find.text('https://example.com'), findsOneWidget);
      expect(find.textContaining('URL'), findsOneWidget);
      expect(find.byIcon(Icons.link), findsOneWidget);
    });

    testWidgets('delete entry removes it from list', (tester) async {
      await tester.binding.setSurfaceSize(const Size(400, 800));

      final history = ScanHistory();
      await history.add(ScanEntry(
        id: '1',
        timestamp: DateTime.now(),
        type: DataType.url,
        value: 'https://example.com',
        displayValue: 'https://example.com',
      ));
      await tester.pump(const Duration(milliseconds: 600));

      await tester.pumpWidget(MaterialApp(
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        home: HistoryScreen(history: history),
      ));
      await tester.pumpAndSettle();

      expect(find.text('https://example.com'), findsOneWidget);

      await tester.tap(find.byIcon(Icons.close));
      await tester.pumpAndSettle();

      // Advance past the 500ms debounce timer in ScanHistory._save
      await tester.pump(const Duration(milliseconds: 600));

      expect(find.text('https://example.com'), findsNothing);
      expect(find.text('No scans yet'), findsOneWidget);
    });

    testWidgets('clear all removes all entries', (tester) async {
      await tester.binding.setSurfaceSize(const Size(400, 800));

      final history = ScanHistory();
      await history.add(ScanEntry(
        id: '1',
        timestamp: DateTime(2025, 1, 1),
        type: DataType.url,
        value: 'https://one.com',
        displayValue: 'https://one.com',
      ));
      await history.add(ScanEntry(
        id: '2',
        timestamp: DateTime(2025, 1, 2),
        type: DataType.plainText,
        value: 'Hello',
        displayValue: 'Hello',
      ));
      await tester.pump(const Duration(milliseconds: 600));

      await tester.pumpWidget(MaterialApp(
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        home: HistoryScreen(history: history),
      ));
      await tester.pumpAndSettle();

      expect(find.text('https://one.com'), findsOneWidget);
      expect(find.text('Hello'), findsOneWidget);

      // Tap clear-all button
      await tester.tap(find.byIcon(Icons.delete_sweep));
      await tester.pumpAndSettle();

      // Confirm dialog should appear
      expect(find.text('Clear Scan History?'), findsOneWidget);
      expect(find.text('Cancel'), findsOneWidget);
      expect(find.text('Clear'), findsOneWidget);

      // Tap Clear to confirm
      await tester.tap(find.text('Clear'));
      await tester.pumpAndSettle();

      // Advance past the 500ms debounce timer in ScanHistory._save
      await tester.pump(const Duration(milliseconds: 600));

      expect(find.text('No scans yet'), findsOneWidget);
    });
  });
}
