// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Dutch Flemish (`nl`).
class AppLocalizationsNl extends AppLocalizations {
  AppLocalizationsNl([String locale = 'nl']) : super(locale);

  @override
  String get appName => 'PlainQR';

  @override
  String get appNameFull => 'PlainQR — Scannen & Genereren';

  @override
  String get drawerScan => 'Scannen';

  @override
  String get drawerScanFromGallery => 'Scannen uit galerij';

  @override
  String get drawerGenerator => 'Generator';

  @override
  String get drawerHistory => 'Geschiedenis';

  @override
  String get drawerSettings => 'Instellingen';

  @override
  String get scannerUnlockSnack => 'Generators ontgrendeld!';

  @override
  String get scannerUnlockAnnounce => 'Generators ontgrendeld';

  @override
  String scannerFreeTierBanner(Object price) {
    return 'Gratis versie — $price om te verwijderen';
  }

  @override
  String scannerDetectedAnnounce(Object type, Object brief) {
    return 'Gedetecteerd $type: $brief';
  }

  @override
  String get scannerSavedToHistory => 'Opgeslagen in geschiedenis';

  @override
  String get scannerTooltipDisableFlashlight => 'Zaklamp uitschakelen';

  @override
  String get scannerTooltipEnableFlashlight => 'Zaklamp inschakelen';

  @override
  String get scannerTooltipGallery => 'Scannen uit galerij';

  @override
  String get scannerZoomIn => 'Inzoomen';

  @override
  String get scannerZoomOut => 'Uitzoomen';

  @override
  String scannerZoomLevel(Object level) {
    return '$level×';
  }

  @override
  String get generatorAppBarTitle => 'Generator';

  @override
  String generatorFormAppBarTitle(Object typeName) {
    return '$typeName QR';
  }

  @override
  String get generatorCardLabel => 'Kaartlabel (optioneel)';

  @override
  String get generatorCardLabelHint => 'bijv. Gasten WiFi, Mijn website';

  @override
  String get generatorPreview => 'Voorbeeld';

  @override
  String get generatorStyle => 'Stijl:';

  @override
  String get generatorStyleLight => 'Licht';

  @override
  String get generatorStyleDark => 'Donker';

  @override
  String get generatorStyleSticker => 'Sticker';

  @override
  String get generatorShareCard => 'Kaart delen';

  @override
  String get generatorSaveToDevice => 'Opslaan op apparaat';

  @override
  String get generatorCopiedSnack => 'QR-inhoud gekopieerd';

  @override
  String get generatorCopyQrContent => 'QR-inhoud kopiëren';

  @override
  String get typeUrl => 'URL';

  @override
  String get typeUrlDescription => 'Link naar een website of online-inhoud';

  @override
  String get typeUrlHeadline => 'Scan om te bezoeken';

  @override
  String get typePlainText => 'Platte tekst';

  @override
  String get typePlainTextDescription => 'Vrije tekst of bericht';

  @override
  String get typePlainTextHeadline => 'Scan om te lezen';

  @override
  String get typeWifi => 'WiFi';

  @override
  String get typeWifiDescription => 'Deel je netwerkgegevens';

  @override
  String get typeWifiHeadline => 'Scan om WiFi te verbinden';

  @override
  String get typeVcard => 'vCard';

  @override
  String get typeVcardDescription => 'Deel contactgegevens';

  @override
  String get typeVcardHeadline => 'Scan om contact op te slaan';

  @override
  String get typeCalendar => 'Kalender';

  @override
  String get typeCalendarDescription =>
      'Voeg een evenement toe aan een kalender';

  @override
  String get typeCalendarHeadline => 'Scan om toe te voegen aan kalender';

  @override
  String get typePhone => 'Telefoon';

  @override
  String get typePhoneDescription => 'Een telefoonnummer om te bellen';

  @override
  String get typePhoneHeadline => 'Scan om te bellen';

  @override
  String get typeEmail => 'E-mail';

  @override
  String get typeEmailDescription => 'Stel een e-mail samen';

