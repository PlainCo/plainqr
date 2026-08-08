// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Persian (`fa`).
class AppLocalizationsFa extends AppLocalizations {
  AppLocalizationsFa([String locale = 'fa']) : super(locale);

  @override
  String get appName => 'PlainQR';

  @override
  String get appNameFull => 'PlainQR — اسکن و تولید';

  @override
  String get drawerScan => 'اسکن';

  @override
  String get drawerScanFromGallery => 'اسکن از گالری';

  @override
  String get drawerGenerator => 'تولیدکننده';

  @override
  String get drawerHistory => 'تاریخچه';

  @override
  String get drawerSettings => 'تنظیمات';

  @override
  String get scannerUnlockSnack => 'تولیدکننده‌ها باز شدند!';

  @override
  String get scannerUnlockAnnounce => 'تولیدکننده‌ها باز شدند';

  @override
  String scannerFreeTierBanner(Object price) {
    return 'رایگان — $price برای حذف';
  }

  @override
  String scannerDetectedAnnounce(Object type, Object brief) {
    return '$type شناسایی شد: $brief';
  }

  @override
  String get scannerSavedToHistory => 'در تاریخچه ذخیره شد';

  @override
  String get scannerTooltipDisableFlashlight => 'غیرفعال کردن چراغ قوه';

  @override
  String get scannerTooltipEnableFlashlight => 'فعال کردن چراغ قوه';

  @override
  String get scannerTooltipGallery => 'اسکن از گالری';

  @override
  String get scannerZoomIn => 'بزرگ‌نمایی';

  @override
  String get scannerZoomOut => 'کوچک‌نمایی';

  @override
  String scannerZoomLevel(Object level) {
    return '$level×';
  }

  @override
  String get generatorAppBarTitle => 'تولیدکننده';

  @override
  String generatorFormAppBarTitle(Object typeName) {
    return 'QR $typeName';
  }

  @override
  String get generatorCardLabel => 'برچسب کارت (اختیاری)';

  @override
  String get generatorCardLabelHint => 'مثلاً WiFi مهمان، وبسایت من';

  @override
  String get generatorPreview => 'پیش‌نمایش';

  @override
  String get generatorStyle => 'سبک:';

  @override
  String get generatorStyleLight => 'روشن';

  @override
  String get generatorStyleDark => 'تاریک';

  @override
  String get generatorStyleSticker => 'استیکر';

  @override
  String get generatorShareCard => 'اشتراک‌گذاری کارت';

  @override
  String get generatorSaveToDevice => 'ذخیره در دستگاه';

  @override
  String get generatorCopiedSnack => 'محتوای QR کپی شد';

  @override
  String get generatorCopyQrContent => 'کپی محتوای QR';

  @override
  String get typeUrl => 'URL';

  @override
  String get typeUrlDescription => 'پیوند به وبسایت یا محتوای آنلاین';

  @override
  String get typeUrlHeadline => 'اسکن برای بازدید';

  @override
  String get typePlainText => 'متن ساده';

  @override
  String get typePlainTextDescription => 'متن یا پیام آزاد';

  @override
  String get typePlainTextHeadline => 'اسکن برای خواندن';

  @override
  String get typeWifi => 'WiFi';

  @override
  String get typeWifiDescription => 'اشتراک‌گذاری اطلاعات شبکه';

  @override
  String get typeWifiHeadline => 'اسکن برای اتصال به WiFi';

  @override
  String get typeVcard => 'vCard';

  @override
  String get typeVcardDescription => 'اشتراک‌گذاری اطلاعات تماس';

  @override
  String get typeVcardHeadline => 'اسکن برای ذخیره مخاطب';

  @override
  String get typeCalendar => 'تقویم';

  @override
  String get typeCalendarDescription => 'افزودن رویداد به تقویم';

  @override
  String get typeCalendarHeadline => 'اسکن برای افزودن به تقویم';

  @override
  String get typePhone => 'تلفن';

  @override
  String get typePhoneDescription => 'شماره تلفن برای تماس';

  @override
  String get typePhoneHeadline => 'اسکن برای تماس';

  @override
  String get typeEmail => 'ایمیل';

  @override
  String get typeEmailDescription => 'نوشتن ایمیل';

  @override
  String get typeEmailHeadline => 'اسکن برای ارسال ایمیل';

