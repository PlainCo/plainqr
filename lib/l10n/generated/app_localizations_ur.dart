// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Urdu (`ur`).
class AppLocalizationsUr extends AppLocalizations {
  AppLocalizationsUr([String locale = 'ur']) : super(locale);

  @override
  String get appName => 'PlainQR';

  @override
  String get appNameFull => 'PlainQR — اسکین اور جنریٹ';

  @override
  String get drawerScan => 'اسکین';

  @override
  String get drawerScanFromGallery => 'گیلری سے اسکین کریں';

  @override
  String get drawerGenerator => 'جنریٹر';

  @override
  String get drawerHistory => 'تاریخچہ';

  @override
  String get drawerSettings => 'ترتیبات';

  @override
  String get scannerUnlockSnack => 'جنریٹرز کھل گئے!';

  @override
  String get scannerUnlockAnnounce => 'جنریٹرز کھل گئے';

  @override
  String scannerFreeTierBanner(Object price) {
    return 'مفت ورژن — $price میں ہٹائیں';
  }

  @override
  String scannerDetectedAnnounce(Object type, Object brief) {
    return '$type پکڑا گیا: $brief';
  }

  @override
  String get scannerSavedToHistory => 'تاریخچہ میں محفوظ ہو گیا';

  @override
  String get scannerTooltipDisableFlashlight => 'فالیٹ بند کریں';

  @override
  String get scannerTooltipEnableFlashlight => 'فالیٹ آن کریں';

  @override
  String get scannerTooltipGallery => 'گیلری سے اسکین کریں';

  @override
  String get scannerZoomIn => 'زوم ان';

  @override
  String get scannerZoomOut => 'زوم آؤٹ';

  @override
  String scannerZoomLevel(Object level) {
    return '$level×';
  }

  @override
  String get generatorAppBarTitle => 'جنریٹر';

  @override
  String generatorFormAppBarTitle(Object typeName) {
    return '$typeName QR';
  }

  @override
  String get generatorCardLabel => 'کارڈ لیبل (اختیاری)';

  @override
  String get generatorCardLabelHint => 'مثلاً: گیسٹ WiFi، میری ویب سائٹ';

  @override
  String get generatorPreview => 'پیش نظارہ';

  @override
  String get generatorStyle => 'اسٹائل:';

  @override
  String get generatorStyleLight => 'ہلکا';

  @override
  String get generatorStyleDark => 'گہرا';

  @override
  String get generatorStyleSticker => 'اسٹیکر';

  @override
  String get generatorShareCard => 'کارڈ شیئر کریں';

  @override
  String get generatorSaveToDevice => 'ڈیوائس میں محفوظ کریں';

  @override
  String get generatorCopiedSnack => 'QR مواد کاپی ہو گیا';

  @override
  String get generatorCopyQrContent => 'QR مواد کاپی کریں';

  @override
  String get typeUrl => 'URL';

  @override
  String get typeUrlDescription => 'ویب سائٹ یا آن لائن مواد کا لنک';

  @override
  String get typeUrlHeadline => 'سکین کر کے ویب سائٹ دیکھیں';

  @override
  String get typePlainText => 'سادہ متن';

  @override
  String get typePlainTextDescription => 'آزاد متن یا پیغام';

  @override
  String get typePlainTextHeadline => 'سکین کر کے پڑھیں';

  @override
  String get typeWifi => 'WiFi';

  @override
  String get typeWifiDescription => 'اپنا نیٹ ورک پاس شیئر کریں';

  @override
  String get typeWifiHeadline => 'سکین کر کے WiFi سے جڑیں';

  @override
  String get typeVcard => 'vCard';

  @override
  String get typeVcardDescription => 'رابطہ تفصیلات شیئر کریں';

  @override
  String get typeVcardHeadline => 'سکین کر کے رابطہ محفوظ کریں';

  @override
  String get typeCalendar => 'کیلنڈر';

  @override
  String get typeCalendarDescription => 'کسی بھی کیلنڈر میں ایونٹ شامل کریں';

  @override
  String get typeCalendarHeadline => 'سکین کر کے کیلنڈر میں شامل کریں';

  @override
  String get typePhone => 'فون';

  @override
  String get typePhoneDescription => 'کال کرنے کا فون نمبر';

  @override
  String get typePhoneHeadline => 'سکین کر کے کال کریں';

  @override
  String get typeEmail => 'ای میل';

  @override
  String get typeEmailDescription => 'ای میل لکھیں';

  @override
  String get typeEmailHeadline => 'سکین کر کے ای میل کریں';

  @override
  String get typeSms => 'ایس ایم ایس';

