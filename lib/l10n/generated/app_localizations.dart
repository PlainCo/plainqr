import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_ar.dart';
import 'app_localizations_bn.dart';
import 'app_localizations_de.dart';
import 'app_localizations_en.dart';
import 'app_localizations_es.dart';
import 'app_localizations_fa.dart';
import 'app_localizations_fr.dart';
import 'app_localizations_hi.dart';
import 'app_localizations_id.dart';
import 'app_localizations_it.dart';
import 'app_localizations_ja.dart';
import 'app_localizations_ko.dart';
import 'app_localizations_nl.dart';
import 'app_localizations_pl.dart';
import 'app_localizations_pt.dart';
import 'app_localizations_ro.dart';
import 'app_localizations_ru.dart';
import 'app_localizations_th.dart';
import 'app_localizations_tr.dart';
import 'app_localizations_ur.dart';
import 'app_localizations_vi.dart';
import 'app_localizations_zh.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'generated/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
    : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations)!;
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
        delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('ar'),
    Locale('bn'),
    Locale('de'),
    Locale('en'),
    Locale('es'),
    Locale('fa'),
    Locale('fr'),
    Locale('hi'),
    Locale('id'),
    Locale('it'),
    Locale('ja'),
    Locale('ko'),
    Locale('nl'),
    Locale('pl'),
    Locale('pt'),
    Locale('ro'),
    Locale('ru'),
    Locale('th'),
    Locale('tr'),
    Locale('ur'),
    Locale('vi'),
    Locale('zh'),
  ];

  /// App bar and drawer title
  ///
  /// In en, this message translates to:
  /// **'PlainQR'**
  String get appName;

  /// Full app name for licenses page
  ///
  /// In en, this message translates to:
  /// **'PlainQR — Scan & Generate'**
  String get appNameFull;

  /// No description provided for @drawerScan.
  ///
  /// In en, this message translates to:
  /// **'Scan'**
  String get drawerScan;

  /// No description provided for @drawerScanFromGallery.
  ///
  /// In en, this message translates to:
  /// **'Scan from Gallery'**
  String get drawerScanFromGallery;

  /// No description provided for @drawerGenerator.
  ///
  /// In en, this message translates to:
  /// **'Generator'**
  String get drawerGenerator;

  /// No description provided for @drawerHistory.
  ///
  /// In en, this message translates to:
  /// **'History'**
  String get drawerHistory;

  /// No description provided for @drawerSettings.
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get drawerSettings;

  /// No description provided for @scannerUnlockSnack.
  ///
  /// In en, this message translates to:
  /// **'Generators unlocked!'**
  String get scannerUnlockSnack;

  /// No description provided for @scannerUnlockAnnounce.
  ///
  /// In en, this message translates to:
  /// **'Generators unlocked'**
  String get scannerUnlockAnnounce;

  /// No description provided for @scannerFreeTierBanner.
  ///
  /// In en, this message translates to:
  /// **'Free tier — {price} to remove'**
  String scannerFreeTierBanner(Object price);

  /// No description provided for @scannerDetectedAnnounce.
  ///
  /// In en, this message translates to:
  /// **'Detected {type}: {brief}'**
  String scannerDetectedAnnounce(Object type, Object brief);

  /// No description provided for @scannerSavedToHistory.
  ///
  /// In en, this message translates to:
  /// **'Saved to history'**
  String get scannerSavedToHistory;

  /// No description provided for @scannerTooltipDisableFlashlight.
  ///
  /// In en, this message translates to:
  /// **'Disable flashlight'**
  String get scannerTooltipDisableFlashlight;

  /// No description provided for @scannerTooltipEnableFlashlight.
  ///
  /// In en, this message translates to:
  /// **'Enable flashlight'**
  String get scannerTooltipEnableFlashlight;

  /// No description provided for @scannerTooltipGallery.
  ///
  /// In en, this message translates to:
  /// **'Scan from gallery'**
  String get scannerTooltipGallery;

  /// No description provided for @scannerZoomIn.
  ///
  /// In en, this message translates to:
  /// **'Zoom in'**
  String get scannerZoomIn;

  /// No description provided for @scannerZoomOut.
  ///
  /// In en, this message translates to:
  /// **'Zoom out'**
  String get scannerZoomOut;

  /// No description provided for @scannerZoomLevel.
  ///
  /// In en, this message translates to:
  /// **'{level}x'**
  String scannerZoomLevel(Object level);

  /// No description provided for @generatorAppBarTitle.
  ///
  /// In en, this message translates to:
  /// **'Generator'**
  String get generatorAppBarTitle;

  /// No description provided for @generatorFormAppBarTitle.
  ///
  /// In en, this message translates to:
  /// **'{typeName} QR'**
  String generatorFormAppBarTitle(Object typeName);

  /// No description provided for @generatorCardLabel.
  ///
  /// In en, this message translates to:
  /// **'Card label (optional)'**
  String get generatorCardLabel;

  /// No description provided for @generatorCardLabelHint.
  ///
  /// In en, this message translates to:
  /// **'e.g. Guest WiFi, My Website'**
  String get generatorCardLabelHint;

  /// No description provided for @generatorPreview.
  ///
  /// In en, this message translates to:
  /// **'Preview'**
  String get generatorPreview;

  /// No description provided for @generatorStyle.
  ///
  /// In en, this message translates to:
  /// **'Style:'**
  String get generatorStyle;

  /// No description provided for @generatorStyleLight.
  ///
  /// In en, this message translates to:
  /// **'Light'**
  String get generatorStyleLight;

  /// No description provided for @generatorStyleDark.
  ///
  /// In en, this message translates to:
  /// **'Dark'**
  String get generatorStyleDark;

  /// No description provided for @generatorStyleSticker.
  ///
  /// In en, this message translates to:
  /// **'Sticker'**
  String get generatorStyleSticker;

  /// No description provided for @generatorShareCard.
  ///
  /// In en, this message translates to:
  /// **'Share Card'**
  String get generatorShareCard;

  /// No description provided for @generatorSaveToDevice.
  ///
  /// In en, this message translates to:
  /// **'Save to Device'**
  String get generatorSaveToDevice;

  /// No description provided for @generatorCopiedSnack.
  ///
  /// In en, this message translates to:
  /// **'Copied QR content'**
  String get generatorCopiedSnack;

  /// No description provided for @generatorCopyQrContent.
  ///
  /// In en, this message translates to:
  /// **'Copy QR Content'**
  String get generatorCopyQrContent;

  /// No description provided for @typeUrl.
  ///
  /// In en, this message translates to:
  /// **'URL'**
  String get typeUrl;

  /// No description provided for @typeUrlDescription.
  ///
  /// In en, this message translates to:
  /// **'Link to a website or online content'**
  String get typeUrlDescription;

  /// No description provided for @typeUrlHeadline.
  ///
  /// In en, this message translates to:
  /// **'Scan to visit'**
  String get typeUrlHeadline;

  /// No description provided for @typePlainText.
  ///
  /// In en, this message translates to:
  /// **'Plain text'**
  String get typePlainText;

  /// No description provided for @typePlainTextDescription.
  ///
  /// In en, this message translates to:
  /// **'Free-form text or message'**
  String get typePlainTextDescription;

  /// No description provided for @typePlainTextHeadline.
  ///
  /// In en, this message translates to:
  /// **'Scan to read'**
  String get typePlainTextHeadline;

  /// No description provided for @typeWifi.
  ///
  /// In en, this message translates to:
  /// **'WiFi'**
  String get typeWifi;

  /// No description provided for @typeWifiDescription.
  ///
  /// In en, this message translates to:
  /// **'Share your network credentials'**
  String get typeWifiDescription;

  /// No description provided for @typeWifiHeadline.
  ///
  /// In en, this message translates to:
  /// **'Scan to join WiFi'**
  String get typeWifiHeadline;

  /// No description provided for @typeVcard.
  ///
  /// In en, this message translates to:
  /// **'vCard'**
  String get typeVcard;

  /// No description provided for @typeVcardDescription.
  ///
  /// In en, this message translates to:
  /// **'Share contact details'**
  String get typeVcardDescription;

  /// No description provided for @typeVcardHeadline.
  ///
  /// In en, this message translates to:
  /// **'Scan to save contact'**
  String get typeVcardHeadline;

  /// No description provided for @typeCalendar.
  ///
  /// In en, this message translates to:
  /// **'Calendar'**
  String get typeCalendar;

  /// No description provided for @typeCalendarDescription.
  ///
  /// In en, this message translates to:
  /// **'Add an event to any calendar'**
  String get typeCalendarDescription;

  /// No description provided for @typeCalendarHeadline.
  ///
  /// In en, this message translates to:
  /// **'Scan to add to calendar'**
  String get typeCalendarHeadline;

  /// No description provided for @typePhone.
  ///
  /// In en, this message translates to:
  /// **'Phone'**
  String get typePhone;

  /// No description provided for @typePhoneDescription.
  ///
  /// In en, this message translates to:
  /// **'A phone number to call'**
  String get typePhoneDescription;

  /// No description provided for @typePhoneHeadline.
  ///
  /// In en, this message translates to:
  /// **'Scan to call'**
  String get typePhoneHeadline;

  /// No description provided for @typeEmail.
  ///
  /// In en, this message translates to:
  /// **'Email'**
  String get typeEmail;

  /// No description provided for @typeEmailDescription.
  ///
  /// In en, this message translates to:
  /// **'Compose an email'**
  String get typeEmailDescription;

  /// No description provided for @typeEmailHeadline.
  ///
  /// In en, this message translates to:
  /// **'Scan to email'**
  String get typeEmailHeadline;

  /// No description provided for @typeSms.
  ///
  /// In en, this message translates to:
  /// **'SMS'**
  String get typeSms;

  /// No description provided for @typeSmsDescription.
  ///
  /// In en, this message translates to:
  /// **'Send a text message'**
  String get typeSmsDescription;

  /// No description provided for @typeSmsHeadline.
  ///
  /// In en, this message translates to:
  /// **'Scan to text'**
  String get typeSmsHeadline;

  /// No description provided for @typeLocation.
  ///
  /// In en, this message translates to:
  /// **'Location'**
  String get typeLocation;

  /// No description provided for @typeLocationDescription.
  ///
  /// In en, this message translates to:
  /// **'A physical address or coordinates'**
  String get typeLocationDescription;

  /// No description provided for @typeLocationHeadline.
  ///
  /// In en, this message translates to:
  /// **'Scan for directions'**
  String get typeLocationHeadline;

  /// No description provided for @historyAppBarTitle.
  ///
  /// In en, this message translates to:
  /// **'Scan History'**
  String get historyAppBarTitle;

  /// No description provided for @historyClearAllTooltip.
  ///
  /// In en, this message translates to:
  /// **'Clear all'**
  String get historyClearAllTooltip;

  /// No description provided for @historyEmpty.
  ///
  /// In en, this message translates to:
  /// **'No scans yet'**
  String get historyEmpty;

  /// No description provided for @historyJustNow.
  ///
  /// In en, this message translates to:
  /// **'Just now'**
  String get historyJustNow;

  /// No description provided for @historyMinutesAgo.
  ///
  /// In en, this message translates to:
  /// **'{count}m ago'**
  String historyMinutesAgo(Object count);

  /// No description provided for @historyHoursAgo.
  ///
  /// In en, this message translates to:
  /// **'{count}h ago'**
  String historyHoursAgo(Object count);

  /// No description provided for @historyDeletedSnack.
  ///
  /// In en, this message translates to:
  /// **'Deleted {label}'**
  String historyDeletedSnack(Object label);

  /// No description provided for @historyUndoButton.
  ///
  /// In en, this message translates to:
  /// **'Undo'**
  String get historyUndoButton;

  /// No description provided for @historyClearDialogTitle.
  ///
  /// In en, this message translates to:
  /// **'Clear Scan History?'**
  String get historyClearDialogTitle;

  /// No description provided for @historyClearDialogContent.
  ///
  /// In en, this message translates to:
  /// **'This action cannot be undone.'**
  String get historyClearDialogContent;

  /// No description provided for @historyClearButton.
  ///
  /// In en, this message translates to:
  /// **'Clear'**
  String get historyClearButton;

  /// No description provided for @historySourceGallery.
  ///
  /// In en, this message translates to:
  /// **'Gallery'**
  String get historySourceGallery;

  /// No description provided for @historySourceCamera.
  ///
  /// In en, this message translates to:
  /// **'Camera'**
  String get historySourceCamera;

  /// Snackbar shown when gallery scan finds nothing
  ///
  /// In en, this message translates to:
  /// **'No QR code found in image'**
  String get galleryNoQrFound;

  /// Title of the crop dialog before gallery scan
  ///
  /// In en, this message translates to:
  /// **'Frame the QR code'**
  String get galleryCropTitle;

  /// Button in the crop dialog that scans the framed region
  ///
  /// In en, this message translates to:
  /// **'Scan'**
  String get galleryCropScan;

  /// Title of the post-scan rate dialog
  ///
  /// In en, this message translates to:
  /// **'Enjoying PlainQR?'**
  String get ratePromptTitle;

  /// Body of the post-scan rate dialog
  ///
  /// In en, this message translates to:
  /// **'Your review helps others find a private QR scanner.'**
  String get ratePromptBody;

  /// Button that opens the Play Store rating page
  ///
  /// In en, this message translates to:
  /// **'Rate Us'**
  String get ratePromptRate;

  /// Button that opens the in-app feedback form
  ///
  /// In en, this message translates to:
  /// **'Feedback'**
  String get ratePromptFeedback;

  /// Title of the Quick Settings tile prompt dialog
  ///
  /// In en, this message translates to:
  /// **'Scan from anywhere'**
  String get tilePromptTitle;

  /// Body of the Quick Settings tile prompt dialog
  ///
  /// In en, this message translates to:
  /// **'Add a PlainQR tile to your Quick Settings.\nSwipe down, tap, scan — no need to open the app.'**
  String get tilePromptBody;

  /// Button that requests adding a tile to Quick Settings
  ///
  /// In en, this message translates to:
  /// **'Add Tile'**
  String get tilePromptAdd;

  /// No description provided for @settingsAppBarTitle.
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get settingsAppBarTitle;

  /// No description provided for @settingsSectionScanning.
  ///
  /// In en, this message translates to:
  /// **'Scanning'**
  String get settingsSectionScanning;

  /// No description provided for @settingsSaveHistory.
  ///
  /// In en, this message translates to:
  /// **'Save Scan History'**
  String get settingsSaveHistory;

  /// No description provided for @settingsSaveHistoryOn.
  ///
  /// In en, this message translates to:
  /// **'Camera scans saved automatically'**
  String get settingsSaveHistoryOn;

  /// No description provided for @settingsSaveHistoryOff.
  ///
  /// In en, this message translates to:
  /// **'Save manually from result card'**
  String get settingsSaveHistoryOff;

  /// No description provided for @settingsAutoOpen.
  ///
  /// In en, this message translates to:
  /// **'Auto-open Dangerous Types'**
  String get settingsAutoOpen;

  /// No description provided for @settingsAutoOpenOn.
  ///
  /// In en, this message translates to:
  /// **'Skip confirmation for URLs, calls, SMS, and emails'**
  String get settingsAutoOpenOn;

  /// No description provided for @settingsAutoOpenOff.
  ///
  /// In en, this message translates to:
  /// **'Ask before opening URLs, making calls, sending SMS, or composing emails'**
  String get settingsAutoOpenOff;

  /// No description provided for @settingsAutoFlashlight.
  ///
  /// In en, this message translates to:
  /// **'Auto-Flashlight on Scan'**
  String get settingsAutoFlashlight;

  /// No description provided for @settingsAutoFlashlightOn.
  ///
  /// In en, this message translates to:
  /// **'Flashlight turns on when scan screen opens'**
  String get settingsAutoFlashlightOn;

  /// No description provided for @settingsAutoFlashlightOff.
  ///
  /// In en, this message translates to:
  /// **'Flashlight controlled manually'**
  String get settingsAutoFlashlightOff;

  /// No description provided for @settingsEnableGenerators.
  ///
  /// In en, this message translates to:
  /// **'Enable Generators'**
  String get settingsEnableGenerators;

  /// No description provided for @settingsEnableGeneratorsSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Unlock the WiFi, vCard and Calendar generators for {price}'**
  String settingsEnableGeneratorsSubtitle(Object price);

  /// No description provided for @settingsPremiumUnlocked.
  ///
  /// In en, this message translates to:
  /// **'Premium Unlocked'**
  String get settingsPremiumUnlocked;

  /// No description provided for @settingsPremiumUnlockedSubtitle.
  ///
  /// In en, this message translates to:
  /// **'All generator features are enabled'**
  String get settingsPremiumUnlockedSubtitle;

  /// No description provided for @settingsSectionAppearance.
  ///
  /// In en, this message translates to:
  /// **'Appearance'**
  String get settingsSectionAppearance;

  /// No description provided for @settingsThemeSystem.
  ///
  /// In en, this message translates to:
  /// **'System'**
  String get settingsThemeSystem;

  /// No description provided for @settingsThemeLight.
  ///
  /// In en, this message translates to:
  /// **'Light'**
  String get settingsThemeLight;

  /// No description provided for @settingsThemeDark.
  ///
  /// In en, this message translates to:
  /// **'Dark'**
  String get settingsThemeDark;

  /// No description provided for @settingsSectionLegal.
  ///
  /// In en, this message translates to:
  /// **'Legal'**
  String get settingsSectionLegal;

  /// No description provided for @settingsOpenSourceLicences.
  ///
  /// In en, this message translates to:
  /// **'Open Source Licences'**
  String get settingsOpenSourceLicences;

  /// No description provided for @changelog04Item1.
  ///
  /// In en, this message translates to:
  /// **'22 languages — PlainQR now speaks your language. Pick yours in system settings.'**
  String get changelog04Item1;

  /// No description provided for @changelog04Item2.
  ///
  /// In en, this message translates to:
  /// **'System theme — light, dark, or follow your device automatically.'**
  String get changelog04Item2;

  /// No description provided for @changelog04Item3.
  ///
  /// In en, this message translates to:
  /// **'Rate Us — tap the star in the menu to leave a review on the Play Store.'**
  String get changelog04Item3;

  /// No description provided for @changelog04Item4.
  ///
  /// In en, this message translates to:
  /// **'What’s New — you’re reading it.'**
  String get changelog04Item4;

  /// No description provided for @changelog04Item5.
  ///
  /// In en, this message translates to:
  /// **'View feedback on GitHub — tap any submission to see the issue status.'**
  String get changelog04Item5;

  /// No description provided for @unlockAppBarTitle.
  ///
  /// In en, this message translates to:
  /// **'Enable Generators'**
  String get unlockAppBarTitle;

  /// No description provided for @unlockTitle.
  ///
  /// In en, this message translates to:
  /// **'Enable WiFi, Contact\n& Calendar generators'**
  String get unlockTitle;

  /// No description provided for @unlockDescription.
  ///
  /// In en, this message translates to:
  /// **'Generate QR codes for WiFi networks, contact cards,\nand calendar events.\n{price} once. No subscription.'**
  String unlockDescription(Object price);

  /// No description provided for @unlockEnableButton.
  ///
  /// In en, this message translates to:
  /// **'Enable — {price}'**
  String unlockEnableButton(Object price);

  /// No description provided for @unlockRestoreButton.
  ///
  /// In en, this message translates to:
  /// **'Restore previous purchase'**
  String get unlockRestoreButton;

  /// No description provided for @unlockDialogTitle.
  ///
  /// In en, this message translates to:
  /// **'Unlock Generators'**
  String get unlockDialogTitle;

  /// No description provided for @unlockDialogContent.
  ///
  /// In en, this message translates to:
  /// **'Unlock the WiFi, vCard and Calendar generators with a one-time {price} purchase. The other six generator types are always free.'**
  String unlockDialogContent(Object price);

  /// No description provided for @actionOpen.
  ///
  /// In en, this message translates to:
  /// **'Open'**
  String get actionOpen;

  /// No description provided for @actionCopy.
  ///
  /// In en, this message translates to:
  /// **'Copy'**
  String get actionCopy;

  /// No description provided for @actionGenerate.
  ///
  /// In en, this message translates to:
  /// **'Generate'**
  String get actionGenerate;

  /// No description provided for @actionShare.
  ///
  /// In en, this message translates to:
  /// **'Share'**
  String get actionShare;

  /// No description provided for @actionEmail.
  ///
  /// In en, this message translates to:
  /// **'Email'**
  String get actionEmail;

  /// No description provided for @actionCall.
  ///
  /// In en, this message translates to:
  /// **'Call'**
  String get actionCall;

  /// No description provided for @actionSendSms.
  ///
  /// In en, this message translates to:
  /// **'Send SMS'**
  String get actionSendSms;

  /// No description provided for @actionConnect.
  ///
  /// In en, this message translates to:
  /// **'Connect'**
  String get actionConnect;

  /// No description provided for @actionCopySsid.
  ///
  /// In en, this message translates to:
  /// **'Copy SSID'**
  String get actionCopySsid;

  /// No description provided for @actionCopyPassword.
  ///
  /// In en, this message translates to:
  /// **'Copy Password'**
  String get actionCopyPassword;

  /// No description provided for @actionOpenMaps.
  ///
  /// In en, this message translates to:
  /// **'Open Maps'**
  String get actionOpenMaps;

  /// No description provided for @actionOpenInWhatsApp.
  ///
  /// In en, this message translates to:
  /// **'Open in WhatsApp'**
  String get actionOpenInWhatsApp;

  /// No description provided for @actionOpenInTelegram.
  ///
  /// In en, this message translates to:
  /// **'Open in Telegram'**
  String get actionOpenInTelegram;

  /// No description provided for @actionOpenInSignal.
  ///
  /// In en, this message translates to:
  /// **'Open in Signal'**
  String get actionOpenInSignal;

  /// No description provided for @actionOpenInTwitter.
  ///
  /// In en, this message translates to:
  /// **'Open in Twitter'**
  String get actionOpenInTwitter;

  /// No description provided for @actionFaceTimeCall.
  ///
  /// In en, this message translates to:
  /// **'FaceTime Call'**
  String get actionFaceTimeCall;

  /// No description provided for @actionOpenInSkype.
  ///
  /// In en, this message translates to:
  /// **'Open in Skype'**
  String get actionOpenInSkype;

  /// No description provided for @actionOpenInWallet.
  ///
  /// In en, this message translates to:
  /// **'Open in Wallet'**
  String get actionOpenInWallet;

  /// No description provided for @actionCopyAddress.
  ///
  /// In en, this message translates to:
  /// **'Copy Address'**
  String get actionCopyAddress;

  /// No description provided for @actionOpenInPayPal.
  ///
  /// In en, this message translates to:
  /// **'Open in PayPal'**
  String get actionOpenInPayPal;

  /// No description provided for @actionOpenStore.
  ///
  /// In en, this message translates to:
  /// **'Open Store'**
  String get actionOpenStore;

  /// No description provided for @actionAddContact.
  ///
  /// In en, this message translates to:
  /// **'Add Contact'**
  String get actionAddContact;

  /// No description provided for @actionAddToCalendar.
  ///
  /// In en, this message translates to:
  /// **'Add to Calendar'**
  String get actionAddToCalendar;

  /// No description provided for @actionSave.
  ///
  /// In en, this message translates to:
  /// **'Save'**
  String get actionSave;

  /// No description provided for @actionCancel.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get actionCancel;

  /// No description provided for @showMoreRows.
  ///
  /// In en, this message translates to:
  /// **'Show {hiddenRows} more {rowWord}'**
  String showMoreRows(Object hiddenRows, Object rowWord);

  /// No description provided for @showMoreFields.
  ///
  /// In en, this message translates to:
  /// **'Show {hiddenRows} more'**
  String showMoreFields(Object hiddenRows);

  /// No description provided for @showLess.
  ///
  /// In en, this message translates to:
  /// **'Show less'**
  String get showLess;

  /// No description provided for @fieldEvent.
  ///
  /// In en, this message translates to:
  /// **'Event'**
  String get fieldEvent;

  /// No description provided for @fieldStartTime.
  ///
  /// In en, this message translates to:
  /// **'Start Time'**
  String get fieldStartTime;

  /// No description provided for @fieldEndTime.
  ///
  /// In en, this message translates to:
  /// **'End Time'**
  String get fieldEndTime;

  /// No description provided for @fieldLocation.
  ///
  /// In en, this message translates to:
  /// **'Location'**
  String get fieldLocation;

  /// No description provided for @fieldDescription.
  ///
  /// In en, this message translates to:
  /// **'Description'**
  String get fieldDescription;

  /// No description provided for @fieldOrganizer.
  ///
  /// In en, this message translates to:
  /// **'Organizer'**
  String get fieldOrganizer;

  /// No description provided for @fieldAttendee.
  ///
  /// In en, this message translates to:
  /// **'Attendee'**
  String get fieldAttendee;

  /// No description provided for @fieldName.
  ///
  /// In en, this message translates to:
  /// **'Name'**
  String get fieldName;

  /// No description provided for @fieldPhone.
  ///
  /// In en, this message translates to:
  /// **'Phone'**
  String get fieldPhone;

  /// No description provided for @fieldEmail.
  ///
  /// In en, this message translates to:
  /// **'Email'**
  String get fieldEmail;

  /// No description provided for @fieldOrganization.
  ///
  /// In en, this message translates to:
  /// **'Organization'**
  String get fieldOrganization;

  /// No description provided for @fieldTitle.
  ///
  /// In en, this message translates to:
  /// **'Title'**
  String get fieldTitle;

  /// No description provided for @fieldAddress.
  ///
  /// In en, this message translates to:
  /// **'Address'**
  String get fieldAddress;

  /// No description provided for @fieldNotes.
  ///
  /// In en, this message translates to:
  /// **'Notes'**
  String get fieldNotes;

  /// No description provided for @fieldSsid.
  ///
  /// In en, this message translates to:
  /// **'SSID'**
  String get fieldSsid;

  /// No description provided for @fieldPassword.
  ///
  /// In en, this message translates to:
  /// **'Password'**
  String get fieldPassword;

  /// No description provided for @fieldEncryption.
  ///
  /// In en, this message translates to:
  /// **'Encryption'**
  String get fieldEncryption;

  /// No description provided for @fieldUrl.
  ///
  /// In en, this message translates to:
  /// **'URL'**
  String get fieldUrl;

  /// No description provided for @fieldNickname.
  ///
  /// In en, this message translates to:
  /// **'Nickname'**
  String get fieldNickname;

  /// No description provided for @fieldRole.
  ///
  /// In en, this message translates to:
  /// **'Role'**
  String get fieldRole;

  /// No description provided for @fieldBirthday.
  ///
  /// In en, this message translates to:
  /// **'Birthday'**
  String get fieldBirthday;

  /// No description provided for @row.
  ///
  /// In en, this message translates to:
  /// **'row'**
  String get row;

  /// No description provided for @rows.
  ///
  /// In en, this message translates to:
  /// **'rows'**
  String get rows;

  /// No description provided for @monthJan.
  ///
  /// In en, this message translates to:
  /// **'Jan'**
  String get monthJan;

  /// No description provided for @monthFeb.
  ///
  /// In en, this message translates to:
  /// **'Feb'**
  String get monthFeb;

  /// No description provided for @monthMar.
  ///
  /// In en, this message translates to:
  /// **'Mar'**
  String get monthMar;

  /// No description provided for @monthApr.
  ///
  /// In en, this message translates to:
  /// **'Apr'**
  String get monthApr;

  /// No description provided for @monthMay.
  ///
  /// In en, this message translates to:
  /// **'May'**
  String get monthMay;

  /// No description provided for @monthJun.
  ///
  /// In en, this message translates to:
  /// **'Jun'**
  String get monthJun;

  /// No description provided for @monthJul.
  ///
  /// In en, this message translates to:
  /// **'Jul'**
  String get monthJul;

  /// No description provided for @monthAug.
  ///
  /// In en, this message translates to:
  /// **'Aug'**
  String get monthAug;

  /// No description provided for @monthSep.
  ///
  /// In en, this message translates to:
  /// **'Sep'**
  String get monthSep;

  /// No description provided for @monthOct.
  ///
  /// In en, this message translates to:
  /// **'Oct'**
  String get monthOct;

  /// No description provided for @monthNov.
  ///
  /// In en, this message translates to:
  /// **'Nov'**
  String get monthNov;

  /// No description provided for @monthDec.
  ///
  /// In en, this message translates to:
  /// **'Dec'**
  String get monthDec;

  /// No description provided for @cardCtaTitle.
  ///
  /// In en, this message translates to:
  /// **'Open with PlainQR'**
  String get cardCtaTitle;

  /// No description provided for @cardSavedToDownloads.
  ///
  /// In en, this message translates to:
  /// **'Saved card to Downloads'**
  String get cardSavedToDownloads;

  /// No description provided for @cardShareFailed.
  ///
  /// In en, this message translates to:
  /// **'Could not share card'**
  String get cardShareFailed;

  /// No description provided for @cardSaveFailed.
  ///
  /// In en, this message translates to:
  /// **'Could not save card'**
  String get cardSaveFailed;

  /// No description provided for @shareSubjectQrCode.
  ///
  /// In en, this message translates to:
  /// **'QR Code'**
  String get shareSubjectQrCode;

  /// No description provided for @copiedToClipboard.
  ///
  /// In en, this message translates to:
  /// **'Copied to clipboard'**
  String get copiedToClipboard;

  /// No description provided for @sharing.
  ///
  /// In en, this message translates to:
  /// **'Sharing…'**
  String get sharing;

  /// No description provided for @openingLink.
  ///
  /// In en, this message translates to:
  /// **'Opening link'**
  String get openingLink;

  /// No description provided for @invalidUrl.
  ///
  /// In en, this message translates to:
  /// **'Invalid URL'**
  String get invalidUrl;

  /// No description provided for @couldNotOpenLink.
  ///
  /// In en, this message translates to:
  /// **'Could not open this link'**
  String get couldNotOpenLink;

  /// No description provided for @errorOpeningLink.
  ///
  /// In en, this message translates to:
  /// **'Error opening link'**
  String get errorOpeningLink;

  /// No description provided for @wifiNoSsid.
  ///
  /// In en, this message translates to:
  /// **'No SSID found in this QR code'**
  String get wifiNoSsid;

  /// No description provided for @wifiConnected.
  ///
  /// In en, this message translates to:
  /// **'Connected to {ssid}'**
  String wifiConnected(Object ssid);

  /// No description provided for @wifiCouldNotConnect.
  ///
  /// In en, this message translates to:
  /// **'Could not connect to {ssid}'**
  String wifiCouldNotConnect(Object ssid);

  /// No description provided for @wifiConnectionFailed.
  ///
  /// In en, this message translates to:
  /// **'Connection failed'**
  String get wifiConnectionFailed;

  /// No description provided for @contactOpenFailed.
  ///
  /// In en, this message translates to:
  /// **'Could not open contact'**
  String get contactOpenFailed;

  /// No description provided for @eventOpenFailed.
  ///
  /// In en, this message translates to:
  /// **'Could not open event'**
  String get eventOpenFailed;

  /// No description provided for @confirmOpenExternalTitle.
  ///
  /// In en, this message translates to:
  /// **'Open External Content?'**
  String get confirmOpenExternalTitle;

  /// No description provided for @confirmOpenExternalBody.
  ///
  /// In en, this message translates to:
  /// **'The content at the link below may not be safe. Only proceed if you trust the source.\n\n{url}\n\n— To skip this dialog in the future, enable \"Auto-open dangerous types\" in Settings.'**
  String confirmOpenExternalBody(Object url);

  /// No description provided for @autoOpenDialogTitle.
  ///
  /// In en, this message translates to:
  /// **'Auto-open Dangerous Types?'**
  String get autoOpenDialogTitle;

  /// No description provided for @autoOpenDialogContent.
  ///
  /// In en, this message translates to:
  /// **'With this setting ON, URLs, phone calls, SMS, and emails from QR codes will open immediately without showing you the destination first. This means a malicious QR code could make a phone call or send you to a harmful site without your knowledge.\n\nOnly enable this if you understand and accept this risk.'**
  String get autoOpenDialogContent;

  /// No description provided for @autoOpenConfirmButton.
  ///
  /// In en, this message translates to:
  /// **'I Understand'**
  String get autoOpenConfirmButton;

  /// No description provided for @purchaseButton.
  ///
  /// In en, this message translates to:
  /// **'Purchase {price}'**
  String purchaseButton(Object price);

  /// No description provided for @storeUnavailable.
  ///
  /// In en, this message translates to:
  /// **'Google Play Store not available. Cannot make purchases.'**
  String get storeUnavailable;

  /// No description provided for @productLoadFailed.
  ///
  /// In en, this message translates to:
  /// **'Failed to load product'**
  String get productLoadFailed;

  /// No description provided for @purchaseFailed.
  ///
  /// In en, this message translates to:
  /// **'Purchase failed'**
  String get purchaseFailed;

  /// No description provided for @noErrorsLogged.
  ///
  /// In en, this message translates to:
  /// **'(no errors logged)'**
  String get noErrorsLogged;

  /// No description provided for @addressLookupTimedOut.
  ///
  /// In en, this message translates to:
  /// **'Address lookup timed out'**
  String get addressLookupTimedOut;

  /// No description provided for @couldNotResolveAddress.
  ///
  /// In en, this message translates to:
  /// **'Could not resolve that address'**
  String get couldNotResolveAddress;

  /// No description provided for @locationPermissionDenied.
  ///
  /// In en, this message translates to:
  /// **'Location permission denied'**
  String get locationPermissionDenied;

  /// No description provided for @locationLookupTimedOut.
  ///
  /// In en, this message translates to:
  /// **'Location lookup timed out'**
  String get locationLookupTimedOut;

  /// No description provided for @couldNotGetCurrentLocation.
  ///
  /// In en, this message translates to:
  /// **'Could not get current location'**
  String get couldNotGetCurrentLocation;

  /// No description provided for @contactsPermissionDenied.
  ///
  /// In en, this message translates to:
  /// **'Contacts permission denied'**
  String get contactsPermissionDenied;

  /// No description provided for @couldNotAccessContacts.
  ///
  /// In en, this message translates to:
  /// **'Could not access contacts'**
  String get couldNotAccessContacts;

  /// No description provided for @contactImported.
  ///
  /// In en, this message translates to:
  /// **'Contact imported'**
  String get contactImported;

  /// No description provided for @required.
  ///
  /// In en, this message translates to:
  /// **'Required'**
  String get required;

  /// No description provided for @resolving.
  ///
  /// In en, this message translates to:
  /// **'Resolving…'**
  String get resolving;

  /// No description provided for @getCurrentLocation.
  ///
  /// In en, this message translates to:
  /// **'Get Current Location'**
  String get getCurrentLocation;

  /// No description provided for @importFromContacts.
  ///
  /// In en, this message translates to:
  /// **'Import from contacts'**
  String get importFromContacts;

  /// No description provided for @tapToPickDateTime.
  ///
  /// In en, this message translates to:
  /// **'Tap to pick date & time'**
  String get tapToPickDateTime;

  /// No description provided for @formEmailAddress.
  ///
  /// In en, this message translates to:
  /// **'Email address'**
  String get formEmailAddress;

  /// No description provided for @formEmailHint.
  ///
  /// In en, this message translates to:
  /// **'e.g. user@example.com'**
  String get formEmailHint;

  /// No description provided for @formEmailRequired.
  ///
  /// In en, this message translates to:
  /// **'Required — must contain @'**
  String get formEmailRequired;

  /// No description provided for @formSubject.
  ///
  /// In en, this message translates to:
  /// **'Subject'**
  String get formSubject;

  /// No description provided for @formBody.
  ///
  /// In en, this message translates to:
  /// **'Body'**
  String get formBody;

  /// No description provided for @formPhoneNumber.
  ///
  /// In en, this message translates to:
  /// **'Phone number'**
  String get formPhoneNumber;

  /// No description provided for @formPhoneHint.
  ///
  /// In en, this message translates to:
  /// **'e.g. +1 555 123 4567'**
  String get formPhoneHint;

  /// No description provided for @formSmsHelper.
  ///
  /// In en, this message translates to:
  /// **'Required — message is optional'**
  String get formSmsHelper;

  /// No description provided for @formMessage.
  ///
  /// In en, this message translates to:
  /// **'Message'**
  String get formMessage;

  /// No description provided for @formText.
  ///
  /// In en, this message translates to:
  /// **'Text'**
  String get formText;

  /// No description provided for @formTextHint.
  ///
  /// In en, this message translates to:
  /// **'Enter any text or message'**
  String get formTextHint;

  /// No description provided for @formUrl.
  ///
  /// In en, this message translates to:
  /// **'URL'**
  String get formUrl;

  /// No description provided for @formUrlHint.
  ///
  /// In en, this message translates to:
  /// **'example.com'**
  String get formUrlHint;

  /// No description provided for @formUrlHelper.
  ///
  /// In en, this message translates to:
  /// **'Type a domain — you can change https:// if needed'**
  String get formUrlHelper;

  /// No description provided for @formFullName.
  ///
  /// In en, this message translates to:
  /// **'Full name'**
  String get formFullName;

  /// No description provided for @formVcardHelper.
  ///
  /// In en, this message translates to:
  /// **'Required — all other fields are optional'**
  String get formVcardHelper;

  /// No description provided for @formOrganization.
  ///
  /// In en, this message translates to:
  /// **'Organization'**
  String get formOrganization;

  /// No description provided for @formTitle.
  ///
  /// In en, this message translates to:
  /// **'Title'**
  String get formTitle;

  /// No description provided for @formNetworkName.
  ///
  /// In en, this message translates to:
  /// **'Network name (SSID)'**
  String get formNetworkName;

  /// No description provided for @formWifiSsidHint.
  ///
  /// In en, this message translates to:
  /// **'e.g. MyHomeWiFi'**
  String get formWifiSsidHint;

  /// No description provided for @formSsidAutoDetected.
  ///
  /// In en, this message translates to:
  /// **'SSID auto-detected from your current network'**
  String get formSsidAutoDetected;

  /// No description provided for @formWifiPassword.
  ///
  /// In en, this message translates to:
  /// **'Password'**
  String get formWifiPassword;

  /// No description provided for @formWifiPasswordHelper.
  ///
  /// In en, this message translates to:
  /// **'Leave empty for open networks'**
  String get formWifiPasswordHelper;

  /// No description provided for @formAddress.
  ///
  /// In en, this message translates to:
  /// **'Address'**
  String get formAddress;

  /// No description provided for @formAddressHint.
  ///
  /// In en, this message translates to:
  /// **'e.g. Eiffel Tower, Paris'**
  String get formAddressHint;

  /// No description provided for @formLatitude.
  ///
  /// In en, this message translates to:
  /// **'Latitude (-90 to 90)'**
  String get formLatitude;

  /// No description provided for @formLongitude.
  ///
  /// In en, this message translates to:
  /// **'Longitude (-180 to 180)'**
  String get formLongitude;

  /// No description provided for @formStartDate.
  ///
  /// In en, this message translates to:
  /// **'Start date *'**
  String get formStartDate;

  /// No description provided for @formEndDate.
  ///
  /// In en, this message translates to:
  /// **'End date'**
  String get formEndDate;

  /// No description provided for @formEventTitle.
  ///
  /// In en, this message translates to:
  /// **'Event title'**
  String get formEventTitle;

  /// No description provided for @formLocation.
  ///
  /// In en, this message translates to:
  /// **'Location'**
  String get formLocation;

  /// No description provided for @formLocationHint.
  ///
  /// In en, this message translates to:
  /// **'e.g. 123 Main St or venue name'**
  String get formLocationHint;

  /// Snackbar shown when a background update has finished downloading
  ///
  /// In en, this message translates to:
  /// **'Update ready to install'**
  String get updateReadyMessage;

  /// Snackbar action that installs the downloaded update and restarts the app
  ///
  /// In en, this message translates to:
  /// **'Restart'**
  String get updateReadyAction;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>[
    'ar',
    'bn',
    'de',
    'en',
    'es',
    'fa',
    'fr',
    'hi',
    'id',
    'it',
    'ja',
    'ko',
    'nl',
    'pl',
    'pt',
    'ro',
    'ru',
    'th',
    'tr',
    'ur',
    'vi',
    'zh',
  ].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'ar':
      return AppLocalizationsAr();
    case 'bn':
      return AppLocalizationsBn();
    case 'de':
      return AppLocalizationsDe();
    case 'en':
      return AppLocalizationsEn();
    case 'es':
      return AppLocalizationsEs();
    case 'fa':
      return AppLocalizationsFa();
    case 'fr':
      return AppLocalizationsFr();
    case 'hi':
      return AppLocalizationsHi();
    case 'id':
      return AppLocalizationsId();
    case 'it':
      return AppLocalizationsIt();
    case 'ja':
      return AppLocalizationsJa();
    case 'ko':
      return AppLocalizationsKo();
    case 'nl':
      return AppLocalizationsNl();
    case 'pl':
      return AppLocalizationsPl();
    case 'pt':
      return AppLocalizationsPt();
    case 'ro':
      return AppLocalizationsRo();
    case 'ru':
      return AppLocalizationsRu();
    case 'th':
      return AppLocalizationsTh();
    case 'tr':
      return AppLocalizationsTr();
    case 'ur':
      return AppLocalizationsUr();
    case 'vi':
      return AppLocalizationsVi();
    case 'zh':
      return AppLocalizationsZh();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