  @override
  String get typeEmailHeadline => 'Scan om te e-mailen';

  @override
  String get typeSms => 'SMS';

  @override
  String get typeSmsDescription => 'Stuur een sms-bericht';

  @override
  String get typeSmsHeadline => 'Scan om te sms\'en';

  @override
  String get typeLocation => 'Locatie';

  @override
  String get typeLocationDescription => 'Een fysiek adres of coördinaten';

  @override
  String get typeLocationHeadline => 'Scan voor routebeschrijving';

  @override
  String get historyAppBarTitle => 'Scan geschiedenis';

  @override
  String get historyClearAllTooltip => 'Alles wissen';

  @override
  String get historyEmpty => 'Nog geen scans';

  @override
  String get historyJustNow => 'Zojuist';

  @override
  String historyMinutesAgo(Object count) {
    return '${count}m geleden';
  }

  @override
  String historyHoursAgo(Object count) {
    return '${count}u geleden';
  }

  @override
  String historyDeletedSnack(Object label) {
    return '$label verwijderd';
  }

  @override
  String get historyUndoButton => 'Ongedaan maken';

  @override
  String get historyClearDialogTitle => 'Scan geschiedenis wissen?';

  @override
  String get historyClearDialogContent =>
      'Deze actie kan niet ongedaan worden gemaakt.';

  @override
  String get historyClearButton => 'Wissen';

  @override
  String get historySourceGallery => 'Galerij';

  @override
  String get historySourceCamera => 'Camera';

  @override
  String get galleryNoQrFound => 'Geen QR-code gevonden in afbeelding';

  @override
  String get galleryCropTitle => 'Kader de QR-code';

  @override
  String get galleryCropScan => 'Scannen';

  @override
  String get ratePromptTitle => 'Bevalt PlainQR?';

  @override
  String get ratePromptBody =>
      'Jouw review helpt anderen een privé QR-scanner te vinden.';

  @override
  String get ratePromptRate => 'Beoordeel';

  @override
  String get ratePromptFeedback => 'Feedback';

  @override
  String get tilePromptTitle => 'Scan vanaf elke plek';

  @override
  String get tilePromptBody =>
      'Voeg een PlainQR-tegel toe aan Snelle instellingen.\nVeeg omlaag, tik, scan — app openen is niet nodig.';

  @override
  String get tilePromptAdd => 'Tegel toevoegen';

  @override
  String get settingsAppBarTitle => 'Instellingen';

  @override
  String get settingsSectionScanning => 'Scannen';

  @override
  String get settingsSaveHistory => 'Scan geschiedenis opslaan';

  @override
  String get settingsSaveHistoryOn => 'Camera-scans automatisch opslaan';

  @override
  String get settingsSaveHistoryOff => 'Handmatig opslaan vanaf resultaatkaart';

  @override
  String get settingsAutoOpen => 'Gevaarlijke typen automatisch openen';

  @override
  String get settingsAutoOpenOn =>
      'Bevestiging overslaan voor URL\'s, oproepen, SMS en e-mails';

  @override
  String get settingsAutoOpenOff =>
      'Vragen voordat URL\'s worden geopend, gebeld, SMS gestuurd of e-mails verzonden';

  @override
  String get settingsAutoFlashlight => 'Automatische zaklamp bij scannen';

  @override
  String get settingsAutoFlashlightOn =>
      'Zaklamp gaat aan wanneer scanscherm wordt geopend';

  @override
  String get settingsAutoFlashlightOff => 'Zaklamp handmatig bediend';

  @override
  String get settingsEnableGenerators => 'Generators inschakelen';

  @override
  String settingsEnableGeneratorsSubtitle(Object price) {
    return 'Ontgrendel de WiFi-, vCard- en Kalender-generatoren voor $price';
  }

  @override
  String get settingsPremiumUnlocked => 'Premium ontgrendeld';

  @override
  String get settingsPremiumUnlockedSubtitle =>
      'Alle generator-functies zijn ingeschakeld';