  @override
  String get typeSmsDescription => 'ٹیکسٹ پیغام بھیجیں';

  @override
  String get typeSmsHeadline => 'سکین کر کے ٹیکسٹ بھیجیں';

  @override
  String get typeLocation => 'مقام';

  @override
  String get typeLocationDescription => 'پتہ یا کوآرڈینیٹس';

  @override
  String get typeLocationHeadline => 'سکین کر کے راستہ دیکھیں';

  @override
  String get historyAppBarTitle => 'اسکین کی تاریخچہ';

  @override
  String get historyClearAllTooltip => 'سب حذف کریں';

  @override
  String get historyEmpty => 'ابھی تک کوئی اسکین نہیں';

  @override
  String get historyJustNow => 'ابھی ابھی';

  @override
  String historyMinutesAgo(Object count) {
    return '$count منٹ پہلے';
  }

  @override
  String historyHoursAgo(Object count) {
    return '$count گھنٹے پہلے';
  }

  @override
  String historyDeletedSnack(Object label) {
    return '$label حذف ہو گیا';
  }

  @override
  String get historyUndoButton => 'واپس لیں';

  @override
  String get historyClearDialogTitle => 'اسکین تاریخچہ حذف کریں؟';

  @override
  String get historyClearDialogContent => 'یہ عمل واپس نہیں ہو سکتا۔';

  @override
  String get historyClearButton => 'حذف کریں';

  @override
  String get historySourceGallery => 'گیلری';

  @override
  String get historySourceCamera => 'کیمرا';

  @override
  String get galleryNoQrFound => 'تصویر میں کوئی QR کوڈ نہیں ملا';

  @override
  String get galleryCropTitle => 'QR کوڈ کو فریم کریں';

  @override
  String get galleryCropScan => 'اسکین کریں';

  @override
  String get ratePromptTitle => 'PlainQR پسند آیا؟';

  @override
  String get ratePromptBody =>
      'آپ کا جائزہ دوسروں کو ایک نجی QR سکینر تلاش کرنے میں مدد کرتا ہے۔';

  @override
  String get ratePromptRate => 'ریٹ کریں';

  @override
  String get ratePromptFeedback => 'رائے';

  @override
  String get tilePromptTitle => 'کہیں سے بھی اسکین کریں';

  @override
  String get tilePromptBody =>
      'فوری ترتیبات میں PlainQR ٹائل شامل کریں۔\nنیچے سوائپ کریں، تھپتھپائیں، اسکین کریں — ایپ کھولنے کی ضرورت نہیں۔';

  @override
  String get tilePromptAdd => 'ٹائل شامل کریں';

  @override
  String get settingsAppBarTitle => 'ترتیبات';

  @override
  String get settingsSectionScanning => 'اسکیننگ';

  @override
  String get settingsSaveHistory => 'اسکین تاریخچہ محفوظ کریں';

  @override
  String get settingsSaveHistoryOn => 'کیمرا اسکین خود بخود محفوظ ہو جاتے ہیں';

  @override
  String get settingsSaveHistoryOff => 'رزلٹ کارڈ سے دستی طور پر محفوظ کریں';

  @override
  String get settingsAutoOpen => 'خطرناک قسم خود بخود کھولیں';

  @override
  String get settingsAutoOpenOn =>
      'URLs، کالز، ایس ایم ایس، اور ای میل کی تصدیق چھوڑیں';

  @override
  String get settingsAutoOpenOff =>
      'URLs کھولنے، کال کرنے، ایس ایم ایس بھیجنے یا ای میل لکھنے سے پہلے پوچھیں';

  @override
  String get settingsAutoFlashlight => 'اسکین کے وقت خود بخود فالیٹ';

  @override
  String get settingsAutoFlashlightOn =>
      'اسکین اسکرین کھلتے ہی فالیٹ آن ہو جاتی ہے';

  @override
  String get settingsAutoFlashlightOff => 'فالیٹ دستی طور پر کنٹرول کریں';

  @override
  String get settingsEnableGenerators => 'جنریٹرز فعال کریں';

  @override
  String settingsEnableGeneratorsSubtitle(Object price) {
    return '$price کے لیے WiFi، vCard اور کیلنڈر جنریٹرز کو غیر مقفل کریں۔';
  }

  @override
  String get settingsPremiumUnlocked => 'پریمیم کھل گیا';

  @override
  String get settingsPremiumUnlockedSubtitle => 'تمام جنریٹر خصوصیات فعال ہیں';

  @override
  String get settingsSectionAppearance => 'ظاہری شکل';

  @override
  String get settingsThemeSystem => 'سسٹم';