  @override
  String get typeSms => 'SMS';

  @override
  String get typeSmsDescription => 'ارسال پیامک';

  @override
  String get typeSmsHeadline => 'اسکن برای ارسال پیامک';

  @override
  String get typeLocation => 'موقعیت';

  @override
  String get typeLocationDescription => 'آدرس فیزیکی یا مختصات';

  @override
  String get typeLocationHeadline => 'اسکن برای دریافت مسیر';

  @override
  String get historyAppBarTitle => 'تاریخچه اسکن';

  @override
  String get historyClearAllTooltip => 'پاک کردن همه';

  @override
  String get historyEmpty => 'هنوز اسکنی انجام نشده';

  @override
  String get historyJustNow => 'همین الان';

  @override
  String historyMinutesAgo(Object count) {
    return '$count دقیقه پیش';
  }

  @override
  String historyHoursAgo(Object count) {
    return '$count ساعت پیش';
  }

  @override
  String historyDeletedSnack(Object label) {
    return '$label حذف شد';
  }

  @override
  String get historyUndoButton => 'برگردان';

  @override
  String get historyClearDialogTitle => 'پاک کردن تاریخچه اسکن؟';

  @override
  String get historyClearDialogContent => 'این عمل قابل بازگشت نیست.';

  @override
  String get historyClearButton => 'پاک کردن';

  @override
  String get historySourceGallery => 'گالری';

  @override
  String get historySourceCamera => 'دوربین';

  @override
  String get galleryNoQrFound => 'هیچ کد QR در تصویر یافت نشد';

  @override
  String get galleryCropTitle => 'کد QR را قاب‌بندی کنید';

  @override
  String get galleryCropScan => 'اسکن';

  @override
  String get ratePromptTitle => 'از PlainQR لذت می‌برید؟';

  @override
  String get ratePromptBody =>
      'نظر شما به دیگران کمک می‌کند یک اسکنر QR خصوصی پیدا کنند.';

  @override
  String get ratePromptRate => 'امتیاز دهید';

  @override
  String get ratePromptFeedback => 'بازخورد';

  @override
  String get tilePromptTitle => 'از هر جا اسکن کنید';

  @override
  String get tilePromptBody =>
      'یک کاشی PlainQR به تنظیمات سریع اضافه کنید.\nبه پایین بکشید، ضربه بزنید، اسکن کنید — نیازی به باز کردن برنامه نیست.';

  @override
  String get tilePromptAdd => 'افزودن کاشی';

  @override
  String get settingsAppBarTitle => 'تنظیمات';

  @override
  String get settingsSectionScanning => 'اسکن';

  @override
  String get settingsSaveHistory => 'ذخیره تاریخچه اسکن';

  @override
  String get settingsSaveHistoryOn => 'اسکن‌های دوربین خودکار ذخیره می‌شوند';

  @override
  String get settingsSaveHistoryOff => 'ذخیره دستی از کارت نتیجه';

  @override
  String get settingsAutoOpen => 'باز کردن خودکار انواع خطرناک';

  @override
  String get settingsAutoOpenOn =>
      'رد شدن از تأیید برای URL، تماس، SMS و ایمیل‌ها';

  @override
  String get settingsAutoOpenOff =>
      'پرسش قبل از باز کردن URL، تماس، ارسال SMS یا نوشتن ایمیل';

  @override
  String get settingsAutoFlashlight => 'چراغ قوه خودکار هنگام اسکن';

  @override
  String get settingsAutoFlashlightOn =>
      'چراغ قوه هنگام باز شدن صفحه اسکن روشن می‌شود';

  @override
  String get settingsAutoFlashlightOff => 'چراغ قوه به صورت دستی کنترل می‌شود';

  @override
  String get settingsEnableGenerators => 'فعال کردن تولیدکننده‌ها';

  @override
  String settingsEnableGeneratorsSubtitle(Object price) {
    return 'باز کردن قفل ژنراتورهای WiFi، vCard و تقویم برای $price';
  }

  @override
  String get settingsPremiumUnlocked => 'پریمیوم باز شد';

  @override
  String get settingsPremiumUnlockedSubtitle =>
      'همه ویژگی‌های تولیدکننده فعال هستند';

  @override
  String get settingsSectionAppearance => 'ظاهر';

