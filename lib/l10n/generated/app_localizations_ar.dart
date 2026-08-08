// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Arabic (`ar`).
class AppLocalizationsAr extends AppLocalizations {
  AppLocalizationsAr([String locale = 'ar']) : super(locale);

  @override
  String get appName => 'PlainQR';

  @override
  String get appNameFull => 'PlainQR — Scan & Generate';

  @override
  String get drawerScan => 'مسح';

  @override
  String get drawerScanFromGallery => 'مسح من المعرض';

  @override
  String get drawerGenerator => 'المُولّد';

  @override
  String get drawerHistory => 'السجل';

  @override
  String get drawerSettings => 'الإعدادات';

  @override
  String get scannerUnlockSnack => 'تم فتح المُولّدات!';

  @override
  String get scannerUnlockAnnounce => 'تم فتح المُولّدات';

  @override
  String scannerFreeTierBanner(Object price) {
    return 'مجاني — $price للإزالة';
  }

  @override
  String scannerDetectedAnnounce(Object type, Object brief) {
    return 'تم اكتشاف $type: $brief';
  }

  @override
  String get scannerSavedToHistory => 'تم الحفظ في السجل';

  @override
  String get scannerTooltipDisableFlashlight => 'إيقاف المصباح';

  @override
  String get scannerTooltipEnableFlashlight => 'تشغيل المصباح';

  @override
  String get scannerTooltipGallery => 'مسح من المعرض';

  @override
  String get scannerZoomIn => 'تكبير';

  @override
  String get scannerZoomOut => 'تصغير';

  @override
  String scannerZoomLevel(Object level) {
    return '$level×';
  }

  @override
  String get generatorAppBarTitle => 'المُولّد';

  @override
  String generatorFormAppBarTitle(Object typeName) {
    return '$typeName QR';
  }

  @override
  String get generatorCardLabel => 'تسمية البطاقة (اختياري)';

  @override
  String get generatorCardLabelHint => 'مثال: شبكة ضيوف، موقعي الإلكتروني';

  @override
  String get generatorPreview => 'معاينة';

  @override
  String get generatorStyle => 'النمط:';

  @override
  String get generatorStyleLight => 'فاتح';

  @override
  String get generatorStyleDark => 'داكن';

  @override
  String get generatorStyleSticker => 'ملصق';

  @override
  String get generatorShareCard => 'مشاركة البطاقة';

  @override
  String get generatorSaveToDevice => 'حفظ على الجهاز';

  @override
  String get generatorCopiedSnack => 'تم نسخ محتوى QR';

  @override
  String get generatorCopyQrContent => 'نسخ محتوى QR';

  @override
  String get typeUrl => 'URL';

  @override
  String get typeUrlDescription =>
      'رابط إلى موقع إلكتروني أو محتوى عبر الإنترنت';

  @override
  String get typeUrlHeadline => 'امسح للزيارة';

  @override
  String get typePlainText => 'نص عادي';

  @override
  String get typePlainTextDescription => 'نص حر أو رسالة';

  @override
  String get typePlainTextHeadline => 'امسح للقراءة';

  @override
  String get typeWifi => 'WiFi';

  @override
  String get typeWifiDescription => 'مشاركة بيانات اتصالك بالشبكة';

  @override
  String get typeWifiHeadline => 'امسح للاتصال بالـ WiFi';

  @override
  String get typeVcard => 'vCard';

  @override
  String get typeVcardDescription => 'مشاركة بيانات الاتصال';

  @override
  String get typeVcardHeadline => 'امسح لحفظ جهة الاتصال';

  @override
  String get typeCalendar => 'التقويم';

  @override
  String get typeCalendarDescription => 'إضافة حدث إلى أي تقويم';

  @override
  String get typeCalendarHeadline => 'امسح للإضافة إلى التقويم';

  @override
  String get typePhone => 'الهاتف';

  @override
  String get typePhoneDescription => 'رقم هاتف للاتصال';

  @override
  String get typePhoneHeadline => 'امسح للاتصال';

  @override
  String get typeEmail => 'البريد الإلكتروني';

  @override
  String get typeEmailDescription => 'إنشاء رسالة بريد إلكتروني';