  @override
  String get settingsSectionAppearance => 'Weergave';

  @override
  String get settingsThemeSystem => 'Systeem';

  @override
  String get settingsThemeLight => 'Licht';

  @override
  String get settingsThemeDark => 'Donker';

  @override
  String get settingsSectionLegal => 'Juridisch';

  @override
  String get settingsOpenSourceLicences => 'Open Source licenties';

  @override
  String get changelog04Item1 =>
      '22 talen — PlainQR spreekt nu jouw taal. Kies deze in de systeeminstellingen.';

  @override
  String get changelog04Item2 =>
      'Systeemthema — licht, donker of automatisch je apparaat volgen.';

  @override
  String get changelog04Item3 =>
      'Beoordeel ons — tik op de ster in het menu om een beoordeling achter te laten in de Play Store.';

  @override
  String get changelog04Item4 => 'Nieuws — je leest het nu.';

  @override
  String get changelog04Item5 =>
      'Bekijk feedback op GitHub — tik op een inzending om de issuestatus te zien.';

  @override
  String get unlockAppBarTitle => 'Generators inschakelen';

  @override
  String get unlockTitle => 'Schakel WiFi, Contact\n& Kalender generators in';

  @override
  String unlockDescription(Object price) {
    return 'Genereer QR-codes voor WiFi-netwerken, contactkaarten\nen kalenderevenementen.\nEenmalig $price. Geen abonnement.';
  }

  @override
  String unlockEnableButton(Object price) {
    return 'Inschakelen — $price';
  }

  @override
  String get unlockRestoreButton => 'Eerdere aankoop herstellen';

  @override
  String get unlockDialogTitle => 'Generators ontgrendelen';

  @override
  String unlockDialogContent(Object price) {
    return 'Ontgrendel de WiFi-, vCard- en Kalender-generatoren met een eenmalige $price-aankoop. De overige zes generatortypen zijn altijd gratis.';
  }

  @override
  String get actionOpen => 'Openen';

  @override
  String get actionCopy => 'Kopiëren';

  @override
  String get actionGenerate => 'Genereren';

  @override
  String get actionShare => 'Delen';

  @override
  String get actionEmail => 'E-mail';

  @override
  String get actionCall => 'Bellen';

  @override
  String get actionSendSms => 'SMS versturen';

  @override
  String get actionConnect => 'Verbinden';

  @override
  String get actionCopySsid => 'SSID kopiëren';

  @override
  String get actionCopyPassword => 'Wachtwoord kopiëren';

  @override
  String get actionOpenMaps => 'Maps openen';

  @override
  String get actionOpenInWhatsApp => 'Openen in WhatsApp';

  @override
  String get actionOpenInTelegram => 'Openen in Telegram';

  @override
  String get actionOpenInSignal => 'Openen in Signal';

  @override
  String get actionOpenInTwitter => 'Openen in Twitter';

  @override
  String get actionFaceTimeCall => 'FaceTime-gesprek';

  @override
  String get actionOpenInSkype => 'Openen in Skype';

  @override
  String get actionOpenInWallet => 'Openen in Portemonnee';

  @override
  String get actionCopyAddress => 'Adres kopiëren';

  @override
  String get actionOpenInPayPal => 'Openen in PayPal';

  @override
  String get actionOpenStore => 'Winkel openen';

  @override
  String get actionAddContact => 'Contact toevoegen';

  @override
  String get actionAddToCalendar => 'Toevoegen aan kalender';

  @override
  String get actionSave => 'Opslaan';

  @override
  String get actionCancel => 'Annuleren';

  @override
  String showMoreRows(Object hiddenRows, Object rowWord) {
    return '$hiddenRows meer $rowWord weergeven';
  }

  @override
  String showMoreFields(Object hiddenRows) {
    return '$hiddenRows meer weergeven';
  }

  @override
  String get showLess => 'Minder weergeven';

  @override
  String get fieldEvent => 'Evenement';

  @override
  String get fieldStartTime => 'Starttijd';

  @override
  String get fieldEndTime => 'Eindtijd';

