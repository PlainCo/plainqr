// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Romanian Moldavian Moldovan (`ro`).
class AppLocalizationsRo extends AppLocalizations {
  AppLocalizationsRo([String locale = 'ro']) : super(locale);

  @override
  String get appName => 'PlainQR';

  @override
  String get appNameFull => 'PlainQR — Scanează și Generează';

  @override
  String get drawerScan => 'Scanează';

  @override
  String get drawerScanFromGallery => 'Scanează din Galerie';

  @override
  String get drawerGenerator => 'Generator';

  @override
  String get drawerHistory => 'Istoric';

  @override
  String get drawerSettings => 'Setări';

  @override
  String get scannerUnlockSnack => 'Generatoarele au fost deblocate!';

  @override
  String get scannerUnlockAnnounce => 'Generatoarele au fost deblocate';

  @override
  String scannerFreeTierBanner(Object price) {
    return 'Nivel gratuit — $price pentru a elimina';
  }

  @override
  String scannerDetectedAnnounce(Object type, Object brief) {
    return 'Detectat $type: $brief';
  }

  @override
  String get scannerSavedToHistory => 'Salvat în istoric';

  @override
  String get scannerTooltipDisableFlashlight => 'Dezactivează lanterna';

  @override
  String get scannerTooltipEnableFlashlight => 'Activează lanterna';

  @override
  String get scannerTooltipGallery => 'Scanează din galerie';

  @override
  String get scannerZoomIn => 'Mărire';

  @override
  String get scannerZoomOut => 'Micșorare';

  @override
  String scannerZoomLevel(Object level) {
    return '$level×';
  }

  @override
  String get generatorAppBarTitle => 'Generator';

  @override
  String generatorFormAppBarTitle(Object typeName) {
    return 'QR $typeName';
  }

  @override
  String get generatorCardLabel => 'Etichetă card (opțional)';

  @override
  String get generatorCardLabelHint => 'ex. WiFi Invitați, Site-ul Meu';

  @override
  String get generatorPreview => 'Previzualizare';

  @override
  String get generatorStyle => 'Stil:';

  @override
  String get generatorStyleLight => 'Deschis';

  @override
  String get generatorStyleDark => 'Întunecat';

  @override
  String get generatorStyleSticker => 'Autocolant';

  @override
  String get generatorShareCard => 'Partajează Cardul';

  @override
  String get generatorSaveToDevice => 'Salvează pe Dispozitiv';

  @override
  String get generatorCopiedSnack => 'Conținutul QR a fost copiat';

  @override
  String get generatorCopyQrContent => 'Copiază Conținutul QR';

  @override
  String get typeUrl => 'URL';

  @override
  String get typeUrlDescription => 'Link către un site web sau conținut online';

  @override
  String get typeUrlHeadline => 'Scanează pentru a vizita';

  @override
  String get typePlainText => 'Text simplu';

  @override
  String get typePlainTextDescription => 'Text sau mesaj liber';

  @override
  String get typePlainTextHeadline => 'Scanează pentru a citi';

  @override
  String get typeWifi => 'WiFi';

  @override
  String get typeWifiDescription =>
      'Partajează datele de autentificare ale rețelei';

  @override
  String get typeWifiHeadline => 'Scanează pentru a te conecta la WiFi';

  @override
  String get typeVcard => 'vCard';

  @override
  String get typeVcardDescription => 'Partajează datele de contact';

  @override
  String get typeVcardHeadline => 'Scanează pentru a salva contactul';

  @override
  String get typeCalendar => 'Calendar';

  @override
  String get typeCalendarDescription => 'Adaugă un eveniment în orice calendar';

  @override
  String get typeCalendarHeadline => 'Scanează pentru a adăuga în calendar';

  @override
  String get typePhone => 'Telefon';

  @override
  String get typePhoneDescription => 'Un număr de telefon de apelat';

  @override
  String get typePhoneHeadline => 'Scanează pentru a apela';

  @override
  String get typeEmail => 'Email';