  @override
  String get typeEmailHeadline => 'امسح لإرسال بريد إلكتروني';

  @override
  String get typeSms => 'SMS';

  @override
  String get typeSmsDescription => 'إرسال رسالة نصية';

  @override
  String get typeSmsHeadline => 'امسح للإرسال';

  @override
  String get typeLocation => 'الموقع';

  @override
  String get typeLocationDescription => 'عنوان فعلي أو إحداثيات';

  @override
  String get typeLocationHeadline => 'امسح للحصول على الاتجاهات';

  @override
  String get historyAppBarTitle => 'سجل المسح';

  @override
  String get historyClearAllTooltip => 'حذف الكل';

  @override
  String get historyEmpty => 'لا توجد مسحات بعد';

  @override
  String get historyJustNow => 'الآن';

  @override
  String historyMinutesAgo(Object count) {
    return 'منذ $count د';
  }

  @override
  String historyHoursAgo(Object count) {
    return 'منذ $count س';
  }

  @override
  String historyDeletedSnack(Object label) {
    return 'تم حذف $label';
  }

  @override
  String get historyUndoButton => 'تراجع';

  @override
  String get historyClearDialogTitle => 'مسح سجل المسح؟';

  @override
  String get historyClearDialogContent => 'لا يمكن التراجع عن هذا الإجراء.';

  @override
  String get historyClearButton => 'مسح';

  @override
  String get historySourceGallery => 'المعرض';

  @override
  String get historySourceCamera => 'الكاميرا';

  @override
  String get galleryNoQrFound => 'لم يتم العثور على رمز QR في الصورة';

  @override
  String get galleryCropTitle => 'تأطير رمز QR';

  @override
  String get galleryCropScan => 'مسح';

  @override
  String get ratePromptTitle => 'هل تستمتع بـ PlainQR؟';

  @override
  String get ratePromptBody =>
      'تقييمك يساعد الآخرين في العثور على ماسح QR خاص.';

  @override
  String get ratePromptRate => 'قيّمنا';

  @override
  String get ratePromptFeedback => 'ملاحظات';

  @override
  String get tilePromptTitle => 'امسح من أي مكان';

  @override
  String get tilePromptBody =>
      'أضف بلاطة PlainQR إلى الإعدادات السريعة.\nاسحب للأسفل، انقر، امسح — لا حاجة لفتح التطبيق.';

  @override
  String get tilePromptAdd => 'إضافة بلاطة';

  @override
  String get settingsAppBarTitle => 'الإعدادات';

  @override
  String get settingsSectionScanning => 'المسح';

  @override
  String get settingsSaveHistory => 'حفظ سجل المسح';

  @override
  String get settingsSaveHistoryOn => 'يتم حفظ مسحات الكاميرا تلقائيًا';

  @override
  String get settingsSaveHistoryOff => 'الحفظ يدويًا من بطاقة النتيجة';

  @override
  String get settingsAutoOpen => 'فتح الأنواع الخطرة تلقائيًا';

  @override
  String get settingsAutoOpenOn =>
      'تخطي التأكيد للروابط والمكالمات وSMS والبريد الإلكتروني';

  @override
  String get settingsAutoOpenOff =>
      'السؤال قبل فتح الروابط أو إجراء المكالمات أو إرسال SMS أو إنشاء رسائل إلكترونية';

  @override
  String get settingsAutoFlashlight => 'تشغيل المصباح تلقائيًا عند المسح';

  @override
  String get settingsAutoFlashlightOn => 'يُشغّل المصباح عند فتح شاشة المسح';

  @override
  String get settingsAutoFlashlightOff => 'التحكم في المصباح يدويًا';

  @override
  String get settingsEnableGenerators => 'تفعيل المُولّدات';

  @override
  String settingsEnableGeneratorsSubtitle(Object price) {
    return 'فتح مولدات WiFi وvCard والتقويم لـ $price';
  }

  @override
  String get settingsPremiumUnlocked => 'تم فتح النسخة المميزة';

  @override
  String get settingsPremiumUnlockedSubtitle => 'جميع ميزات المُولّد مفعّلة';

  @override
  String get settingsSectionAppearance => 'المظهر';

  @override
  String get settingsThemeSystem => 'النظام';

