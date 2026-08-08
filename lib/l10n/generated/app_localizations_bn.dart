// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Bengali Bangla (`bn`).
class AppLocalizationsBn extends AppLocalizations {
  AppLocalizationsBn([String locale = 'bn']) : super(locale);

  @override
  String get appName => 'PlainQR';

  @override
  String get appNameFull => 'PlainQR — স্ক্যান ও তৈরি করুন';

  @override
  String get drawerScan => 'স্ক্যান';

  @override
  String get drawerScanFromGallery => 'গ্যালারি থেকে স্ক্যান';

  @override
  String get drawerGenerator => 'জেনারেটর';

  @override
  String get drawerHistory => 'ইতিহাস';

  @override
  String get drawerSettings => 'সেটিংস';

  @override
  String get scannerUnlockSnack => 'জেনারেটর আনলক হয়েছে!';

  @override
  String get scannerUnlockAnnounce => 'জেনারেটর আনলক হয়েছে';

  @override
  String scannerFreeTierBanner(Object price) {
    return 'বিনামূল্যে ফ্রি প্ল্যান — সরাতে $price';
  }

  @override
  String scannerDetectedAnnounce(Object type, Object brief) {
    return 'সনাক্ত হয়েছে $type: $brief';
  }

  @override
  String get scannerSavedToHistory => 'ইতিহাসে সংরক্ষিত হয়েছে';

  @override
  String get scannerTooltipDisableFlashlight => 'ফ্ল্যাশলাইট নিষ্ক্রিয় করুন';

  @override
  String get scannerTooltipEnableFlashlight => 'ফ্ল্যাশলাইট সক্রিয় করুন';

  @override
  String get scannerTooltipGallery => 'গ্যালারি থেকে স্ক্যান';

  @override
  String get scannerZoomIn => 'বড় করুন';

  @override
  String get scannerZoomOut => 'ছোট করুন';

  @override
  String scannerZoomLevel(Object level) {
    return '$level×';
  }

  @override
  String get generatorAppBarTitle => 'জেনারেটর';

  @override
  String generatorFormAppBarTitle(Object typeName) {
    return '$typeName QR';
  }

  @override
  String get generatorCardLabel => 'কার্ড লেবেল (ঐচ্ছিক)';

  @override
  String get generatorCardLabelHint => 'যেমন, অতিথি WiFi, আমার ওয়েবসাইট';

  @override
  String get generatorPreview => 'প্রিভিউ';

  @override
  String get generatorStyle => 'স্টাইল:';

  @override
  String get generatorStyleLight => 'হালকা';

  @override
  String get generatorStyleDark => 'গাঢ়';

  @override
  String get generatorStyleSticker => 'স্টিকার';

  @override
  String get generatorShareCard => 'কার্ড শেয়ার করুন';

  @override
  String get generatorSaveToDevice => 'ডিভাইসে সংরক্ষণ করুন';

  @override
  String get generatorCopiedSnack => 'QR বিষয়বস্তু কপি হয়েছে';

  @override
  String get generatorCopyQrContent => 'QR বিষয়বস্তু কপি করুন';

  @override
  String get typeUrl => 'URL';

  @override
  String get typeUrlDescription => 'ওয়েবসাইট বা অনলাইন বিষয়বস্তুর সাথে লিংক';

  @override
  String get typeUrlHeadline => 'দেখতে স্ক্যান করুন';

  @override
  String get typePlainText => 'সাধারণ পাঠ্য';

  @override
  String get typePlainTextDescription => 'স্বাধীন ফর্ম পাঠ্য বা বার্তা';

  @override
  String get typePlainTextHeadline => 'পড়তে স্ক্যান করুন';

  @override
  String get typeWifi => 'WiFi';

  @override
  String get typeWifiDescription => 'আপনার নেটওয়ার্ক প্রমাণপত্র শেয়ার করুন';

  @override
  String get typeWifiHeadline => 'WiFi-তে যোগ দিতে স্ক্যান করুন';

  @override
  String get typeVcard => 'vCard';

  @override
  String get typeVcardDescription => 'যোগাযোগের বিবরণ শেয়ার করুন';