  @override
  String get typeEmailDescription => 'Compune un email';

  @override
  String get typeEmailHeadline => 'Scanează pentru a trimite email';

  @override
  String get typeSms => 'SMS';

  @override
  String get typeSmsDescription => 'Trimite un mesaj text';

  @override
  String get typeSmsHeadline => 'Scanează pentru a trimite mesaj';

  @override
  String get typeLocation => 'Locație';

  @override
  String get typeLocationDescription => 'O adresă fizică sau coordonate';

  @override
  String get typeLocationHeadline => 'Scanează pentru indicații';

  @override
  String get historyAppBarTitle => 'Istoric Scanări';

  @override
  String get historyClearAllTooltip => 'Șterge tot';

  @override
  String get historyEmpty => 'Nicio scanare încă';

  @override
  String get historyJustNow => 'Acum';

  @override
  String historyMinutesAgo(Object count) {
    return 'acum ${count}m';
  }

  @override
  String historyHoursAgo(Object count) {
    return 'acum ${count}o';
  }

  @override
  String historyDeletedSnack(Object label) {
    return 'Șters $label';
  }

  @override
  String get historyUndoButton => 'Anulează';

  @override
  String get historyClearDialogTitle => 'Ștergi Istoricul Scanărilor?';

  @override
  String get historyClearDialogContent =>
      'Această acțiune nu poate fi anulată.';

  @override
  String get historyClearButton => 'Șterge';

  @override
  String get historySourceGallery => 'Galerie';

  @override
  String get historySourceCamera => 'Cameră';

  @override
  String get galleryNoQrFound => 'Niciun cod QR găsit în imagine';

  @override
  String get galleryCropTitle => 'Încadrează codul QR';

  @override
  String get galleryCropScan => 'Scanează';

  @override
  String get ratePromptTitle => 'Îți place PlainQR?';

  @override
  String get ratePromptBody =>
      'Recenzia ta îi ajută pe alții să găsească un scanner QR privat.';

  @override
  String get ratePromptRate => 'Evaluează';

  @override
  String get ratePromptFeedback => 'Feedback';

  @override
  String get tilePromptTitle => 'Scanează de oriunde';

  @override
  String get tilePromptBody =>
      'Adaugă un tile PlainQR în Setări rapide.\nGlisează în jos, atinge, scanează — nu e nevoie să deschizi aplicația.';

  @override
  String get tilePromptAdd => 'Adaugă Tile';

  @override
  String get settingsAppBarTitle => 'Setări';

  @override
  String get settingsSectionScanning => 'Scanare';

  @override
  String get settingsSaveHistory => 'Salvează Istoricul Scanărilor';

  @override
  String get settingsSaveHistoryOn =>
      'Scanările cu camera sunt salvate automat';

  @override
  String get settingsSaveHistoryOff => 'Salvează manual din cardul de rezultat';

  @override
  String get settingsAutoOpen => 'Deschide automat tipurile periculoase';

  @override
  String get settingsAutoOpenOn =>
      'Omite confirmarea pentru URL-uri, apeluri, SMS și emailuri';

  @override
  String get settingsAutoOpenOff =>
      'Confirmă înainte de a deschide URL-uri, a efectua apeluri, a trimite SMS sau a compune emailuri';

  @override
  String get settingsAutoFlashlight => 'Lanternă Automată la Scanare';

  @override
  String get settingsAutoFlashlightOn =>
      'Lanterna se aprinde când ecranul de scanare se deschide';

  @override
  String get settingsAutoFlashlightOff => 'Lanterna este controlată manual';

  @override
  String get settingsEnableGenerators => 'Activează Generatoarele';

  @override
  String settingsEnableGeneratorsSubtitle(Object price) {
    return 'Deblocați generatoarele WiFi, vCard și Calendar pentru $price';
  }

  @override
  String get settingsPremiumUnlocked => 'Premium Deblocat';

  @override
  String get settingsPremiumUnlockedSubtitle =>
      'Toate funcțiile generatorului sunt activate';

