// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Hindi (`hi`).
class AppLocalizationsHi extends AppLocalizations {
  AppLocalizationsHi([String locale = 'hi']) : super(locale);

  @override
  String get appName => 'PlainQR';

  @override
  String get appNameFull => 'PlainQR — स्कैन करें और बनाएं';

  @override
  String get drawerScan => 'स्कैन';

  @override
  String get drawerScanFromGallery => 'गैलरी से स्कैन करें';

  @override
  String get drawerGenerator => 'जनरेटर';

  @override
  String get drawerHistory => 'इतिहास';

  @override
  String get drawerSettings => 'सेटिंग्स';

  @override
  String get scannerUnlockSnack => 'जनरेटर अनलॉक हो गए!';

  @override
  String get scannerUnlockAnnounce => 'जनरेटर अनलॉक हो गए';

  @override
  String scannerFreeTierBanner(Object price) {
    return 'फ़्री प्लान — $price देकर हटाएं';
  }

  @override
  String scannerDetectedAnnounce(Object type, Object brief) {
    return '$type का पता चला: $brief';
  }

  @override
  String get scannerSavedToHistory => 'इतिहास में सहेजा गया';

  @override
  String get scannerTooltipDisableFlashlight => 'फ़्लैशलाइट बंद करें';

  @override
  String get scannerTooltipEnableFlashlight => 'फ़्लैशलाइट चालू करें';

  @override
  String get scannerTooltipGallery => 'गैलरी से स्कैन करें';

  @override
  String get scannerZoomIn => 'ज़ूम इन';

  @override
  String get scannerZoomOut => 'ज़ूम आउट';

  @override
  String scannerZoomLevel(Object level) {
    return '$level×';
  }

  @override
  String get generatorAppBarTitle => 'जनरेटर';

  @override
  String generatorFormAppBarTitle(Object typeName) {
    return '$typeName QR';
  }

  @override
  String get generatorCardLabel => 'कार्ड लेबल (वैकल्पिक)';

  @override
  String get generatorCardLabelHint => 'जैसे मेहमान WiFi, मेरी वेबसाइट';

  @override
  String get generatorPreview => 'पूर्वावलोकन';

  @override
  String get generatorStyle => 'शैली:';

  @override
  String get generatorStyleLight => 'लाइट';

  @override
  String get generatorStyleDark => 'डार्क';

  @override
  String get generatorStyleSticker => 'स्टिकर';

  @override
  String get generatorShareCard => 'कार्ड साझा करें';

  @override
  String get generatorSaveToDevice => 'डिवाइस पर सहेजें';

  @override
  String get generatorCopiedSnack => 'QR सामग्री कॉपी की गई';

  @override
  String get generatorCopyQrContent => 'QR सामग्री कॉपी करें';

  @override
  String get typeUrl => 'URL';

  @override
  String get typeUrlDescription => 'वेबसाइट या ऑनलाइन सामग्री का लिंक';

  @override
  String get typeUrlHeadline => 'विज़िट करने के लिए स्कैन करें';

  @override
  String get typePlainText => 'सादा पाठ';

  @override
  String get typePlainTextDescription => 'स्वतंत्र पाठ या संदेश';

  @override
  String get typePlainTextHeadline => 'पढ़ने के लिए स्कैन करें';

  @override
  String get typeWifi => 'WiFi';

  @override
  String get typeWifiDescription => 'अपने नेटवर्क क्रेडेंशियल साझा करें';

  @override
  String get typeWifiHeadline => 'WiFi से जुड़ने के लिए स्कैन करें';

  @override
  String get typeVcard => 'vCard';

  @override
  String get typeVcardDescription => 'संपर्क विवरण साझा करें';

  @override
  String get typeVcardHeadline => 'संपर्क सहेजने के लिए स्कैन करें';

  @override
  String get typeCalendar => 'कैलेंडर';

  @override
  String get typeCalendarDescription => 'किसी भी कैलेंडर में इवेंट जोड़ें';

  @override
  String get typeCalendarHeadline => 'कैलेंडर में जोड़ने के लिए स्कैन करें';

  @override
  String get typePhone => 'फ़ोन';

  @override
  String get typePhoneDescription => 'कॉल करने के लिए फ़ोन नंबर';

  @override
  String get typePhoneHeadline => 'कॉल करने के लिए स्कैन करें';

  @override
  String get typeEmail => 'ईमेल';

  @override
  String get typeEmailDescription => 'ईमेल लिखें';