  @override
  String get typeVcardHeadline => 'যোগাযোগ সংরক্ষণ করতে স্ক্যান করুন';

  @override
  String get typeCalendar => 'ক্যালেন্ডার';

  @override
  String get typeCalendarDescription =>
      'যেকোনো ক্যালেন্ডারে একটি অনুষ্ঠান যোগ করুন';

  @override
  String get typeCalendarHeadline => 'ক্যালেন্ডারে যোগ করতে স্ক্যান করুন';

  @override
  String get typePhone => 'ফোন';

  @override
  String get typePhoneDescription => 'কল করার ফোন নম্বর';

  @override
  String get typePhoneHeadline => 'কল করতে স্ক্যান করুন';

  @override
  String get typeEmail => 'ইমেইল';

  @override
  String get typeEmailDescription => 'একটি ইমেইল লিখুন';

  @override
  String get typeEmailHeadline => 'ইমেইল করতে স্ক্যান করুন';

  @override
  String get typeSms => 'SMS';

  @override
  String get typeSmsDescription => 'একটি পাঠ্য বার্তা পাঠান';

  @override
  String get typeSmsHeadline => 'বার্তা পাঠাতে স্ক্যান করুন';

  @override
  String get typeLocation => 'অবস্থান';

  @override
  String get typeLocationDescription => 'একটি ভৌত ঠিকানা বা স্থানাঙ্ক';

  @override
  String get typeLocationHeadline => 'দিকনির্দেশনার জন্য স্ক্যান করুন';

  @override
  String get historyAppBarTitle => 'স্ক্যান ইতিহাস';

  @override
  String get historyClearAllTooltip => 'সব মুছুন';

  @override
  String get historyEmpty => 'এখনো কোনো স্ক্যান নেই';

  @override
  String get historyJustNow => 'এইমাত্র';

  @override
  String historyMinutesAgo(Object count) {
    return '$countমি আগে';
  }

  @override
  String historyHoursAgo(Object count) {
    return '$countঘ আগে';
  }

  @override
  String historyDeletedSnack(Object label) {
    return '$label মুছে ফেলা হয়েছে';
  }

  @override
  String get historyUndoButton => 'পূর্বাবস্থায় ফেরান';

  @override
  String get historyClearDialogTitle => 'স্ক্যান ইতিহাস মুছে ফেলবেন?';

  @override
  String get historyClearDialogContent =>
      'এই কাজটি পূর্বাবস্থায় ফেরানো যাবে না।';

  @override
  String get historyClearButton => 'মুছুন';

  @override
  String get historySourceGallery => 'গ্যালারি';

  @override
  String get historySourceCamera => 'ক্যামেরা';

  @override
  String get galleryNoQrFound => 'ছবিতে কোনো QR কোড পাওয়া যায়নি';

  @override
  String get galleryCropTitle => 'QR কোড ফ্রেম করুন';

  @override
  String get galleryCropScan => 'স্ক্যান';

  @override
  String get ratePromptTitle => 'PlainQR উপভোগ করছেন?';

  @override
  String get ratePromptBody =>
      'আপনার পর্যালোচনা অন্যদের একটি ব্যক্তিগত QR স্ক্যানার খুঁজে পেতে সাহায্য করে।';

  @override
  String get ratePromptRate => 'রেট করুন';

  @override
  String get ratePromptFeedback => 'মতামত';

  @override
  String get tilePromptTitle => 'যেকোনো জায়গা থেকে স্ক্যান করুন';

  @override
  String get tilePromptBody =>
      'কুইক সেটিংসে একটি PlainQR টাইল যোগ করুন।\nনিচে সোয়াইপ করুন, ট্যাপ করুন, স্ক্যান করুন — অ্যাপ খোলার প্রয়োজন নেই।';

  @override
  String get tilePromptAdd => 'টাইল যোগ করুন';

  @override
  String get settingsAppBarTitle => 'সেটিংস';

  @override
  String get settingsSectionScanning => 'স্ক্যানিং';

  @override
  String get settingsSaveHistory => 'স্ক্যান ইতিহাস সংরক্ষণ করুন';