  @override
  String get fieldLocation => 'Locatie';

  @override
  String get fieldDescription => 'Beschrijving';

  @override
  String get fieldOrganizer => 'Organisator';

  @override
  String get fieldAttendee => 'Deelnemer';

  @override
  String get fieldName => 'Naam';

  @override
  String get fieldPhone => 'Telefoon';

  @override
  String get fieldEmail => 'E-mail';

  @override
  String get fieldOrganization => 'Organisatie';

  @override
  String get fieldTitle => 'Titel';

  @override
  String get fieldAddress => 'Adres';

  @override
  String get fieldNotes => 'Notities';

  @override
  String get fieldSsid => 'SSID';

  @override
  String get fieldPassword => 'Wachtwoord';

  @override
  String get fieldEncryption => 'Versleuteling';

  @override
  String get fieldUrl => 'URL';

  @override
  String get fieldNickname => 'Bijnaam';

  @override
  String get fieldRole => 'Rol';

  @override
  String get fieldBirthday => 'Verjaardag';

  @override
  String get row => 'rij';

  @override
  String get rows => 'rijen';

  @override
  String get monthJan => 'Jan';

  @override
  String get monthFeb => 'Feb';

  @override
  String get monthMar => 'Maa';

  @override
  String get monthApr => 'Apr';

  @override
  String get monthMay => 'Mei';

  @override
  String get monthJun => 'Jun';

  @override
  String get monthJul => 'Jul';

  @override
  String get monthAug => 'Aug';

  @override
  String get monthSep => 'Sep';

  @override
  String get monthOct => 'Okt';

  @override
  String get monthNov => 'Nov';

  @override
  String get monthDec => 'Dec';

  @override
  String get cardCtaTitle => 'Openen met PlainQR';

  @override
  String get cardSavedToDownloads => 'Kaart opgeslagen in Downloads';

  @override
  String get cardShareFailed => 'Kon kaart niet delen';

  @override
  String get cardSaveFailed => 'Kon kaart niet opslaan';

  @override
  String get shareSubjectQrCode => 'QR-code';

  @override
  String get copiedToClipboard => 'Gekopieerd naar klembord';

  @override
  String get sharing => 'Delen…';

  @override
  String get openingLink => 'Link openen';

  @override
  String get invalidUrl => 'Ongeldige URL';

  @override
  String get couldNotOpenLink => 'Kon deze link niet openen';

  @override
  String get errorOpeningLink => 'Fout bij het openen van link';

  @override
  String get wifiNoSsid => 'Geen SSID gevonden in deze QR-code';

  @override
  String wifiConnected(Object ssid) {
    return 'Verbonden met $ssid';
  }

  @override
  String wifiCouldNotConnect(Object ssid) {
    return 'Kon niet verbinden met $ssid';
  }

  @override
  String get wifiConnectionFailed => 'Verbinding mislukt';

  @override
  String get contactOpenFailed => 'Kon contact niet openen';

  @override
  String get eventOpenFailed => 'Kon evenement niet openen';

  @override
  String get confirmOpenExternalTitle => 'Externe inhoud openen?';

  @override
  String confirmOpenExternalBody(Object url) {
    return 'De inhoud van de onderstaande link is mogelijk niet veilig. Ga alleen verder als je de bron vertrouwt.\n\n$url\n\n— Om dit dialoogvenster in de toekomst over te slaan, schakel \"Gevaarlijke typen automatisch openen\" in bij Instellingen.';
  }

  @override
  String get autoOpenDialogTitle => 'Gevaarlijke typen automatisch openen?';

  @override
  String get autoOpenDialogContent =>
      'Met deze instelling AAN worden URL\'s, telefoongesprekken, SMS en e-mails uit QR-codes onmiddellijk geopend zonder je eerst de bestemming te tonen. Dit betekent dat een kwaadaardige QR-code een telefoongesprek kan starten of je naar een schadelijke site kan sturen zonder dat je het weet.\n\nSchakel dit alleen in als je dit risico begrijpt en accepteert.';