  @override
  String get settingsThemeLight => 'فاتح';

  @override
  String get settingsThemeDark => 'داكن';

  @override
  String get settingsSectionLegal => 'المعلومات القانونية';

  @override
  String get settingsOpenSourceLicences => 'تراخيص المصادر المفتوحة';

  @override
  String get changelog04Item1 =>
      '22 لغة — PlainQR الآن يتحدث لغتك. اختر لغتك من إعدادات النظام.';

  @override
  String get changelog04Item2 =>
      'سمة النظام — فاتح، أو داكن، أو يتبع جهازك تلقائيًا.';

  @override
  String get changelog04Item3 =>
      'قيّمنا — اضغط على النجمة في القائمة لتترك تقييمًا على متجر التطبيقات.';

  @override
  String get changelog04Item4 => 'ما الجديد — أنت تقرأه الآن.';

  @override
  String get changelog04Item5 =>
      'عرض الملاحظات على GitHub — اضغط على أي طلب لحالة issue.';

  @override
  String get unlockAppBarTitle => 'تفعيل المُولّدات';

  @override
  String get unlockTitle => 'تفعيل مولّدات WiFi، جهات الاتصال\nوالتقويم';

  @override
  String unlockDescription(Object price) {
    return 'إنشاء أكواد QR لشبكات WiFi، بطاقات جهات الاتصال،\nوأحداث التقويم.\n$price لمرة واحدة. بدون اشتراك.';
  }

  @override
  String unlockEnableButton(Object price) {
    return 'تفعيل — $price';
  }

  @override
  String get unlockRestoreButton => 'استعادة الشراء السابق';

  @override
  String get unlockDialogTitle => 'فتح المُولّدات';

  @override
  String unlockDialogContent(Object price) {
    return 'افتح مولدات WiFi وvCard والتقويم من خلال شراء $price لمرة واحدة. أنواع المولدات الستة الأخرى تكون دائمًا مجانية.';
  }

  @override
  String get actionOpen => 'فتح';

  @override
  String get actionCopy => 'نسخ';

  @override
  String get actionGenerate => 'إنشاء';

  @override
  String get actionShare => 'مشاركة';

  @override
  String get actionEmail => 'بريد إلكتروني';

  @override
  String get actionCall => 'اتصال';

  @override
  String get actionSendSms => 'إرسال SMS';

  @override
  String get actionConnect => 'اتصال';

  @override
  String get actionCopySsid => 'نسخ SSID';

  @override
  String get actionCopyPassword => 'نسخ كلمة المرور';

  @override
  String get actionOpenMaps => 'فتح الخرائط';

  @override
  String get actionOpenInWhatsApp => 'فتح في WhatsApp';

  @override
  String get actionOpenInTelegram => 'فتح في Telegram';

  @override
  String get actionOpenInSignal => 'فتح في Signal';

  @override
  String get actionOpenInTwitter => 'فتح في Twitter';

  @override
  String get actionFaceTimeCall => 'مكالمة FaceTime';

  @override
  String get actionOpenInSkype => 'فتح في Skype';

  @override
  String get actionOpenInWallet => 'فتح في Wallet';

  @override
  String get actionCopyAddress => 'نسخ العنوان';

  @override
  String get actionOpenInPayPal => 'فتح في PayPal';

  @override
  String get actionOpenStore => 'فتح المتجر';

  @override
  String get actionAddContact => 'إضافة جهة اتصال';

  @override
  String get actionAddToCalendar => 'إضافة إلى التقويم';

  @override
  String get actionSave => 'حفظ';

  @override
  String get actionCancel => 'إلغاء';

  @override
  String showMoreRows(Object hiddenRows, Object rowWord) {
    return 'إظهار $hiddenRows $rowWord إضافية';
  }

  @override
  String showMoreFields(Object hiddenRows) {
    return 'إظهار $hiddenRows إضافية';
  }

  @override
  String get showLess => 'عرض أقل';

  @override
  String get fieldEvent => 'حدث';

  @override
  String get fieldStartTime => 'وقت البداية';

  @override
  String get fieldEndTime => 'وقت النهاية';

  @override
  String get fieldLocation => 'الموقع';