  @override
  String get settingsSaveHistoryOn =>
      'ক্যামেরা স্ক্যান স্বয়ংক্রিয়ভাবে সংরক্ষিত হয়';

  @override
  String get settingsSaveHistoryOff =>
      'রেজাল্ট কার্ড থেকে হাতে কলমে সংরক্ষণ করুন';

  @override
  String get settingsAutoOpen => 'বিপজ্জনক ধরনের স্বয়ংক্রিয় খোলা';

  @override
  String get settingsAutoOpenOn =>
      'URL, কল, SMS এবং ইমেইলের জন্য নিশ্চিতকরণ এড়িয়ে চলুন';

  @override
  String get settingsAutoOpenOff =>
      'URL খোলা, কল করা, SMS পাঠানো বা ইমেইল লেখার আগে জিজ্ঞাসা করুন';

  @override
  String get settingsAutoFlashlight => 'স্ক্যানে স্বয়ংক্রিয় ফ্ল্যাশলাইট';

  @override
  String get settingsAutoFlashlightOn =>
      'স্ক্যান স্ক্রিন খোলার সময় ফ্ল্যাশলাইট চালু হয়';

  @override
  String get settingsAutoFlashlightOff => 'ফ্ল্যাশলাইট হাতে কলমে নিয়ন্ত্রিত';

  @override
  String get settingsEnableGenerators => 'জেনারেটর সক্রিয় করুন';

  @override
  String settingsEnableGeneratorsSubtitle(Object price) {
    return '$price এর জন্য WiFi, vCard এবং ক্যালেন্ডার জেনারেটরগুলি আনলক করুন';
  }

  @override
  String get settingsPremiumUnlocked => 'প্রিমিয়াম আনলক';

  @override
  String get settingsPremiumUnlockedSubtitle =>
      'সমস্ত জেনারেটর বৈশিষ্ট্য সক্রিয়';

  @override
  String get settingsSectionAppearance => 'চেহারা';

  @override
  String get settingsThemeSystem => 'সিস্টেম';

  @override
  String get settingsThemeLight => 'হালকা';

  @override
  String get settingsThemeDark => 'গাঢ়';

  @override
  String get settingsSectionLegal => 'আইনি';

  @override
  String get settingsOpenSourceLicences => 'ওপেন সোর্স লাইসেন্স';

  @override
  String get changelog04Item1 =>
      '২২টি ভাষা — PlainQR এখন আপনার ভাষায় কথা বলে। সিস্টেম সেটিংসে আপনার ভাষা বেছে নিন।';

  @override
  String get changelog04Item2 =>
      'সিস্টেম থিম — লাইট, ডার্ক, বা আপনার ডিভাইসের সাথে স্বয়ংক্রিয়ভাবে অনুসরণ করুন।';

  @override
  String get changelog04Item3 =>
      'আমাদের রেট করুন — Play Store-এ রিভিউ দিতে মেনুতে তারকায় ট্যাপ করুন।';

  @override
  String get changelog04Item4 => 'নতুন কী — আপনি এটি পড়ছেন।';

  @override
  String get changelog04Item5 =>
      'GitHub-এ ফিডব্যাক দেখুন — issue স্ট্যাটাস দেখতে যেকোনো সাবমিশনে ট্যাপ করুন।';

  @override
  String get unlockAppBarTitle => 'জেনারেটর সক্রিয় করুন';

  @override
  String get unlockTitle =>
      'WiFi, যোগাযোগ\n& ক্যালেন্ডার জেনারেটর সক্রিয় করুন';

  @override
  String unlockDescription(Object price) {
    return 'WiFi নেটওয়ার্ক, যোগাযোগ কার্ড,\nএবং ক্যালেন্ডার অনুষ্ঠানের জন্য QR কোড তৈরি করুন।\nএকবারে $price। কোনো সাবস্ক্রিপশন নেই।';
  }

  @override
  String unlockEnableButton(Object price) {
    return 'সক্রিয় করুন — $price';
  }

  @override
  String get unlockRestoreButton => 'পূর্ববর্তী ক্রয় পুনরুদ্ধার করুন';

  @override
  String get unlockDialogTitle => 'জেনারেটর আনলক করুন';

