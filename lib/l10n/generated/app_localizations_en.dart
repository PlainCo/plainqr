// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get appName => 'PlainQR';

  @override
  String get appNameFull => 'PlainQR — Scan & Generate';

  @override
  String get drawerScan => 'Scan';

  @override
  String get drawerScanFromGallery => 'Scan from Gallery';

  @override
  String get drawerGenerator => 'Generator';

  @override
  String get drawerHistory => 'History';

  @override
  String get drawerSettings => 'Settings';

  @override
  String get scannerUnlockSnack => 'Generators unlocked!';

  @override
  String get scannerUnlockAnnounce => 'Generators unlocked';

  @override
  String scannerFreeTierBanner(Object price) {
    return 'Free tier — $price to remove';
  }

  @override
  String scannerDetectedAnnounce(Object type, Object brief) {
    return 'Detected $type: $brief';
  }

  @override
  String get scannerSavedToHistory => 'Saved to history';

  @override
  String get scannerTooltipDisableFlashlight => 'Disable flashlight';

  @override
  String get scannerTooltipEnableFlashlight => 'Enable flashlight';

  @override
  String get scannerTooltipGallery => 'Scan from gallery';

  @override
  String get scannerZoomIn => 'Zoom in';

  @override
  String get scannerZoomOut => 'Zoom out';

  @override
  String scannerZoomLevel(Object level) {
    return '${level}x';
  }

  @override
  String get generatorAppBarTitle => 'Generator';

  @override
  String generatorFormAppBarTitle(Object typeName) {
    return '$typeName QR';
  }

  @override
  String get generatorCardLabel => 'Card label (optional)';

  @override
  String get generatorCardLabelHint => 'e.g. Guest WiFi, My Website';

  @override
  String get generatorPreview => 'Preview';

  @override
  String get generatorStyle => 'Style:';

  @override
  String get generatorStyleLight => 'Light';

  @override
  String get generatorStyleDark => 'Dark';

  @override
  String get generatorStyleSticker => 'Sticker';

  @override
  String get generatorShareCard => 'Share Card';

  @override
  String get generatorSaveToDevice => 'Save to Device';

  @override
  String get generatorCopiedSnack => 'Copied QR content';

  @override
  String get generatorCopyQrContent => 'Copy QR Content';

  @override
  String get typeUrl => 'URL';

  @override
  String get typeUrlDescription => 'Link to a website or online content';

  @override
  String get typeUrlHeadline => 'Scan to visit';

  @override
  String get typePlainText => 'Plain text';

  @override
  String get typePlainTextDescription => 'Free-form text or message';

  @override
  String get typePlainTextHeadline => 'Scan to read';

  @override
  String get typeWifi => 'WiFi';

  @override
  String get typeWifiDescription => 'Share your network credentials';

  @override
  String get typeWifiHeadline => 'Scan to join WiFi';

  @override
  String get typeVcard => 'vCard';

  @override
  String get typeVcardDescription => 'Share contact details';

  @override
  String get typeVcardHeadline => 'Scan to save contact';

  @override
  String get typeCalendar => 'Calendar';

  @override
  String get typeCalendarDescription => 'Add an event to any calendar';

  @override
  String get typeCalendarHeadline => 'Scan to add to calendar';

  @override
  String get typePhone => 'Phone';

  @override
  String get typePhoneDescription => 'A phone number to call';

  @override
  String get typePhoneHeadline => 'Scan to call';

  @override
  String get typeEmail => 'Email';

  @override
  String get typeEmailDescription => 'Compose an email';

  @override
  String get typeEmailHeadline => 'Scan to email';

  @override
  String get typeSms => 'SMS';

  @override
  String get typeSmsDescription => 'Send a text message';

  @override
  String get typeSmsHeadline => 'Scan to text';

  @override
  String get typeLocation => 'Location';

  @override
  String get typeLocationDescription => 'A physical address or coordinates';

  @override
  String get typeLocationHeadline => 'Scan for directions';

  @override
  String get historyAppBarTitle => 'Scan History';

  @override
  String get historyClearAllTooltip => 'Clear all';

  @override
  String get historyEmpty => 'No scans yet';

  @override
  String get historyJustNow => 'Just now';

  @override
  String historyMinutesAgo(Object count) {
    return '${count}m ago';
  }

  @override
  String historyHoursAgo(Object count) {
    return '${count}h ago';
  }

  @override
  String historyDeletedSnack(Object label) {
    return 'Deleted $label';
  }

  @override
  String get historyUndoButton => 'Undo';

  @override
  String get historyClearDialogTitle => 'Clear Scan History?';

  @override
  String get historyClearDialogContent => 'This action cannot be undone.';

  @override
  String get historyClearButton => 'Clear';

  @override
  String get historySourceGallery => 'Gallery';

  @override
  String get historySourceCamera => 'Camera';

  @override
  String get galleryNoQrFound => 'No QR code found in image';

  @override
  String get galleryCropTitle => 'Frame the QR code';

  @override
  String get galleryCropScan => 'Scan';

  @override
  String get ratePromptTitle => 'Enjoying PlainQR?';

  @override
  String get ratePromptBody =>
      'Your review helps others find a private QR scanner.';

  @override
  String get ratePromptRate => 'Rate Us';

  @override
  String get ratePromptFeedback => 'Feedback';

  @override
  String get tilePromptTitle => 'Scan from anywhere';

  @override
  String get tilePromptBody =>
      'Add a PlainQR tile to your Quick Settings.\nSwipe down, tap, scan — no need to open the app.';

  @override
  String get tilePromptAdd => 'Add Tile';

  @override
  String get settingsAppBarTitle => 'Settings';

  @override
  String get settingsSectionScanning => 'Scanning';

  @override
  String get settingsSaveHistory => 'Save Scan History';

  @override
  String get settingsSaveHistoryOn => 'Camera scans saved automatically';

  @override
  String get settingsSaveHistoryOff => 'Save manually from result card';

  @override
  String get settingsAutoOpen => 'Auto-open Dangerous Types';

  @override
  String get settingsAutoOpenOn =>
      'Skip confirmation for URLs, calls, SMS, and emails';

  @override
  String get settingsAutoOpenOff =>
      'Ask before opening URLs, making calls, sending SMS, or composing emails';

  @override
  String get settingsAutoFlashlight => 'Auto-Flashlight on Scan';

  @override
  String get settingsAutoFlashlightOn =>
      'Flashlight turns on when scan screen opens';

  @override
  String get settingsAutoFlashlightOff => 'Flashlight controlled manually';

  @override
  String get settingsEnableGenerators => 'Enable Generators';

  @override
  String settingsEnableGeneratorsSubtitle(Object price) {
    return 'Unlock the WiFi, vCard and Calendar generators for $price';
  }

  @override
  String get settingsPremiumUnlocked => 'Premium Unlocked';

  @override
  String get settingsPremiumUnlockedSubtitle =>
      'All generator features are enabled';

  @override
  String get settingsSectionAppearance => 'Appearance';

  @override
  String get settingsThemeSystem => 'System';

  @override
  String get settingsThemeLight => 'Light';

  @override
  String get settingsThemeDark => 'Dark';

  @override
  String get settingsSectionLegal => 'Legal';

  @override
  String get settingsOpenSourceLicences => 'Open Source Licences';

  @override
  String get changelog04Item1 =>
      '22 languages — PlainQR now speaks your language. Pick yours in system settings.';

  @override
  String get changelog04Item2 =>
      'System theme — light, dark, or follow your device automatically.';

  @override
  String get changelog04Item3 =>
      'Rate Us — tap the star in the menu to leave a review on the Play Store.';

  @override
  String get changelog04Item4 => 'What’s New — you’re reading it.';

  @override
  String get changelog04Item5 =>
      'View feedback on GitHub — tap any submission to see the issue status.';

  @override
  String get unlockAppBarTitle => 'Enable Generators';

  @override
  String get unlockTitle => 'Enable WiFi, Contact\n& Calendar generators';

  @override
  String unlockDescription(Object price) {
    return 'Generate QR codes for WiFi networks, contact cards,\nand calendar events.\n$price once. No subscription.';
  }

  @override
  String unlockEnableButton(Object price) {
    return 'Enable — $price';
  }

  @override
  String get unlockRestoreButton => 'Restore previous purchase';

  @override
  String get unlockDialogTitle => 'Unlock Generators';

  @override
  String unlockDialogContent(Object price) {
    return 'Unlock the WiFi, vCard and Calendar generators with a one-time $price purchase. The other six generator types are always free.';
  }

  @override
  String get actionOpen => 'Open';

  @override
  String get actionCopy => 'Copy';

  @override
  String get actionGenerate => 'Generate';

  @override
  String get actionShare => 'Share';

  @override
  String get actionEmail => 'Email';

  @override
  String get actionCall => 'Call';

  @override
  String get actionSendSms => 'Send SMS';

  @override
  String get actionConnect => 'Connect';

  @override
  String get actionCopySsid => 'Copy SSID';

  @override
  String get actionCopyPassword => 'Copy Password';

  @override
  String get actionOpenMaps => 'Open Maps';

  @override
  String get actionOpenInWhatsApp => 'Open in WhatsApp';

  @override
  String get actionOpenInTelegram => 'Open in Telegram';

  @override
  String get actionOpenInSignal => 'Open in Signal';

  @override
  String get actionOpenInTwitter => 'Open in Twitter';

  @override
  String get actionFaceTimeCall => 'FaceTime Call';

  @override
  String get actionOpenInSkype => 'Open in Skype';

  @override
  String get actionOpenInWallet => 'Open in Wallet';

  @override
  String get actionCopyAddress => 'Copy Address';

  @override
  String get actionOpenInPayPal => 'Open in PayPal';

  @override
  String get actionOpenStore => 'Open Store';

  @override
  String get actionAddContact => 'Add Contact';

  @override
  String get actionAddToCalendar => 'Add to Calendar';

  @override
  String get actionSave => 'Save';

  @override
  String get actionCancel => 'Cancel';

  @override
  String showMoreRows(Object hiddenRows, Object rowWord) {
    return 'Show $hiddenRows more $rowWord';
  }

  @override
  String showMoreFields(Object hiddenRows) {
    return 'Show $hiddenRows more';
  }

  @override
  String get showLess => 'Show less';

  @override
  String get fieldEvent => 'Event';

  @override
  String get fieldStartTime => 'Start Time';

  @override
  String get fieldEndTime => 'End Time';

  @override
  String get fieldLocation => 'Location';

  @override
  String get fieldDescription => 'Description';

  @override
  String get fieldOrganizer => 'Organizer';

  @override
  String get fieldAttendee => 'Attendee';

  @override
  String get fieldName => 'Name';

  @override
  String get fieldPhone => 'Phone';

  @override
  String get fieldEmail => 'Email';

  @override
  String get fieldOrganization => 'Organization';

  @override
  String get fieldTitle => 'Title';

  @override
  String get fieldAddress => 'Address';

  @override
  String get fieldNotes => 'Notes';

  @override
  String get fieldSsid => 'SSID';

  @override
  String get fieldPassword => 'Password';

  @override
  String get fieldEncryption => 'Encryption';

  @override
  String get fieldUrl => 'URL';

  @override
  String get fieldNickname => 'Nickname';

  @override
  String get fieldRole => 'Role';

  @override
  String get fieldBirthday => 'Birthday';

  @override
  String get row => 'row';

  @override
  String get rows => 'rows';

  @override
  String get monthJan => 'Jan';

  @override
  String get monthFeb => 'Feb';

  @override
  String get monthMar => 'Mar';

  @override
  String get monthApr => 'Apr';

  @override
  String get monthMay => 'May';

  @override
  String get monthJun => 'Jun';

  @override
  String get monthJul => 'Jul';

  @override
  String get monthAug => 'Aug';

  @override
  String get monthSep => 'Sep';

  @override
  String get monthOct => 'Oct';

  @override
  String get monthNov => 'Nov';

  @override
  String get monthDec => 'Dec';

  @override
  String get cardCtaTitle => 'Open with PlainQR';

  @override
  String get cardSavedToDownloads => 'Saved card to Downloads';

  @override
  String get cardShareFailed => 'Could not share card';

  @override
  String get cardSaveFailed => 'Could not save card';

  @override
  String get shareSubjectQrCode => 'QR Code';

  @override
  String get copiedToClipboard => 'Copied to clipboard';

  @override
  String get sharing => 'Sharing…';

  @override
  String get openingLink => 'Opening link';

  @override
  String get invalidUrl => 'Invalid URL';

  @override
  String get couldNotOpenLink => 'Could not open this link';

  @override
  String get errorOpeningLink => 'Error opening link';

  @override
  String get wifiNoSsid => 'No SSID found in this QR code';

  @override
  String wifiConnected(Object ssid) {
    return 'Connected to $ssid';
  }

  @override
  String wifiCouldNotConnect(Object ssid) {
    return 'Could not connect to $ssid';
  }

  @override
  String get wifiConnectionFailed => 'Connection failed';

  @override
  String get contactOpenFailed => 'Could not open contact';

  @override
  String get eventOpenFailed => 'Could not open event';

  @override
  String get confirmOpenExternalTitle => 'Open External Content?';

  @override
  String confirmOpenExternalBody(Object url) {
    return 'The content at the link below may not be safe. Only proceed if you trust the source.\n\n$url\n\n— To skip this dialog in the future, enable \"Auto-open dangerous types\" in Settings.';
  }

  @override
  String get autoOpenDialogTitle => 'Auto-open Dangerous Types?';

  @override
  String get autoOpenDialogContent =>
      'With this setting ON, URLs, phone calls, SMS, and emails from QR codes will open immediately without showing you the destination first. This means a malicious QR code could make a phone call or send you to a harmful site without your knowledge.\n\nOnly enable this if you understand and accept this risk.';

  @override
  String get autoOpenConfirmButton => 'I Understand';

  @override
  String purchaseButton(Object price) {
    return 'Purchase $price';
  }

  @override
  String get storeUnavailable =>
      'Google Play Store not available. Cannot make purchases.';

  @override
  String get productLoadFailed => 'Failed to load product';

  @override
  String get purchaseFailed => 'Purchase failed';

  @override
  String get noErrorsLogged => '(no errors logged)';

  @override
  String get addressLookupTimedOut => 'Address lookup timed out';

  @override
  String get couldNotResolveAddress => 'Could not resolve that address';

  @override
  String get locationPermissionDenied => 'Location permission denied';

  @override
  String get locationLookupTimedOut => 'Location lookup timed out';

  @override
  String get couldNotGetCurrentLocation => 'Could not get current location';

  @override
  String get contactsPermissionDenied => 'Contacts permission denied';

  @override
  String get couldNotAccessContacts => 'Could not access contacts';

  @override
  String get contactImported => 'Contact imported';

  @override
  String get required => 'Required';

  @override
  String get resolving => 'Resolving…';

  @override
  String get getCurrentLocation => 'Get Current Location';

  @override
  String get importFromContacts => 'Import from contacts';

  @override
  String get tapToPickDateTime => 'Tap to pick date & time';

  @override
  String get formEmailAddress => 'Email address';

  @override
  String get formEmailHint => 'e.g. user@example.com';

  @override
  String get formEmailRequired => 'Required — must contain @';

  @override
  String get formSubject => 'Subject';

  @override
  String get formBody => 'Body';

  @override
  String get formPhoneNumber => 'Phone number';

  @override
  String get formPhoneHint => 'e.g. +1 555 123 4567';

  @override
  String get formSmsHelper => 'Required — message is optional';

  @override
  String get formMessage => 'Message';

  @override
  String get formText => 'Text';

  @override
  String get formTextHint => 'Enter any text or message';

  @override
  String get formUrl => 'URL';

  @override
  String get formUrlHint => 'example.com';

  @override
  String get formUrlHelper =>
      'Type a domain — you can change https:// if needed';

  @override
  String get formFullName => 'Full name';

  @override
  String get formVcardHelper => 'Required — all other fields are optional';

  @override
  String get formOrganization => 'Organization';

  @override
  String get formTitle => 'Title';

  @override
  String get formNetworkName => 'Network name (SSID)';

  @override
  String get formWifiSsidHint => 'e.g. MyHomeWiFi';

  @override
  String get formSsidAutoDetected =>
      'SSID auto-detected from your current network';

  @override
  String get formWifiPassword => 'Password';

  @override
  String get formWifiPasswordHelper => 'Leave empty for open networks';

  @override
  String get formAddress => 'Address';

  @override
  String get formAddressHint => 'e.g. Eiffel Tower, Paris';

  @override
  String get formLatitude => 'Latitude (-90 to 90)';

  @override
  String get formLongitude => 'Longitude (-180 to 180)';

  @override
  String get formStartDate => 'Start date *';

  @override
  String get formEndDate => 'End date';

  @override
  String get formEventTitle => 'Event title';

  @override
  String get formLocation => 'Location';

  @override
  String get formLocationHint => 'e.g. 123 Main St or venue name';

  @override
  String get updateReadyMessage => 'Update ready to install';

  @override
  String get updateReadyAction => 'Restart';
}