  @override
  String get settingsThemeLight => 'لائٹ';

  @override
  String get settingsThemeDark => 'ڈارک';

  @override
  String get settingsSectionLegal => 'قانونی';

  @override
  String get settingsOpenSourceLicences => 'اوپن سورس لائسنسز';

  @override
  String get changelog04Item1 =>
      '22 زبانیں — PlainQR اب آپ کی زبان بولتا ہے۔ سسٹم سیٹنگز میں اپنی زبان منتخب کریں۔';

  @override
  String get changelog04Item2 =>
      'سسٹم تھیم — لائٹ، ڈارک، یا اپنے ڈیوائس کی خودکار پیروی کریں۔';

  @override
  String get changelog04Item3 =>
      'ہمیں ریٹ کریں — Play Store پر جائزہ چھوڑنے کے لیے مینو میں ستارے پر ٹیپ کریں۔';

  @override
  String get changelog04Item4 => 'نئیاں کیا ہیں — آپ اسے پڑھ رہے ہیں۔';

  @override
  String get changelog04Item5 =>
      'GitHub پر فیڈبیک دیکھیں — issue کی حالت دیکھنے کے لیے کسی بھی سبمیشن پر ٹیپ کریں۔';

  @override
  String get unlockAppBarTitle => 'جنریٹرز فعال کریں';

  @override
  String get unlockTitle => 'WiFi، رابطہ\nاور کیلنڈر جنریٹرز فعال کریں';

  @override
  String unlockDescription(Object price) {
    return 'WiFi نیٹ ورکس، رابطہ کارڈز\nاور کیلنڈر ایونٹس کے لیے QR کوڈ بنائیں۔\n$price ایک بار۔ کوئی سبسکرپشن نہیں۔';
  }

  @override
  String unlockEnableButton(Object price) {
    return 'فعال کریں — $price';
  }

  @override
  String get unlockRestoreButton => 'پچھلی خریداری بحال کریں';

  @override
  String get unlockDialogTitle => 'جنریٹرز کھولیں';

  @override
  String unlockDialogContent(Object price) {
    return 'ایک بار کی $price خریداری کے ساتھ WiFi، vCard اور کیلنڈر جنریٹرز کو غیر مقفل کریں۔ دیگر چھ قسم کے جنریٹر ہمیشہ مفت ہوتے ہیں۔';
  }

  @override
  String get actionOpen => 'کھولیں';

  @override
  String get actionCopy => 'کاپی کریں';

  @override
  String get actionGenerate => 'بنائیں';

  @override
  String get actionShare => 'شیئر کریں';

  @override
  String get actionEmail => 'ای میل';

  @override
  String get actionCall => 'کال کریں';

  @override
  String get actionSendSms => 'ایس ایم ایس بھیجیں';

  @override
  String get actionConnect => 'جڑیں';

  @override
  String get actionCopySsid => 'SSID کاپی کریں';

  @override
  String get actionCopyPassword => 'پاسورڈ کاپی کریں';

  @override
  String get actionOpenMaps => 'میپس کھولیں';

  @override
  String get actionOpenInWhatsApp => 'WhatsApp میں کھولیں';

  @override
  String get actionOpenInTelegram => 'Telegram میں کھولیں';

  @override
  String get actionOpenInSignal => 'Signal میں کھولیں';

  @override
  String get actionOpenInTwitter => 'Twitter میں کھولیں';

  @override
  String get actionFaceTimeCall => 'FaceTime کال';

  @override
  String get actionOpenInSkype => 'Skype میں کھولیں';

  @override
  String get actionOpenInWallet => 'والت میں کھولیں';

  @override
  String get actionCopyAddress => 'پتہ کاپی کریں';

  @override
  String get actionOpenInPayPal => 'PayPal میں کھولیں';

  @override
  String get actionOpenStore => 'اسٹور کھولیں';

  @override
  String get actionAddContact => 'رابطہ شامل کریں';

  @override
  String get actionAddToCalendar => 'کیلنڈر میں شامل کریں';

  @override
  String get actionSave => 'محفوظ کریں';

  @override
  String get actionCancel => 'منسوخ کریں';

  @override
  String showMoreRows(Object hiddenRows, Object rowWord) {
    return '$hiddenRows مزید $rowWord دکھائیں';
  }

  @override
  String showMoreFields(Object hiddenRows) {
    return '$hiddenRows مزید دکھائیں';
  }

  @override
  String get showLess => 'کم دکھائیں';

  @override
  String get fieldEvent => 'ایونٹ';

  @override
  String get fieldStartTime => 'شروع کا وقت';