  @override
  String get typeEmailHeadline => 'ईमेल भेजने के लिए स्कैन करें';

  @override
  String get typeSms => 'SMS';

  @override
  String get typeSmsDescription => 'टेक्स्ट संदेश भेजें';

  @override
  String get typeSmsHeadline => 'मैसेज भेजने के लिए स्कैन करें';

  @override
  String get typeLocation => 'स्थान';

  @override
  String get typeLocationDescription => 'भौतिक पता या निर्देशांक';

  @override
  String get typeLocationHeadline => 'दिशा-निर्देश के लिए स्कैन करें';

  @override
  String get historyAppBarTitle => 'स्कैन इतिहास';

  @override
  String get historyClearAllTooltip => 'सभी साफ़ करें';

  @override
  String get historyEmpty => 'अभी तक कोई स्कैन नहीं';

  @override
  String get historyJustNow => 'अभी';

  @override
  String historyMinutesAgo(Object count) {
    return '$countमि पहले';
  }

  @override
  String historyHoursAgo(Object count) {
    return '$countघ पहले';
  }

  @override
  String historyDeletedSnack(Object label) {
    return '$label हटाया गया';
  }

  @override
  String get historyUndoButton => 'पूर्ववत करें';

  @override
  String get historyClearDialogTitle => 'स्कैन इतिहास साफ़ करें?';

  @override
  String get historyClearDialogContent => 'यह क्रिया पूर्ववत नहीं की जा सकती।';

  @override
  String get historyClearButton => 'साफ़ करें';

  @override
  String get historySourceGallery => 'गैलरी';

  @override
  String get historySourceCamera => 'कैमरा';

  @override
  String get galleryNoQrFound => 'छवि में कोई QR कोड नहीं मिला';

  @override
  String get galleryCropTitle => 'QR कोड फ़्रेम करें';

  @override
  String get galleryCropScan => 'स्कैन करें';

  @override
  String get ratePromptTitle => 'PlainQR पसंद आ रहा है?';

  @override
  String get ratePromptBody =>
      'आपकी समीक्षा दूसरों को एक निजी QR स्कैनर खोजने में मदद करती है।';

  @override
  String get ratePromptRate => 'रेट करें';

  @override
  String get ratePromptFeedback => 'प्रतिक्रिया';

  @override
  String get tilePromptTitle => 'कहीं से भी स्कैन करें';

  @override
  String get tilePromptBody =>
      'त्वरित सेटिंग्स में PlainQR टाइल जोड़ें।\nनीचे स्वाइप करें, टैप करें, स्कैन करें — ऐप खोलने की ज़रूरत नहीं।';

  @override
  String get tilePromptAdd => 'टाइल जोड़ें';

  @override
  String get settingsAppBarTitle => 'सेटिंग्स';

  @override
  String get settingsSectionScanning => 'स्कैनिंग';

  @override
  String get settingsSaveHistory => 'स्कैन इतिहास सहेजें';

  @override
  String get settingsSaveHistoryOn =>
      'कैमरा स्कैन स्वचालित रूप से सहेजे जाते हैं';

  @override
  String get settingsSaveHistoryOff => 'परिणाम कार्ड से मैन्युअल रूप से सहेजें';

  @override
  String get settingsAutoOpen => 'खतरनाक प्रकार स्वतः खोलें';

  @override
  String get settingsAutoOpenOn =>
      'URL, कॉल, SMS और ईमेल के लिए पुष्टिकरण छोड़ें';

  @override
  String get settingsAutoOpenOff =>
      'URL खोलने, कॉल करने, SMS भेजने या ईमेल लिखने से पहले पूछें';

  @override
  String get settingsAutoFlashlight => 'स्कैन पर ऑटो-फ़्लैशलाइट';

  @override
  String get settingsAutoFlashlightOn =>
      'स्कैन स्क्रीन खुलने पर फ़्लैशलाइट चालू हो जाती है';

  @override
  String get settingsAutoFlashlightOff =>
      'फ़्लैशलाइट मैन्युअल रूप से नियंत्रित';

  @override
  String get settingsEnableGenerators => 'जनरेटर सक्षम करें';

  @override
  String settingsEnableGeneratorsSubtitle(Object price) {
    return '$price के लिए WiFi, vCard और कैलेंडर जनरेटर अनलॉक करें';
  }

  @override
  String get settingsPremiumUnlocked => 'प्रीमियम अनलॉक';

  @override
  String get settingsPremiumUnlockedSubtitle => 'सभी जनरेटर सुविधाएं सक्षम हैं';