  @override
  String get settingsSectionAppearance => 'Aspect';

  @override
  String get settingsThemeSystem => 'Sistem';

  @override
  String get settingsThemeLight => 'Luminos';

  @override
  String get settingsThemeDark => 'Întunecat';

  @override
  String get settingsSectionLegal => 'Juridic';

  @override
  String get settingsOpenSourceLicences => 'Licențe Open Source';

  @override
  String get changelog04Item1 =>
      '22 de limbi — PlainQR vorbește limba ta. Alege din setările sistemului.';

  @override
  String get changelog04Item2 =>
      'Temă de sistem — luminoasă, întunecată sau automat, după dispozitiv.';

  @override
  String get changelog04Item3 =>
      'Evaluează-ne — apasă pe steluța din meniu ca să lași un review pe Play Store.';

  @override
  String get changelog04Item4 => 'Ce e Nou — citești chiar acum.';

  @override
  String get changelog04Item5 =>
      'Vezi feedback-ul pe GitHub — apasă pe orice sesizare ca să vezi statusul.';

  @override
  String get unlockAppBarTitle => 'Activează Generatoarele';

  @override
  String get unlockTitle =>
      'Activează generatoarele WiFi, Contact\nși Calendar';

  @override
  String unlockDescription(Object price) {
    return 'Generează coduri QR pentru rețele WiFi, carduri de contact\nși evenimente de calendar.\n$price o dată. Fără abonament.';
  }

  @override
  String unlockEnableButton(Object price) {
    return 'Activează — $price';
  }

  @override
  String get unlockRestoreButton => 'Restaurează achiziția anterioară';

  @override
  String get unlockDialogTitle => 'Deblochează Generatoarele';

  @override
  String unlockDialogContent(Object price) {
    return 'Deblocați generatoarele WiFi, vCard și Calendar cu o achiziție unică $price. Celelalte șase tipuri de generatoare sunt întotdeauna gratuite.';
  }

  @override
  String get actionOpen => 'Deschide';

  @override
  String get actionCopy => 'Copiază';

  @override
  String get actionGenerate => 'Generează';

  @override
  String get actionShare => 'Partajează';

  @override
  String get actionEmail => 'Email';

  @override
  String get actionCall => 'Apel';

  @override
  String get actionSendSms => 'Trimite SMS';

  @override
  String get actionConnect => 'Conectează';

  @override
  String get actionCopySsid => 'Copiază SSID';

  @override
  String get actionCopyPassword => 'Copiază Parola';

  @override
  String get actionOpenMaps => 'Deschide Hărți';

  @override
  String get actionOpenInWhatsApp => 'Deschide în WhatsApp';

  @override
  String get actionOpenInTelegram => 'Deschide în Telegram';

  @override
  String get actionOpenInSignal => 'Deschide în Signal';

  @override
  String get actionOpenInTwitter => 'Deschide în Twitter';

  @override
  String get actionFaceTimeCall => 'Apel FaceTime';

  @override
  String get actionOpenInSkype => 'Deschide în Skype';

  @override
  String get actionOpenInWallet => 'Deschide în Portofel';

  @override
  String get actionCopyAddress => 'Copiază Adresa';

  @override
  String get actionOpenInPayPal => 'Deschide în PayPal';

  @override
  String get actionOpenStore => 'Deschide Magazinul';

  @override
  String get actionAddContact => 'Adaugă Contact';

  @override
  String get actionAddToCalendar => 'Adaugă în Calendar';

  @override
  String get actionSave => 'Salvează';

  @override
  String get actionCancel => 'Anulează';

  @override
  String showMoreRows(Object hiddenRows, Object rowWord) {
    return 'Afișează $hiddenRows $rowWord în plus';
  }

  @override
  String showMoreFields(Object hiddenRows) {
    return 'Afișează $hiddenRows în plus';
  }

  @override
  String get showLess => 'Afișează mai puțin';