  @override
  String get fieldEndTime => 'اختتام کا وقت';

  @override
  String get fieldLocation => 'مقام';

  @override
  String get fieldDescription => 'تفصیل';

  @override
  String get fieldOrganizer => 'منتظم';

  @override
  String get fieldAttendee => 'شریک';

  @override
  String get fieldName => 'نام';

  @override
  String get fieldPhone => 'فون';

  @override
  String get fieldEmail => 'ای میل';

  @override
  String get fieldOrganization => 'تنصیب';

  @override
  String get fieldTitle => 'عنوان';

  @override
  String get fieldAddress => 'پتہ';

  @override
  String get fieldNotes => 'نوٹس';

  @override
  String get fieldSsid => 'SSID';

  @override
  String get fieldPassword => 'پاسورڈ';

  @override
  String get fieldEncryption => 'خفیہ کاری';

  @override
  String get fieldUrl => 'URL';

  @override
  String get fieldNickname => 'عرفی نام';

  @override
  String get fieldRole => 'کردار';

  @override
  String get fieldBirthday => 'سالگرہ';

  @override
  String get row => 'قطار';

  @override
  String get rows => 'قطاریں';

  @override
  String get monthJan => 'جنوری';

  @override
  String get monthFeb => 'فروری';

  @override
  String get monthMar => 'مارچ';

  @override
  String get monthApr => 'اپریل';

  @override
  String get monthMay => 'مئی';

  @override
  String get monthJun => 'جون';

  @override
  String get monthJul => 'جولائی';

  @override
  String get monthAug => 'اگست';

  @override
  String get monthSep => 'ستمبر';

  @override
  String get monthOct => 'اکتوبر';

  @override
  String get monthNov => 'نومبر';

  @override
  String get monthDec => 'دسمبر';

  @override
  String get cardCtaTitle => 'PlainQR سے کھولیں';

  @override
  String get cardSavedToDownloads => 'کارڈ ڈاؤنلوڈز میں محفوظ ہو گیا';

  @override
  String get cardShareFailed => 'کارڈ شیئر نہیں ہو سکا';

  @override
  String get cardSaveFailed => 'کارڈ محفوظ نہیں ہو سکا';

  @override
  String get shareSubjectQrCode => 'QR کوڈ';

  @override
  String get copiedToClipboard => 'کلپ بورڈ میں کاپی ہو گیا';

  @override
  String get sharing => 'شیئر ہو رہا ہے…';

  @override
  String get openingLink => 'لنک کھل رہا ہے';

  @override
  String get invalidUrl => 'غلط URL';

  @override
  String get couldNotOpenLink => 'یہ لنک نہیں کھل سکا';

  @override
  String get errorOpeningLink => 'لنک کھولنے میں خرابی';

  @override
  String get wifiNoSsid => 'اس QR کوڈ میں کوئی SSID نہیں ملا';

  @override
  String wifiConnected(Object ssid) {
    return '$ssid سے جڑ گیا';
  }

  @override
  String wifiCouldNotConnect(Object ssid) {
    return '$ssid سے نہیں جڑ سکا';
  }

  @override
  String get wifiConnectionFailed => 'کنکشن ناکام ہو گیا';

  @override
  String get contactOpenFailed => 'رابطہ نہیں کھل سکا';

  @override
  String get eventOpenFailed => 'ایونٹ نہیں کھل سکا';

  @override
  String get confirmOpenExternalTitle => 'بیرونی مواد کھولیں؟';

  @override
  String confirmOpenExternalBody(Object url) {
    return 'نیچے دیے گئے لنک کا مواد محفوظ نہیں ہو سکتا۔ صرف اس صورت میں آگے بڑھیں جب آپ ماخذ پر بھروسہ کریں۔\n\n$url\n\n— اس ڈائیلاگ کو مستقبل میں چھوڑنے کے لیے، ترتیبات میں \"خطرناک قسم خود بخود کھولیں\" فعال کریں۔';
  }

  @override
  String get autoOpenDialogTitle => 'خطرناک قسم خود بخود کھولیں؟';

  @override
  String get autoOpenDialogContent =>
      'جب یہ ترتیب آن ہو، تو QR کوڈ سے ملنے والے URLs، فون کالز، ایس ایم ایس، اور ای میل فوری طور پر کھل جائیں گے، اس سے پہلے کہ آپ کو منزل دکھائی جائے۔ اس کا مطلب ہے کہ ایک نقصان دہ QR کوڈ بغیر آپ کی معلومات کے کال کر سکتا ہے یا آپ کو مضر صحت ویب سائٹ پر لے جا سکتا ہے۔\n\nصرف تو کریں جب آپ اس خطرے کو سمجھتے ہیں اور قبول کرتے ہیں۔';