  @override
  String get settingsSectionAppearance => 'दिखावट';

  @override
  String get settingsThemeSystem => 'सिस्टम';

  @override
  String get settingsThemeLight => 'लाइट';

  @override
  String get settingsThemeDark => 'डार्क';

  @override
  String get settingsSectionLegal => 'कानूनी';

  @override
  String get settingsOpenSourceLicences => 'ओपन सोर्स लाइसेंस';

  @override
  String get changelog04Item1 =>
      '22 भाषाएँ — PlainQR अब आपकी भाषा बोलता है। सिस्टम सेटिंग्स में अपनी भाषा चुनें।';

  @override
  String get changelog04Item2 =>
      'सिस्टम थीम — लाइट, डार्क, या अपने डिवाइस का अनुसरण स्वचालित रूप से करें।';

  @override
  String get changelog04Item3 =>
      'हमें रेट करें — Play Store पर समीक्षा छोड़ने के लिए मेनू में स्टार पर टैप करें।';

  @override
  String get changelog04Item4 => 'नया क्या है — आप इसे पढ़ रहे हैं।';

  @override
  String get changelog04Item5 =>
      'GitHub पर फीडबैक देखें — issue की स्थिति देखने के लिए किसी भी सबमिशन पर टैप करें।';

  @override
  String get unlockAppBarTitle => 'जनरेटर सक्षम करें';

  @override
  String get unlockTitle => 'WiFi, संपर्क\n& कैलेंडर जनरेटर सक्षम करें';

  @override
  String unlockDescription(Object price) {
    return 'WiFi नेटवर्क, संपर्क कार्ड,\nऔर कैलेंडर इवेंट के लिए QR कोड बनाएं।\n$price एक बार। कोई सदस्यता नहीं।';
  }

  @override
  String unlockEnableButton(Object price) {
    return 'सक्षम करें — $price';
  }

  @override
  String get unlockRestoreButton => 'पिछली खरीद बहाल करें';

  @override
  String get unlockDialogTitle => 'जनरेटर अनलॉक करें';

  @override
  String unlockDialogContent(Object price) {
    return 'एक बार की $price खरीद के साथ WiFi, vCard और कैलेंडर जनरेटर को अनलॉक करें। अन्य छह जनरेटर प्रकार हमेशा निःशुल्क होते हैं।';
  }

  @override
  String get actionOpen => 'खोलें';

  @override
  String get actionCopy => 'कॉपी करें';

  @override
  String get actionGenerate => 'बनाएं';

  @override
  String get actionShare => 'साझा करें';

  @override
  String get actionEmail => 'ईमेल';

  @override
  String get actionCall => 'कॉल';

  @override
  String get actionSendSms => 'SMS भेजें';

  @override
  String get actionConnect => 'कनेक्ट करें';

  @override
  String get actionCopySsid => 'SSID कॉपी करें';

  @override
  String get actionCopyPassword => 'पासवर्ड कॉपी करें';

  @override
  String get actionOpenMaps => 'मानचित्र खोलें';

  @override
  String get actionOpenInWhatsApp => 'WhatsApp में खोलें';

  @override
  String get actionOpenInTelegram => 'Telegram में खोलें';

  @override
  String get actionOpenInSignal => 'Signal में खोलें';

  @override
  String get actionOpenInTwitter => 'Twitter में खोलें';

  @override
  String get actionFaceTimeCall => 'FaceTime कॉल';

  @override
  String get actionOpenInSkype => 'Skype में खोलें';

  @override
  String get actionOpenInWallet => 'Wallet में खोलें';

  @override
  String get actionCopyAddress => 'पता कॉपी करें';

  @override
  String get actionOpenInPayPal => 'PayPal में खोलें';

  @override
  String get actionOpenStore => 'स्टोर खोलें';

  @override
  String get actionAddContact => 'संपर्क जोड़ें';

  @override
  String get actionAddToCalendar => 'कैलेंडर में जोड़ें';

  @override
  String get actionSave => 'सहेजें';

  @override
  String get actionCancel => 'रद्द करें';

  @override
  String showMoreRows(Object hiddenRows, Object rowWord) {
    return '$hiddenRows और $rowWord दिखाएं';
  }

  @override
  String showMoreFields(Object hiddenRows) {
    return '$hiddenRows और दिखाएं';
  }

  @override
  String get showLess => 'कम दिखाएं';

  @override
  String get fieldEvent => 'इवेंट';

  @override
  String get fieldStartTime => 'शुरू का समय';