  @override
  String get fieldEvent => 'Eveniment';

  @override
  String get fieldStartTime => 'Ora de Început';

  @override
  String get fieldEndTime => 'Ora de Sfârșit';

  @override
  String get fieldLocation => 'Locație';

  @override
  String get fieldDescription => 'Descriere';

  @override
  String get fieldOrganizer => 'Organizator';

  @override
  String get fieldAttendee => 'Participant';

  @override
  String get fieldName => 'Nume';

  @override
  String get fieldPhone => 'Telefon';

  @override
  String get fieldEmail => 'Email';

  @override
  String get fieldOrganization => 'Organizație';

  @override
  String get fieldTitle => 'Titlu';

  @override
  String get fieldAddress => 'Adresă';

  @override
  String get fieldNotes => 'Note';

  @override
  String get fieldSsid => 'SSID';

  @override
  String get fieldPassword => 'Parolă';

  @override
  String get fieldEncryption => 'Criptare';

  @override
  String get fieldUrl => 'URL';

  @override
  String get fieldNickname => 'Poreclă';

  @override
  String get fieldRole => 'Rol';

  @override
  String get fieldBirthday => 'Data de Naștere';

  @override
  String get row => 'rând';

  @override
  String get rows => 'rânduri';

  @override
  String get monthJan => 'Ian';

  @override
  String get monthFeb => 'Feb';

  @override
  String get monthMar => 'Mar';

  @override
  String get monthApr => 'Apr';

  @override
  String get monthMay => 'Mai';

  @override
  String get monthJun => 'Iun';

  @override
  String get monthJul => 'Iul';

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
  String get cardCtaTitle => 'Deschide cu PlainQR';

  @override
  String get cardSavedToDownloads => 'Cardul a fost salvat în Descărcări';

  @override
  String get cardShareFailed => 'Nu s-a putut partaja cardul';

  @override
  String get cardSaveFailed => 'Nu s-a putut salva cardul';

  @override
  String get shareSubjectQrCode => 'Cod QR';

  @override
  String get copiedToClipboard => 'Copiat în clipboard';

  @override
  String get sharing => 'Se partajează…';

  @override
  String get openingLink => 'Se deschide linkul';

  @override
  String get invalidUrl => 'URL invalid';

  @override
  String get couldNotOpenLink => 'Nu s-a putut deschide acest link';

  @override
  String get errorOpeningLink => 'Eroare la deschiderea linkului';

  @override
  String get wifiNoSsid => 'Niciun SSID găsit în acest cod QR';

  @override
  String wifiConnected(Object ssid) {
    return 'Conectat la $ssid';
  }

  @override
  String wifiCouldNotConnect(Object ssid) {
    return 'Nu s-a putut conecta la $ssid';
  }

  @override
  String get wifiConnectionFailed => 'Conexiunea a eșuat';

  @override
  String get contactOpenFailed => 'Nu s-a putut deschide contactul';

  @override
  String get eventOpenFailed => 'Nu s-a putut deschide evenimentul';

  @override
  String get confirmOpenExternalTitle => 'Deschizi Conținut Extern?';

  @override
  String confirmOpenExternalBody(Object url) {
    return 'Conținutul de la linkul de mai jos poate nesigur. Continuă doar dacă ai încredere în sursă.\n\n$url\n\n— Pentru a omite acest dialog în viitor, activează \"Deschide automat tipurile periculoase\" în Setări.';
  }

  @override
  String get autoOpenDialogTitle => 'Deschizi Automat Tipurile Periculoase?';

  @override
  String get autoOpenDialogContent =>
      'Cu această setare activată, URL-urile, apelurile telefonice, SMS-urile și emailurile din codurile QR se vor deschide imediat, fără a-ți afișa mai întâi destinația. Aceasta înseamnă că un cod QR malițios ar putea efectua un apel telefonic sau te trimite la un site dăunător fără știrea ta.\n\nActivează această opțiune doar dacă înțelegi și accepți acest risc.';