  @override
  String get settingsThemeSystem => 'سیستم';

  @override
  String get settingsThemeLight => 'روشن';

  @override
  String get settingsThemeDark => 'تاریک';

  @override
  String get settingsSectionLegal => 'قانونی';

  @override
  String get settingsOpenSourceLicences => 'مجوزهای متن‌باز';

  @override
  String get changelog04Item1 =>
      '۲۲ زبان — PlainQR حالا به زبان شما صحبت می‌کند. زبان خود را در تنظیمات سیستم انتخاب کنید.';

  @override
  String get changelog04Item2 =>
      'پوسته سیستم — روشن، تاریک، یا پیروی خودکار از دستگاه شما.';

  @override
  String get changelog04Item3 =>
      'امتیاز دهید — روی ستاره در منوی کلیک کنید تا در فروشگاه Play نظر بگذارید.';

  @override
  String get changelog04Item4 => 'چه خبر — در حال خواندن آن هستید.';

  @override
  String get changelog04Item5 =>
      'مشاهده بازخورد در GitHub — روی هر درخواست کلیک کنید تا وضعیت issue را ببینید.';

  @override
  String get unlockAppBarTitle => 'فعال کردن تولیدکننده‌ها';

  @override
  String get unlockTitle => 'فعال کردن تولیدکننده‌های WiFi، مخاطب\nو تقویم';

  @override
  String unlockDescription(Object price) {
    return 'تولید کدهای QR برای شبکه‌های WiFi، کارت‌های مخاطب\nو رویدادهای تقویم.\nیک بار $price. بدون اشتراک.';
  }

  @override
  String unlockEnableButton(Object price) {
    return 'فعال کردن — $price';
  }

  @override
  String get unlockRestoreButton => 'بازیابی خرید قبلی';

  @override
  String get unlockDialogTitle => 'باز کردن تولیدکننده‌ها';

  @override
  String unlockDialogContent(Object price) {
    return 'قفل ژنراتورهای WiFi، vCard و تقویم را با یک بار خرید $price باز کنید. شش نوع دیگر ژنراتور همیشه رایگان هستند.';
  }

  @override
  String get actionOpen => 'باز کردن';

  @override
  String get actionCopy => 'کپی';

  @override
  String get actionGenerate => 'تولید';

  @override
  String get actionShare => 'اشتراک‌گذاری';

  @override
  String get actionEmail => 'ایمیل';

  @override
  String get actionCall => 'تماس';

  @override
  String get actionSendSms => 'ارسال SMS';

  @override
  String get actionConnect => 'اتصال';

  @override
  String get actionCopySsid => 'کپی SSID';

  @override
  String get actionCopyPassword => 'کپی رمز عبور';

  @override
  String get actionOpenMaps => 'باز کردن نقشه';

  @override
  String get actionOpenInWhatsApp => 'باز کردن در WhatsApp';

  @override
  String get actionOpenInTelegram => 'باز کردن در Telegram';

  @override
  String get actionOpenInSignal => 'باز کردن در Signal';

  @override
  String get actionOpenInTwitter => 'باز کردن در Twitter';

  @override
  String get actionFaceTimeCall => 'تماس FaceTime';

  @override
  String get actionOpenInSkype => 'باز کردن در Skype';

  @override
  String get actionOpenInWallet => 'باز کردن در کیف پول';

  @override
  String get actionCopyAddress => 'کپی آدرس';

  @override
  String get actionOpenInPayPal => 'باز کردن در PayPal';

  @override
  String get actionOpenStore => 'باز کردن فروشگاه';

  @override
  String get actionAddContact => 'افزودن مخاطب';

  @override
  String get actionAddToCalendar => 'افزودن به تقویم';

  @override
  String get actionSave => 'ذخیره';

  @override
  String get actionCancel => 'لغو';

  @override
  String showMoreRows(Object hiddenRows, Object rowWord) {
    return 'نمایش $hiddenRows $rowWord بیشتر';
  }

  @override
  String showMoreFields(Object hiddenRows) {
    return 'نمایش $hiddenRows مورد بیشتر';
  }

  @override
  String get showLess => 'نمایش کمتر';

  @override
  String get fieldEvent => 'رویداد';

  @override
  String get fieldStartTime => 'زمان شروع';