  @override
  String get fieldDescription => 'الوصف';

  @override
  String get fieldOrganizer => 'المنظم';

  @override
  String get fieldAttendee => 'الحاضر';

  @override
  String get fieldName => 'الاسم';

  @override
  String get fieldPhone => 'الهاتف';

  @override
  String get fieldEmail => 'البريد الإلكتروني';

  @override
  String get fieldOrganization => 'المنظمة';

  @override
  String get fieldTitle => 'اللقب';

  @override
  String get fieldAddress => 'العنوان';

  @override
  String get fieldNotes => 'ملاحظات';

  @override
  String get fieldSsid => 'SSID';

  @override
  String get fieldPassword => 'كلمة المرور';

  @override
  String get fieldEncryption => 'التشفير';

  @override
  String get fieldUrl => 'URL';

  @override
  String get fieldNickname => 'الاسم المستعار';

  @override
  String get fieldRole => 'الدور';

  @override
  String get fieldBirthday => 'عيد الميلاد';

  @override
  String get row => 'صف';

  @override
  String get rows => 'صفوف';

  @override
  String get monthJan => 'يناير';

  @override
  String get monthFeb => 'فبراير';

  @override
  String get monthMar => 'مارس';

  @override
  String get monthApr => 'أبريل';

  @override
  String get monthMay => 'مايو';

  @override
  String get monthJun => 'يونيو';

  @override
  String get monthJul => 'يوليو';

  @override
  String get monthAug => 'أغسطس';

  @override
  String get monthSep => 'سبتمبر';

  @override
  String get monthOct => 'أكتوبر';

  @override
  String get monthNov => 'نوفمبر';

  @override
  String get monthDec => 'ديسمبر';

  @override
  String get cardCtaTitle => 'فتح مع PlainQR';

  @override
  String get cardSavedToDownloads => 'تم حفظ البطاقة في التنزيلات';

  @override
  String get cardShareFailed => 'تعذرت مشاركة البطاقة';

  @override
  String get cardSaveFailed => 'تعذر حفظ البطاقة';

  @override
  String get shareSubjectQrCode => 'كود QR';

  @override
  String get copiedToClipboard => 'تم النسخ إلى الحافظة';

  @override
  String get sharing => 'جارٍ المشاركة…';

  @override
  String get openingLink => 'جارٍ فتح الرابط';

  @override
  String get invalidUrl => 'رابط غير صالح';

  @override
  String get couldNotOpenLink => 'تعذر فتح هذا الرابط';

  @override
  String get errorOpeningLink => 'خطأ في فتح الرابط';

  @override
  String get wifiNoSsid => 'لم يتم العثور على SSID في كود QR هذا';

  @override
  String wifiConnected(Object ssid) {
    return 'تم الاتصال بـ $ssid';
  }

  @override
  String wifiCouldNotConnect(Object ssid) {
    return 'تعذر الاتصال بـ $ssid';
  }

  @override
  String get wifiConnectionFailed => 'فشل الاتصال';

  @override
  String get contactOpenFailed => 'تعذر فتح جهة الاتصال';

  @override
  String get eventOpenFailed => 'تعذر فتح الحدث';

  @override
  String get confirmOpenExternalTitle => 'فتح محتوى خارجي؟';

  @override
  String confirmOpenExternalBody(Object url) {
    return 'قد لا يكون المحتوى في الرابط أدناه آمنًا. واصل فقط إذا كنت تثق بالمصدر.\n\n$url\n\n— لتخطي هذا الحوار في المستقبل، قم بتفعيل \"فتح الأنواع الخطرة تلقائيًا\" في الإعدادات.';
  }

  @override
  String get autoOpenDialogTitle => 'فتح الأنواع الخطرة تلقائيًا؟';

  @override
  String get autoOpenDialogContent =>
      'عند تفعيل هذا الإعداد، سيتم فتح الروابط والمكالمات الهاتفية ورسائل SMS والرسائل الإلكترونية من أكواد QR فورًا دون عرض الوجهة لك أولاً. هذا يعني أن كود QR ضارًا قد يُجري مكالمة هاتفية أو يُوجهك إلى موقع ضار دون علمك.\n\nفعّل هذا فقط إذا كنت تفهم وتقبل هذا المخاطر.';