  @override
  String get autoOpenConfirmButton => 'Ik begrijp het';

  @override
  String purchaseButton(Object price) {
    return 'Kopen voor $price';
  }

  @override
  String get storeUnavailable =>
      'Google Play Store niet beschikbaar. Kan geen aankopen doen.';

  @override
  String get productLoadFailed => 'Kan product niet laden';

  @override
  String get purchaseFailed => 'Aankoop mislukt';

  @override
  String get noErrorsLogged => '(geen fouten geregistreerd)';

  @override
  String get addressLookupTimedOut => 'Adresopzoek verlopen';

  @override
  String get couldNotResolveAddress => 'Kon dat adres niet oplossen';

  @override
  String get locationPermissionDenied => 'Locatietoegang geweigerd';

  @override
  String get locationLookupTimedOut => 'Locatieopzoek verlopen';

  @override
  String get couldNotGetCurrentLocation => 'Kon huidige locatie niet ophalen';

  @override
  String get contactsPermissionDenied => 'Contactentoegang geweigerd';

  @override
  String get couldNotAccessContacts => 'Kon geen toegang krijgen tot contacten';

  @override
  String get contactImported => 'Contact geïmporteerd';

  @override
  String get required => 'Vereist';

  @override
  String get resolving => 'Oplossen…';

  @override
  String get getCurrentLocation => 'Huidige locatie ophalen';

  @override
  String get importFromContacts => 'Importeren uit contacten';

  @override
  String get tapToPickDateTime => 'Tik om datum & tijd te kiezen';

  @override
  String get formEmailAddress => 'E-mailadres';

  @override
  String get formEmailHint => 'bijv. gebruiker@voorbeeld.nl';

  @override
  String get formEmailRequired => 'Vereist — moet @ bevatten';

  @override
  String get formSubject => 'Onderwerp';

  @override
  String get formBody => 'Tekst';

  @override
  String get formPhoneNumber => 'Telefoonnummer';

  @override
  String get formPhoneHint => 'bijv. +31 6 12345678';

  @override
  String get formSmsHelper => 'Vereist — bericht is optioneel';

  @override
  String get formMessage => 'Bericht';

  @override
  String get formText => 'Tekst';

  @override
  String get formTextHint => 'Voer elke tekst of een bericht in';

  @override
  String get formUrl => 'URL';

  @override
  String get formUrlHint => 'voorbeeld.nl';

  @override
  String get formUrlHelper =>
      'Voer een domein in — je kunt https:// aanpassen indien nodig';

  @override
  String get formFullName => 'Volledige naam';

  @override
  String get formVcardHelper => 'Vereist — alle andere velden zijn optioneel';

  @override
  String get formOrganization => 'Organisatie';

  @override
  String get formTitle => 'Titel';

  @override
  String get formNetworkName => 'Netwerknaam (SSID)';

  @override
  String get formWifiSsidHint => 'bijv. MijnThuisWiFi';

  @override
  String get formSsidAutoDetected =>
      'SSID automatisch gedetecteerd van je huidige netwerk';

  @override
  String get formWifiPassword => 'Wachtwoord';

  @override
  String get formWifiPasswordHelper => 'Laat leeg voor open netwerken';

  @override
  String get formAddress => 'Adres';

  @override
  String get formAddressHint => 'bijv. Eiffeltoren, Parijs';

  @override
  String get formLatitude => 'Breedtegraad (-90 tot 90)';

  @override
  String get formLongitude => 'Lengtegraad (-180 tot 180)';

  @override
  String get formStartDate => 'Startdatum *';

  @override
  String get formEndDate => 'Einddatum';

  @override
  String get formEventTitle => 'Evenementtitel';

  @override
  String get formLocation => 'Locatie';

  @override
  String get formLocationHint => 'bijv. Hoofdstraat 123 of locatienaam';

  @override
  String get updateReadyMessage => 'Update klaar om te installeren';

  @override
  String get updateReadyAction => 'Opnieuw starten';
}