  @override
  String get fieldEndTime => 'समाप्ति का समय';

  @override
  String get fieldLocation => 'स्थान';

  @override
  String get fieldDescription => 'विवरण';

  @override
  String get fieldOrganizer => 'आयोजक';

  @override
  String get fieldAttendee => 'सहभागी';

  @override
  String get fieldName => 'नाम';

  @override
  String get fieldPhone => 'फ़ोन';

  @override
  String get fieldEmail => 'ईमेल';

  @override
  String get fieldOrganization => 'संगठन';

  @override
  String get fieldTitle => 'शीर्षक';

  @override
  String get fieldAddress => 'पता';

  @override
  String get fieldNotes => 'नोट्स';

  @override
  String get fieldSsid => 'SSID';

  @override
  String get fieldPassword => 'पासवर्ड';

  @override
  String get fieldEncryption => 'एन्क्रिप्शन';

  @override
  String get fieldUrl => 'URL';

  @override
  String get fieldNickname => 'उपनाम';

  @override
  String get fieldRole => 'भूमिका';

  @override
  String get fieldBirthday => 'जन्मदिन';

  @override
  String get row => 'पंक्ति';

  @override
  String get rows => 'पंक्तियां';

  @override
  String get monthJan => 'जनवरी';

  @override
  String get monthFeb => 'फरवरी';

  @override
  String get monthMar => 'मार्च';

  @override
  String get monthApr => 'अप्रैल';

  @override
  String get monthMay => 'मई';

  @override
  String get monthJun => 'जून';

  @override
  String get monthJul => 'जुलाई';

  @override
  String get monthAug => 'अगस्त';

  @override
  String get monthSep => 'सितंबर';

  @override
  String get monthOct => 'अक्टूबर';

  @override
  String get monthNov => 'नवंबर';

  @override
  String get monthDec => 'दिसंबर';

  @override
  String get cardCtaTitle => 'PlainQR से खोलें';

  @override
  String get cardSavedToDownloads => 'कार्ड डाउनलोड में सहेजा गया';

  @override
  String get cardShareFailed => 'कार्ड साझा नहीं हो सका';

  @override
  String get cardSaveFailed => 'कार्ड सहेजा नहीं जा सका';

  @override
  String get shareSubjectQrCode => 'QR कोड';

  @override
  String get copiedToClipboard => 'क्लिपबोर्ड पर कॉपी किया गया';

  @override
  String get sharing => 'साझा हो रहा है…';

  @override
  String get openingLink => 'लिंक खोला जा रहा है';

  @override
  String get invalidUrl => 'अमान्य URL';

  @override
  String get couldNotOpenLink => 'यह लिंक नहीं खुल सका';

  @override
  String get errorOpeningLink => 'लिंक खोलने में त्रुटि';

  @override
  String get wifiNoSsid => 'इस QR कोड में कोई SSID नहीं मिला';

  @override
  String wifiConnected(Object ssid) {
    return '$ssid से कनेक्ट हो गया';
  }

  @override
  String wifiCouldNotConnect(Object ssid) {
    return '$ssid से कनेक्ट नहीं हो सका';
  }

  @override
  String get wifiConnectionFailed => 'कनेक्शन विफल';

  @override
  String get contactOpenFailed => 'संपर्क नहीं खुल सका';

  @override
  String get eventOpenFailed => 'इवेंट नहीं खुल सका';

  @override
  String get confirmOpenExternalTitle => 'बाहरी सामग्री खोलें?';

  @override
  String confirmOpenExternalBody(Object url) {
    return 'नीचे दिए गए लिंक पर सामग्री सुरक्षित नहीं हो सकती। केवल तभी आगे बढ़ें जब आप स्रोत पर भरोसा करते हों।\n\n$url\n\n— इस डायलॉग को भविष्य में छोड़ने के लिए, सेटिंग्स में \"खतरनाक प्रकार ऑटो-खोलें\" सक्षम करें।';
  }

  @override
  String get autoOpenDialogTitle => 'खतरनाक प्रकार ऑटो-खोलें?';

  @override
  String get autoOpenDialogContent =>
      'इस सेटिंग के चालू होने पर, QR कोड से मिले URL, फ़ोन कॉल, SMS और ईमेल बिना गंतव्य दिखाए तुरंत खुल जाएंगे। इसका मतलब है कि एक दुर्भावनापूर्ण QR कोड आपकी जानकारी के बिना फ़ोन कॉल कर सकता है या आपको किसी हानिकारक साइट पर भेज सकता है।\n\nकेवल तभी सक्षम करें जब आप इस जोखिम को समझते और स्वीकार करते हों।';