  @override
  String get fieldEndTime => 'زمان پایان';

  @override
  String get fieldLocation => 'موقعیت';

  @override
  String get fieldDescription => 'توضیحات';

  @override
  String get fieldOrganizer => 'برگزارکننده';

  @override
  String get fieldAttendee => 'شرکت‌کننده';

  @override
  String get fieldName => 'نام';

  @override
  String get fieldPhone => 'تلفن';

  @override
  String get fieldEmail => 'ایمیل';

  @override
  String get fieldOrganization => 'سازمان';

  @override
  String get fieldTitle => 'عنوان';

  @override
  String get fieldAddress => 'آدرس';

  @override
  String get fieldNotes => 'یادداشت‌ها';

  @override
  String get fieldSsid => 'SSID';

  @override
  String get fieldPassword => 'رمز عبور';

  @override
  String get fieldEncryption => 'رمزگذاری';

  @override
  String get fieldUrl => 'URL';

  @override
  String get fieldNickname => 'نام مستعار';

  @override
  String get fieldRole => 'نقش';

  @override
  String get fieldBirthday => 'تاریخ تولد';

  @override
  String get row => 'ردیف';

  @override
  String get rows => 'ردیف';

  @override
  String get monthJan => 'ژانویه';

  @override
  String get monthFeb => 'فوریه';

  @override
  String get monthMar => 'مارس';

  @override
  String get monthApr => 'آوریل';

  @override
  String get monthMay => 'مه';

  @override
  String get monthJun => 'ژوئن';

  @override
  String get monthJul => 'ژوئیه';

  @override
  String get monthAug => 'اوت';

  @override
  String get monthSep => 'سپتامبر';

  @override
  String get monthOct => 'اکتبر';

  @override
  String get monthNov => 'نوامبر';

  @override
  String get monthDec => 'دسامبر';

  @override
  String get cardCtaTitle => 'باز کردن با PlainQR';

  @override
  String get cardSavedToDownloads => 'کارت در بارگذاری‌ها ذخیره شد';

  @override
  String get cardShareFailed => 'امکان اشتراک‌گذاری کارت نبود';

  @override
  String get cardSaveFailed => 'امکان ذخیره کارت نبود';

  @override
  String get shareSubjectQrCode => 'کد QR';

  @override
  String get copiedToClipboard => 'در حافظه کپی شد';

  @override
  String get sharing => 'اشتراک‌گذاری…';

  @override
  String get openingLink => 'باز کردن پیوند';

  @override
  String get invalidUrl => 'URL نامعتبر';

  @override
  String get couldNotOpenLink => 'امکان باز کردن این پیوند نبود';

  @override
  String get errorOpeningLink => 'خطا در باز کردن پیوند';

  @override
  String get wifiNoSsid => 'هیچ SSID در این کد QR یافت نشد';

  @override
  String wifiConnected(Object ssid) {
    return 'به $ssid متصل شد';
  }

  @override
  String wifiCouldNotConnect(Object ssid) {
    return 'امکان اتصال به $ssid نبود';
  }

  @override
  String get wifiConnectionFailed => 'اتصال ناموفق بود';

  @override
  String get contactOpenFailed => 'امکان باز کردن مخاطب نبود';

  @override
  String get eventOpenFailed => 'امکان باز کردن رویداد نبود';

  @override
  String get confirmOpenExternalTitle => 'باز کردن محتوای خارجی؟';

  @override
  String confirmOpenExternalBody(Object url) {
    return 'محتوای پیوند زیر ممکن است ایمن نباشد. فقط در صورت اعتماد به منبع ادامه دهید.\n\n$url\n\n— برای رد شدن از این گفتگو در آینده، «باز کردن خودکار انواع خطرناک» را در تنظیمات فعال کنید.';
  }

  @override
  String get autoOpenDialogTitle => 'باز کردن خودکار انواع خطرناک؟';

  @override
  String get autoOpenDialogContent =>
      'با فعال بودن این تنظیم، URLها، تماس‌های تلفنی، SMS و ایمیل‌ها از کدهای QR فوراً باز می‌شوند بدون نمایش مقصد. این به این معنی است که یک کد QR مخرب می‌تواند تماس تلفنی برقرار کند یا شما را به سایت مضری بفرستد بدون اطلاع شما.\n\nفقط در صورت درک و پذیرش این خطر فعال کنید.';