  @override
  String unlockDialogContent(Object price) {
    return 'WiFi, vCard এবং ক্যালেন্ডার জেনারেটরগুলিকে এককালীন $price কেনার সাথে আনলক করুন৷ অন্য ছয় ধরনের জেনারেটর সবসময় বিনামূল্যে.';
  }

  @override
  String get actionOpen => 'খুলুন';

  @override
  String get actionCopy => 'কপি করুন';

  @override
  String get actionGenerate => 'তৈরি করুন';

  @override
  String get actionShare => 'শেয়ার করুন';

  @override
  String get actionEmail => 'ইমেইল';

  @override
  String get actionCall => 'কল';

  @override
  String get actionSendSms => 'SMS পাঠান';

  @override
  String get actionConnect => 'সংযোগ করুন';

  @override
  String get actionCopySsid => 'SSID কপি করুন';

  @override
  String get actionCopyPassword => 'পাসওয়ার্ড কপি করুন';

  @override
  String get actionOpenMaps => 'ম্যাপস খুলুন';

  @override
  String get actionOpenInWhatsApp => 'WhatsApp-এ খুলুন';

  @override
  String get actionOpenInTelegram => 'Telegram-এ খুলুন';

  @override
  String get actionOpenInSignal => 'Signal-এ খুলুন';

  @override
  String get actionOpenInTwitter => 'Twitter-এ খুলুন';

  @override
  String get actionFaceTimeCall => 'FaceTime কল';

  @override
  String get actionOpenInSkype => 'Skype-এ খুলুন';

  @override
  String get actionOpenInWallet => 'Wallet-এ খুলুন';

  @override
  String get actionCopyAddress => 'ঠিকানা কপি করুন';

  @override
  String get actionOpenInPayPal => 'PayPal-এ খুলুন';

  @override
  String get actionOpenStore => 'স্টোর খুলুন';

  @override
  String get actionAddContact => 'যোগাযোগ যোগ করুন';

  @override
  String get actionAddToCalendar => 'ক্যালেন্ডারে যোগ করুন';

  @override
  String get actionSave => 'সংরক্ষণ করুন';

  @override
  String get actionCancel => 'বাতিল';

  @override
  String showMoreRows(Object hiddenRows, Object rowWord) {
    return '$hiddenRowsটি আরও $rowWord দেখান';
  }

  @override
  String showMoreFields(Object hiddenRows) {
    return '$hiddenRowsটি আরও দেখান';
  }

  @override
  String get showLess => 'কম দেখান';

  @override
  String get fieldEvent => 'অনুষ্ঠান';

  @override
  String get fieldStartTime => 'শুরুর সময়';

  @override
  String get fieldEndTime => 'শেষের সময়';

  @override
  String get fieldLocation => 'অবস্থান';

  @override
  String get fieldDescription => 'বিবরণ';

  @override
  String get fieldOrganizer => 'আয়োজক';

  @override
  String get fieldAttendee => 'অংশগ্রহণকারী';

  @override
  String get fieldName => 'নাম';

  @override
  String get fieldPhone => 'ফোন';

  @override
  String get fieldEmail => 'ইমেইল';

  @override
  String get fieldOrganization => 'প্রতিষ্ঠান';

  @override
  String get fieldTitle => 'শিরোনাম';

  @override
  String get fieldAddress => 'ঠিকানা';

  @override
  String get fieldNotes => 'নোট';

  @override
  String get fieldSsid => 'SSID';

  @override
  String get fieldPassword => 'পাসওয়ার্ড';

  @override
  String get fieldEncryption => 'এনক্রিপশন';

  @override
  String get fieldUrl => 'URL';

  @override
  String get fieldNickname => 'ডাকনাম';

  @override
  String get fieldRole => 'ভূমিকা';

  @override
  String get fieldBirthday => 'জন্মদিন';

  @override
  String get row => 'সারি';

  @override
  String get rows => 'সারি';

  @override
  String get monthJan => 'জানু';

  @override
  String get monthFeb => 'ফেব';

  @override
  String get monthMar => 'মার্চ';

  @override
  String get monthApr => 'এপ্রি';

  @override
  String get monthMay => 'মে';

  @override
  String get monthJun => 'জুন';