  @override
  String get autoOpenConfirmButton => 'أنا أفهم';

  @override
  String purchaseButton(Object price) {
    return 'شراء $price';
  }

  @override
  String get storeUnavailable =>
      'متجر Google Play غير متاح. لا يمكن إجراء المشتريات.';

  @override
  String get productLoadFailed => 'فشل تحميل المنتج';

  @override
  String get purchaseFailed => 'فشل الشراء';

  @override
  String get noErrorsLogged => '(لا توجد أخطاء مسجلة)';

  @override
  String get addressLookupTimedOut => 'انتهت مهلة البحث عن العنوان';

  @override
  String get couldNotResolveAddress => 'تعذر تحديد هذا العنوان';

  @override
  String get locationPermissionDenied => 'تم رفض إذن الموقع';

  @override
  String get locationLookupTimedOut => 'انتهت مهلة البحث عن الموقع';

  @override
  String get couldNotGetCurrentLocation => 'تعذر الحصول على الموقع الحالي';

  @override
  String get contactsPermissionDenied => 'تم رفض إذن جهات الاتصال';

  @override
  String get couldNotAccessContacts => 'تعذر الوصول إلى جهات الاتصال';

  @override
  String get contactImported => 'تم استيراد جهة الاتصال';

  @override
  String get required => 'مطلوب';

  @override
  String get resolving => 'جارٍ التحديد…';

  @override
  String get getCurrentLocation => 'الحصول على الموقع الحالي';

  @override
  String get importFromContacts => 'استيراد من جهات الاتصال';

  @override
  String get tapToPickDateTime => 'اضغط لاختيار التاريخ والوقت';

  @override
  String get formEmailAddress => 'عنوان البريد الإلكتروني';

  @override
  String get formEmailHint => 'مثال: user@example.com';

  @override
  String get formEmailRequired => 'مطلوب — يجب أن يحتوي على @';

  @override
  String get formSubject => 'الموضوع';

  @override
  String get formBody => 'النص';

  @override
  String get formPhoneNumber => 'رقم الهاتف';

  @override
  String get formPhoneHint => 'مثال: +966 55 123 4567';

  @override
  String get formSmsHelper => 'مطلوب — الرسالة اختيارية';

  @override
  String get formMessage => 'الرسالة';

  @override
  String get formText => 'النص';

  @override
  String get formTextHint => 'أدخل أي نص أو رسالة';

  @override
  String get formUrl => 'URL';

  @override
  String get formUrlHint => 'example.com';

  @override
  String get formUrlHelper =>
      'اكتب النطاق — يمكنك تغيير https:// إذا لزم الأمر';

  @override
  String get formFullName => 'الاسم الكامل';

  @override
  String get formVcardHelper => 'مطلوب — جميع الحقول الأخرى اختيارية';

  @override
  String get formOrganization => 'المنظمة';

  @override
  String get formTitle => 'اللقب';

  @override
  String get formNetworkName => 'اسم الشبكة (SSID)';

  @override
  String get formWifiSsidHint => 'مثال: MyHomeWiFi';

  @override
  String get formSsidAutoDetected => 'تم اكتشاف SSID تلقائيًا من شبكتك الحالية';

  @override
  String get formWifiPassword => 'كلمة المرور';

  @override
  String get formWifiPasswordHelper => 'اتركه فارغًا للشبكات المفتوحة';

  @override
  String get formAddress => 'العنوان';

  @override
  String get formAddressHint => 'مثال: برج إيفل، باريس';

  @override
  String get formLatitude => 'خط العرض (-90 إلى 90)';

  @override
  String get formLongitude => 'خط الطول (-180 إلى 180)';

  @override
  String get formStartDate => 'تاريخ البداية *';

  @override
  String get formEndDate => 'تاريخ النهاية';

  @override
  String get formEventTitle => 'عنوان الحدث';

  @override
  String get formLocation => 'الموقع';

  @override
  String get formLocationHint => 'مثال: 123 شارع رئيسي أو اسم المكان';

  @override
  String get updateReadyMessage => 'التحديث جاهز للتثبيت';

  @override
  String get updateReadyAction => 'إعادة التشغيل';
}
