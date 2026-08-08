import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:qrscan/utils/data_type.dart';
import 'package:qrscan/l10n/generated/app_localizations.dart';
import 'package:qrscan/widgets/scan_actions.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
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

  group('ScanActions — URL', () {
    testWidgets('renders URL action buttons', (tester) async {
      await tester.binding.setSurfaceSize(const Size(400, 800));

      final scan = DetectedScan(
        type: DataType.url,
        value: 'https://example.com',
      );

      await tester.pumpWidget(MaterialApp(
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        home: Scaffold(body: ScanActions(result: scan)),
      ));
      await tester.pumpAndSettle();

      expect(find.byKey(const ValueKey('action_Open')), findsOneWidget);
      expect(find.byKey(const ValueKey('action_Copy')), findsOneWidget);
      expect(find.byKey(const ValueKey('action_Generate')), findsOneWidget);
      expect(find.byKey(const ValueKey('action_Share')), findsOneWidget);
    });

    testWidgets('Copy button copies to clipboard', (tester) async {
      await tester.binding.setSurfaceSize(const Size(400, 800));

      final scan = DetectedScan(
        type: DataType.url,
        value: 'https://example.com',
      );

      await tester.pumpWidget(MaterialApp(
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        home: Scaffold(body: ScanActions(result: scan)),
      ));
      await tester.pumpAndSettle();

      await tester.tap(find.byKey(const ValueKey('action_Copy')));
      await tester.pumpAndSettle();

      expect(find.byType(SnackBar), findsOneWidget);
      expect(find.text('Copied to clipboard'), findsOneWidget);
    });
  });

  group('ScanActions — WiFi', () {
    testWidgets('renders WiFi action buttons', (tester) async {
      await tester.binding.setSurfaceSize(const Size(400, 800));

      final scan = DetectedScan(
        type: DataType.wifi,
        value: 'WIFI:S:MyNet;T:WPA;P:secret;;',
        fields: {
          'ssid': 'MyNet',
          'password': 'secret',
          'encryption': 'WPA',
        },
      );

      await tester.pumpWidget(MaterialApp(
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        home: Scaffold(body: ScanActions(result: scan)),
      ));
      await tester.pumpAndSettle();

      expect(find.byKey(const ValueKey('action_Connect')), findsOneWidget);
      expect(find.byKey(const ValueKey('action_Copy SSID')), findsOneWidget);
      expect(find.byKey(const ValueKey('action_Copy Password')), findsOneWidget);
      expect(find.byKey(const ValueKey('action_Generate')), findsOneWidget);
    });
  });

  group('ScanActions — Calendar', () {
    testWidgets('renders calendar action buttons', (tester) async {
      await tester.binding.setSurfaceSize(const Size(400, 800));

      final scan = DetectedScan(
        type: DataType.calendar,
        value: 'BEGIN:VEVENT\nSUMMARY:Meeting\nEND:VEVENT',
        fields: {
          'summary': 'Meeting',
          'dtstart': '20260101T120000Z',
          'dtend': '20260101T130000Z',
        },
      );

      await tester.pumpWidget(MaterialApp(
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        home: Scaffold(body: ScanActions(result: scan)),
      ));
      await tester.pumpAndSettle();

      expect(find.byKey(const ValueKey('action_Add to Calendar')), findsOneWidget);
      expect(find.byKey(const ValueKey('action_Copy')), findsOneWidget);
      expect(find.byKey(const ValueKey('action_Generate')), findsOneWidget);
      expect(find.byKey(const ValueKey('action_Share')), findsOneWidget);
    });
  });
}