  @override
  String get monthJul => 'জুল';

  @override
  String get monthAug => 'আগ';

  @override
  String get monthSep => 'সেপ্ট';

  @override
  String get monthOct => 'অক্টো';

  @override
  String get monthNov => 'নভে';

  @override
  String get monthDec => 'ডিসে';

  @override
  String get cardCtaTitle => 'PlainQR দিয়ে খুলুন';

  @override
  String get cardSavedToDownloads => 'কার্ড ডাউনলোডে সংরক্ষিত';

  @override
  String get cardShareFailed => 'কার্ড শেয়ার করা যায়নি';

  @override
  String get cardSaveFailed => 'কার্ড সংরক্ষণ করা যায়নি';

  @override
  String get shareSubjectQrCode => 'QR কোড';

  @override
  String get copiedToClipboard => 'ক্লিপবোর্ডে কপি হয়েছে';

  @override
  String get sharing => 'শেয়ার হচ্ছে…';

  @override
  String get openingLink => 'লিংক খোলা হচ্ছে';

  @override
  String get invalidUrl => 'অবৈধ URL';

  @override
  String get couldNotOpenLink => 'এই লিংকটি খোলা যায়নি';

  @override
  String get errorOpeningLink => 'লিংক খোলায় ত্রুটি';

  @override
  String get wifiNoSsid => 'এই QR কোডে কোনো SSID পাওয়া যায়নি';

  @override
  String wifiConnected(Object ssid) {
    return '$ssid-তে সংযুক্ত';
  }

  @override
  String wifiCouldNotConnect(Object ssid) {
    return '$ssid-তে সংযোগ করা যায়নি';
  }

  @override
  String get wifiConnectionFailed => 'সংযোগ ব্যর্থ';

  @override
  String get contactOpenFailed => 'যোগাযোগ খোলা যায়নি';

  @override
  String get eventOpenFailed => 'অনুষ্ঠান খোলা যায়নি';

  @override
  String get confirmOpenExternalTitle => 'বহিঃস্থ বিষয়বস্তু খুলবেন?';

  @override
  String confirmOpenExternalBody(Object url) {
    return 'নিচের লিংকের বিষয়বস্তু নিরাপদ নাও হতে পারে। শুধুমাত্র উৎসে বিশ্বাস করলে এগিয়ে যান।\n\n$url\n\n— ভবিষ্যতে এই ডায়ালগ এড়িয়ে যেতে, সেটিংসে \"বিপজ্জনক ধরনের স্বয়ংক্রিয় খোলা\" সক্রিয় করুন।';
  }

  @override
  String get autoOpenDialogTitle => 'বিপজ্জনক ধরনের স্বয়ংক্রিয় খুলবেন?';

  @override
  String get autoOpenDialogContent =>
      'এই সেটিং চালু থাকলে, QR কোড থেকে URL, ফোন কল, SMS এবং ইমেইল আপনাকে গন্তব্য না দেখিয়েই তাৎক্ষণিকভাবে খুলে দেবে। এর মানে একটি ক্ষতিকর QR কোড আপনার অবগতি ছাড়াই ফোন কল করতে বা ক্ষতিকর সাইটে পাঠাতে পারে।\n\nশুধুমাত্র আপনি এই ঝুঁকি বুঝে ও গ্রহণ করলেই এটি সক্রিয় করুন।';

  @override
  String get autoOpenConfirmButton => 'আমি বুঝেছি';

  @override
  String purchaseButton(Object price) {
    return '$price-এ ক্রয় করুন';
  }

  @override
  String get storeUnavailable =>
      'Google Play Store উপলব্ধ নেই। ক্রয় করা যাচ্ছে না।';

  @override
  String get productLoadFailed => 'পণ্য লোড করা যায়নি';

  @override
  String get purchaseFailed => 'ক্রয় ব্যর্থ হয়েছে';

  @override
  String get noErrorsLogged => '(কোনো ত্রুটি লগ হয়নি)';

  @override
  String get addressLookupTimedOut => 'ঠিকানা খোঁজার সময় শেষ';

  @override
  String get couldNotResolveAddress => 'ঠিকানাটি নির্ণয় করা যায়নি';