  @override
  String get autoOpenConfirmButton => 'متوجه شدم';

  @override
  String purchaseButton(Object price) {
    return 'خرید $price';
  }

  @override
  String get storeUnavailable =>
      'فروشگاه Google Play در دسترس نیست. امکان خرید وجود ندارد.';

  @override
  String get productLoadFailed => 'بارگذاری محصول ناموفق بود';

  @override
  String get purchaseFailed => 'خرید ناموفق بود';

  @override
  String get noErrorsLogged => '(خطایی ثبت نشده)';

  @override
  String get addressLookupTimedOut => 'جستجوی آدرس زمان‌بر شد';

  @override
  String get couldNotResolveAddress => 'امکان حل این آدرس نبود';

  @override
  String get locationPermissionDenied => 'اجازه موقعیت رد شد';

  @override
  String get locationLookupTimedOut => 'جستجوی موقعیت زمان‌بر شد';

  @override
  String get couldNotGetCurrentLocation => 'امکان دریافت موقعیت فعلی نبود';

  @override
  String get contactsPermissionDenied => 'اجازه مخاطبین رد شد';

  @override
  String get couldNotAccessContacts => 'امکان دسترسی به مخاطبین نبود';

  @override
  String get contactImported => 'مخاطب وارد شد';

  @override
  String get required => 'الزامی';

  @override
  String get resolving => 'در حال حل…';

  @override
  String get getCurrentLocation => 'دریافت موقعیت فعلی';

  @override
  String get importFromContacts => 'وارد کردن از مخاطبین';

  @override
  String get tapToPickDateTime => 'برای انتخاب تاریخ و زمان ضربه بزنید';

  @override
  String get formEmailAddress => 'آدرس ایمیل';

  @override
  String get formEmailHint => 'مثلاً user@example.com';

  @override
  String get formEmailRequired => 'الزامی — باید حاوی @ باشد';

  @override
  String get formSubject => 'موضوع';

  @override
  String get formBody => 'متن';

  @override
  String get formPhoneNumber => 'شماره تلفن';

  @override
  String get formPhoneHint => 'مثلاً ۰۹۱۲۱۲۳۴۵۶۷';

  @override
  String get formSmsHelper => 'الزامی — پیام اختیاری است';

  @override
  String get formMessage => 'پیام';

  @override
  String get formText => 'متن';

  @override
  String get formTextHint => 'هر متن یا پیامی را وارد کنید';

  @override
  String get formUrl => 'URL';

  @override
  String get formUrlHint => 'example.com';

  @override
  String get formUrlHelper =>
      'دامنه را تایپ کنید — در صورت نیاز می‌توانید https:// را تغییر دهید';

  @override
  String get formFullName => 'نام کامل';

  @override
  String get formVcardHelper => 'الزامی — سایر فیلدها اختیاری هستند';

  @override
  String get formOrganization => 'سازمان';

  @override
  String get formTitle => 'عنوان';

  @override
  String get formNetworkName => 'نام شبکه (SSID)';

  @override
  String get formWifiSsidHint => 'مثلاً MyHomeWiFi';

  @override
  String get formSsidAutoDetected =>
      'SSID به صورت خودکار از شبکه فعلی شما شناسایی شد';

  @override
  String get formWifiPassword => 'رمز عبور';

  @override
  String get formWifiPasswordHelper => 'برای شبکه‌های باز خالی بگذارید';

  @override
  String get formAddress => 'آدرس';

  @override
  String get formAddressHint => 'مثلاً برج ایفل، پاریس';

  @override
  String get formLatitude => 'عرض جغرافیایی (-90 تا 90)';

  @override
  String get formLongitude => 'طول جغرافیایی (-180 تا 180)';

  @override
  String get formStartDate => 'تاریخ شروع *';

  @override
  String get formEndDate => 'تاریخ پایان';

  @override
  String get formEventTitle => 'عنوان رویداد';

  @override
  String get formLocation => 'موقعیت';

  @override
  String get formLocationHint => 'مثلاً خیابان ولیعصر ۱۲۳ یا نام مکان';

  @override
  String get updateReadyMessage => 'به‌روزرسانی آماده نصب است';

  @override
  String get updateReadyAction => 'راه‌اندازی مجدد';
}