  @override
  String get autoOpenConfirmButton => 'مجھے سمجھ ہے';

  @override
  String purchaseButton(Object price) {
    return '$price میں خریدیں';
  }

  @override
  String get storeUnavailable =>
      'Google Play Store دستیاب نہیں۔ خریداری ممکن نہیں۔';

  @override
  String get productLoadFailed => 'پروڈکٹ لوڈ نہیں ہو سکی';

  @override
  String get purchaseFailed => 'خریداری ناکام ہو گئی';

  @override
  String get noErrorsLogged => '(کوئی خرابیاں درج نہیں)';

  @override
  String get addressLookupTimedOut => 'پتہ تلاش کرنے کا وقت ختم ہو گیا';

  @override
  String get couldNotResolveAddress => 'یہ پتہ تلاش نہیں ہو سکا';

  @override
  String get locationPermissionDenied => 'مقام کی اجازت سے انکار ہو گیا';

  @override
  String get locationLookupTimedOut => 'مقام تلاش کرنے کا وقت ختم ہو گیا';

  @override
  String get couldNotGetCurrentLocation => 'موجودہ مقام حاصل نہیں ہو سکا';

  @override
  String get contactsPermissionDenied => 'رابطہ کی اجازت سے انکار ہو گیا';

  @override
  String get couldNotAccessContacts => 'رابطہ تک رسائی نہیں ہو سکی';

  @override
  String get contactImported => 'رابطہ درآمد ہو گیا';

  @override
  String get required => 'ضروری';

  @override
  String get resolving => 'حل ہو رہا ہے…';

  @override
  String get getCurrentLocation => 'موجودہ مقام حاصل کریں';

  @override
  String get importFromContacts => 'رابطہ سے درآمد کریں';

  @override
  String get tapToPickDateTime => 'تاریخ اور وقت چننے کے لیے ٹیپ کریں';

  @override
  String get formEmailAddress => 'ای میل ایڈریس';

  @override
  String get formEmailHint => 'مثلاً user@example.com';

  @override
  String get formEmailRequired => 'ضروری — @ شامل ہونا چاہیے';

  @override
  String get formSubject => 'عنوان';

  @override
  String get formBody => 'متن';

  @override
  String get formPhoneNumber => 'فون نمبر';

  @override
  String get formPhoneHint => 'مثال: 0300 1234567';

  @override
  String get formSmsHelper => 'ضروری — پیغام اختیاری ہے';

  @override
  String get formMessage => 'پیغام';

  @override
  String get formText => 'متن';

  @override
  String get formTextHint => 'کوئی بھی متن یا پیغام درج کریں';

  @override
  String get formUrl => 'URL';

  @override
  String get formUrlHint => 'example.com';

  @override
  String get formUrlHelper =>
      'ڈومین لکھیں — چاہیں تو https:// تبدیل کر سکتے ہیں';

  @override
  String get formFullName => 'پورا نام';

  @override
  String get formVcardHelper => 'ضروری — باقی تمام فیلڈز اختیاری ہیں';

  @override
  String get formOrganization => 'تنصیب';

  @override
  String get formTitle => 'عنوان';

  @override
  String get formNetworkName => 'نیٹ ورک کا نام (SSID)';

  @override
  String get formWifiSsidHint => 'مثلاً MyHomeWiFi';

  @override
  String get formSsidAutoDetected =>
      'آپ کے موجودہ نیٹ ورک سے SSID خود بخود پکڑا گیا';

  @override
  String get formWifiPassword => 'پاسورڈ';

  @override
  String get formWifiPasswordHelper => 'کھلے نیٹ ورکس کے لیے خالی چھوڑیں';

  @override
  String get formAddress => 'پتہ';

  @override
  String get formAddressHint => 'مثلاً ایفل ٹاور، پیرس';

  @override
  String get formLatitude => 'عرض (-90 سے 90)';

  @override
  String get formLongitude => 'دیرے (-180 سے 180)';

  @override
  String get formStartDate => 'شروع کی تاریخ *';

  @override
  String get formEndDate => 'اختتام کی تاریخ';

  @override
  String get formEventTitle => 'ایونٹ کا عنوان';

  @override
  String get formLocation => 'مقام';

  @override
  String get formLocationHint => 'مثلاً 123 مین اسٹریٹ یا جگہ کا نام';

  @override
  String get updateReadyMessage => 'اپ ڈیٹ انسٹال کے لیے تیار ہے';

  @override
  String get updateReadyAction => 'دوبارہ شروع کریں';
}