  @override
  String get autoOpenConfirmButton => 'Înțeleg';

  @override
  String purchaseButton(Object price) {
    return 'Cumpără $price';
  }

  @override
  String get storeUnavailable =>
      'Google Play Store nu este disponibil. Nu se pot efectua achiziții.';

  @override
  String get productLoadFailed => 'Nu s-a putut încărca produsul';

  @override
  String get purchaseFailed => 'Achiziția a eșuat';

  @override
  String get noErrorsLogged => '(nicio eroare înregistrată)';

  @override
  String get addressLookupTimedOut => 'Căutarea adresei a expirat';

  @override
  String get couldNotResolveAddress => 'Nu s-a putut rezolva acea adresă';

  @override
  String get locationPermissionDenied =>
      'Permisiunea de locație a fost refuzată';

  @override
  String get locationLookupTimedOut => 'Căutarea locației a expirat';

  @override
  String get couldNotGetCurrentLocation =>
      'Nu s-a putut obține locația curentă';

  @override
  String get contactsPermissionDenied =>
      'Permisiunea pentru contacte a fost refuzată';

  @override
  String get couldNotAccessContacts => 'Nu s-au putut accesa contactele';

  @override
  String get contactImported => 'Contactul a fost importat';

  @override
  String get required => 'Obligatoriu';

  @override
  String get resolving => 'Se rezolvă…';

  @override
  String get getCurrentLocation => 'Obține Locația Curentă';

  @override
  String get importFromContacts => 'Importă din contacte';

  @override
  String get tapToPickDateTime => 'Apasă pentru a alege data și ora';

  @override
  String get formEmailAddress => 'Adresă email';

  @override
  String get formEmailHint => 'ex. user@example.com';

  @override
  String get formEmailRequired => 'Obligatoriu — trebuie să conțină @';

  @override
  String get formSubject => 'Subiect';

  @override
  String get formBody => 'Conținut email';

  @override
  String get formPhoneNumber => 'Număr de telefon';

  @override
  String get formPhoneHint => 'ex. +40 721 123 456';

  @override
  String get formSmsHelper => 'Obligatoriu — mesajul este opțional';

  @override
  String get formMessage => 'Mesaj';

  @override
  String get formText => 'Text';

  @override
  String get formTextHint => 'Introdu orice text sau mesaj';

  @override
  String get formUrl => 'URL';

  @override
  String get formUrlHint => 'exemplu.com';

  @override
  String get formUrlHelper =>
      'Introdu un domeniu — poți modifica https:// dacă este nevoie';

  @override
  String get formFullName => 'Nume complet';

  @override
  String get formVcardHelper =>
      'Obligatoriu — celelalte câmpuri sunt opționale';

  @override
  String get formOrganization => 'Organizație';

  @override
  String get formTitle => 'Titlu';

  @override
  String get formNetworkName => 'Nume rețea (SSID)';

  @override
  String get formWifiSsidHint => 'ex. RețeauaMeaWiFi';

  @override
  String get formSsidAutoDetected =>
      'SSID detectat automat din rețeaua curentă';

  @override
  String get formWifiPassword => 'Parolă';

  @override
  String get formWifiPasswordHelper => 'Lasă gol pentru rețele deschise';

  @override
  String get formAddress => 'Adresă';

  @override
  String get formAddressHint => 'ex. Turnul Eiffel, Paris';

  @override
  String get formLatitude => 'Latitudine (-90 la 90)';

  @override
  String get formLongitude => 'Longitudine (-180 la 180)';

  @override
  String get formStartDate => 'Data de început *';

  @override
  String get formEndDate => 'Data de sfârșit';

  @override
  String get formEventTitle => 'Titlu eveniment';

  @override
  String get formLocation => 'Locație';

  @override
  String get formLocationHint => 'ex. Str. Exemplu nr. 123 sau numele locației';

  @override
  String get updateReadyMessage => 'Actualizare gata de instalare';

  @override
  String get updateReadyAction => 'Repornește';
}