  @override
  String get autoOpenConfirmButton => 'मैं समझता हूं';

  @override
  String purchaseButton(Object price) {
    return '$price में खरीदें';
  }

  @override
  String get storeUnavailable =>
      'Google Play Store उपलब्ध नहीं है। खरीदारी नहीं की जा सकती।';

  @override
  String get productLoadFailed => 'उत्पाद लोड करने में विफल';

  @override
  String get purchaseFailed => 'खरीद विफल';

  @override
  String get noErrorsLogged => '(कोई त्रुटि लॉग नहीं)';

  @override
  String get addressLookupTimedOut => 'पता खोज का समय समाप्त हुआ';

  @override
  String get couldNotResolveAddress => 'वह पता हल नहीं हो सका';

  @override
  String get locationPermissionDenied => 'स्थान की अनुमति अस्वीकृत';

  @override
  String get locationLookupTimedOut => 'स्थान खोज का समय समाप्त हुआ';

  @override
  String get couldNotGetCurrentLocation => 'वर्तमान स्थान प्राप्त नहीं हो सका';

  @override
  String get contactsPermissionDenied => 'संपर्कों की अनुमति अस्वीकृत';

  @override
  String get couldNotAccessContacts => 'संपर्कों तक पहुंच नहीं हो सकी';

  @override
  String get contactImported => 'संपर्क आयात किया गया';

  @override
  String get required => 'आवश्यक';

  @override
  String get resolving => 'हल हो रहा है…';

  @override
  String get getCurrentLocation => 'वर्तमान स्थान प्राप्त करें';

  @override
  String get importFromContacts => 'संपर्कों से आयात करें';

  @override
  String get tapToPickDateTime => 'तिथि और समय चुनने के लिए टैप करें';

  @override
  String get formEmailAddress => 'ईमेल पता';

  @override
  String get formEmailHint => 'जैसे user@example.com';

  @override
  String get formEmailRequired => 'आवश्यक — में @ होना चाहिए';

  @override
  String get formSubject => 'विषय';

  @override
  String get formBody => 'मुख्य भाग';

  @override
  String get formPhoneNumber => 'फ़ोन नंबर';

  @override
  String get formPhoneHint => 'जैसे +91 98765 43210';

  @override
  String get formSmsHelper => 'आवश्यक — संदेश वैकल्पिक है';

  @override
  String get formMessage => 'संदेश';

  @override
  String get formText => 'पाठ';

  @override
  String get formTextHint => 'कोई भी पाठ या संदेश दर्ज करें';

  @override
  String get formUrl => 'URL';

  @override
  String get formUrlHint => 'example.com';

  @override
  String get formUrlHelper =>
      'डोमेन टाइप करें — चाहें तो https:// बदल सकते हैं';

  @override
  String get formFullName => 'पूरा नाम';

  @override
  String get formVcardHelper => 'आवश्यक — अन्य सभी फ़ील्ड वैकल्पिक हैं';

  @override
  String get formOrganization => 'संगठन';

  @override
  String get formTitle => 'शीर्षक';

  @override
  String get formNetworkName => 'नेटवर्क नाम (SSID)';

  @override
  String get formWifiSsidHint => 'जैसे MyHomeWiFi';

  @override
  String get formSsidAutoDetected =>
      'आपके वर्तमान नेटवर्क से SSID स्वचालित रूप से पता चला';

  @override
  String get formWifiPassword => 'पासवर्ड';

  @override
  String get formWifiPasswordHelper => 'खुले नेटवर्क के लिए खाली छोड़ें';

  @override
  String get formAddress => 'पता';

  @override
  String get formAddressHint => 'जैसे एलिफ़ेल टॉवर, पेरिस';

  @override
  String get formLatitude => 'अक्षांश (-90 से 90)';

  @override
  String get formLongitude => 'देशांतर (-180 से 180)';

  @override
  String get formStartDate => 'आरंभ तिथि *';

  @override
  String get formEndDate => 'समाप्ति तिथि';

  @override
  String get formEventTitle => 'इवेंट शीर्षक';

  @override
  String get formLocation => 'स्थान';

  @override
  String get formLocationHint => 'जैसे 123 मेन स्ट्रीट या स्थान का नाम';

  @override
  String get updateReadyMessage => 'अपडेट इंस्टॉल के लिए तैयार';

  @override
  String get updateReadyAction => 'पुनः आरंभ करें';
}