  @override
  String get locationPermissionDenied => 'অবস্থানের অনুমতি প্রত্যাখ্যাত';

  @override
  String get locationLookupTimedOut => 'অবস্থান খোঁজার সময় শেষ';

  @override
  String get couldNotGetCurrentLocation => 'বর্তমান অবস্থান পাওয়া যায়নি';

  @override
  String get contactsPermissionDenied => 'যোগাযোগের অনুমতি প্রত্যাখ্যাত';

  @override
  String get couldNotAccessContacts => 'যোগাযোগে প্রবেশ করা যায়নি';

  @override
  String get contactImported => 'যোগাযোগ আমদানি হয়েছে';

  @override
  String get required => 'আবশ্যিক';

  @override
  String get resolving => 'নির্ণয় করা হচ্ছে…';

  @override
  String get getCurrentLocation => 'বর্তমান অবস্থান পান';

  @override
  String get importFromContacts => 'যোগাযোগ থেকে আমদানি করুন';

  @override
  String get tapToPickDateTime => 'তারিখ ও সময় বাছাই করতে ট্যাপ করুন';

  @override
  String get formEmailAddress => 'ইমেইল ঠিকানা';

  @override
  String get formEmailHint => 'যেমন, user@example.com';

  @override
  String get formEmailRequired => 'আবশ্যিক — অবশ্যই @ থাকতে হবে';

  @override
  String get formSubject => 'বিষয়';

  @override
  String get formBody => 'ইমেইলের মূল অংশ';

  @override
  String get formPhoneNumber => 'ফোন নম্বর';

  @override
  String get formPhoneHint => 'যেমন, +880 1XXX XXXXXX';

  @override
  String get formSmsHelper => 'আবশ্যিক — বার্তা ঐচ্ছিক';

  @override
  String get formMessage => 'বার্তা';

  @override
  String get formText => 'পাঠ্য';

  @override
  String get formTextHint => 'যেকোনো পাঠ্য বা বার্তা লিখুন';

  @override
  String get formUrl => 'URL';

  @override
  String get formUrlHint => 'example.com';

  @override
  String get formUrlHelper =>
      'একটি ডোমেন লিখুন — প্রয়োজনে https:// পরিবর্তন করতে পারেন';

  @override
  String get formFullName => 'পুরো নাম';

  @override
  String get formVcardHelper => 'আবশ্যিক — অন্যান্য সমস্ত ফিল্ড ঐচ্ছিক';

  @override
  String get formOrganization => 'প্রতিষ্ঠান';

  @override
  String get formTitle => 'শিরোনাম';

  @override
  String get formNetworkName => 'নেটওয়ার্কের নাম (SSID)';

  @override
  String get formWifiSsidHint => 'যেমন, MyHomeWiFi';

  @override
  String get formSsidAutoDetected =>
      'আপনার বর্তমান নেটওয়ার্ক থেকে SSID স্বয়ংক্রিয়ভাবে সনাক্ত হয়েছে';

  @override
  String get formWifiPassword => 'পাসওয়ার্ড';

  @override
  String get formWifiPasswordHelper => 'খোলা নেটওয়ার্কের জন্য ফাঁকা রাখুন';

  @override
  String get formAddress => 'ঠিকানা';

  @override
  String get formAddressHint => 'যেমন, এফেল টাওয়ার, প্যারিস';

  @override
  String get formLatitude => 'অক্ষাংশ (-90 থেকে 90)';

  @override
  String get formLongitude => 'দ্রাঘিমাংশ (-180 থেকে 180)';

  @override
  String get formStartDate => 'শুরুর তারিখ *';

  @override
  String get formEndDate => 'শেষের তারিখ';

  @override
  String get formEventTitle => 'অনুষ্ঠানের শিরোনাম';

  @override
  String get formLocation => 'অবস্থান';

  @override
  String get formLocationHint => 'যেমন, 123 মেইন স্ট্রিট বা ভেন্যুর নাম';

  @override
  String get updateReadyMessage => 'আপডেট ইনস্টলের জন্য প্রস্তুত';

  @override
  String get updateReadyAction => 'পুনরায় চালু করুন';
}
