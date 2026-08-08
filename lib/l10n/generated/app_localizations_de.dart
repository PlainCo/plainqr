// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for German (`de`).
class AppLocalizationsDe extends AppLocalizations {
  AppLocalizationsDe([String locale = 'de']) : super(locale);

  @override
  String get appName => 'PlainQR';

  @override
  String get appNameFull => 'PlainQR — Scannen & Erstellen';

  @override
  String get drawerScan => 'Scannen';

  @override
  String get drawerScanFromGallery => 'Aus Galerie scannen';

  @override
  String get drawerGenerator => 'Generator';

  @override
  String get drawerHistory => 'Verlauf';

  @override
  String get drawerSettings => 'Einstellungen';

  @override
  String get scannerUnlockSnack => 'Generatoren freigeschaltet!';

  @override
  String get scannerUnlockAnnounce => 'Generatoren freigeschaltet';

  @override
  String scannerFreeTierBanner(Object price) {
    return 'Kostenlose Version — $price zum Entfernen';
  }

  @override
  String scannerDetectedAnnounce(Object type, Object brief) {
    return 'Erkannt $type: $brief';
  }

  @override
  String get scannerSavedToHistory => 'Im Verlauf gespeichert';

  @override
  String get scannerTooltipDisableFlashlight => 'Taschenlampe deaktivieren';

  @override
  String get scannerTooltipEnableFlashlight => 'Taschenlampe aktivieren';

  @override
  String get scannerTooltipGallery => 'Aus Galerie scannen';

  @override
  String get scannerZoomIn => 'Vergrößern';

  @override
  String get scannerZoomOut => 'Verkleinern';

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
  String get generatorCardLabel => 'Kartenbeschriftung (optional)';

  @override
  String get generatorCardLabelHint => 'z.B. Gast-WiFi, Meine Webseite';

  @override
  String get generatorPreview => 'Vorschau';

  @override
  String get generatorStyle => 'Stil:';

  @override
  String get generatorStyleLight => 'Hell';

  @override
  String get generatorStyleDark => 'Dunkel';

  @override
  String get generatorStyleSticker => 'Aufkleber';

  @override
  String get generatorShareCard => 'Karte teilen';

  @override
  String get generatorSaveToDevice => 'Auf Gerät speichern';

  @override
  String get generatorCopiedSnack => 'QR-Inhalt kopiert';

  @override
  String get generatorCopyQrContent => 'QR-Inhalt kopieren';

  @override
  String get typeUrl => 'URL';

  @override
  String get typeUrlDescription =>
      'Link zu einer Webseite oder Online-Inhalten';

  @override
  String get typeUrlHeadline => 'Scannen zum Besuchen';

  @override
  String get typePlainText => 'Klartext';

  @override
  String get typePlainTextDescription => 'Freier Text oder Nachricht';

  @override
  String get typePlainTextHeadline => 'Scannen zum Lesen';

  @override
  String get typeWifi => 'WiFi';

  @override
  String get typeWifiDescription => 'Netzwerk-Zugangsdaten teilen';

  @override
  String get typeWifiHeadline => 'Scannen für WiFi-Verbindung';

  @override
  String get typeVcard => 'vCard';

  @override
  String get typeVcardDescription => 'Kontaktdaten teilen';

  @override
  String get typeVcardHeadline => 'Scannen um Kontakt zu speichern';

  @override
  String get typeCalendar => 'Kalender';

  @override
  String get typeCalendarDescription => 'Termin zu jedem Kalender hinzufügen';

  @override
  String get typeCalendarHeadline => 'Scannen um zum Kalender hinzuzufügen';

  @override
  String get typePhone => 'Telefon';

  @override
  String get typePhoneDescription => 'Telefonnummer zum Anrufen';

  @override
  String get typePhoneHeadline => 'Scannen zum Anrufen';

  @override
  String get typeEmail => 'E-Mail';

  @override
  String get typeEmailDescription => 'E-Mail verfassen';

  @override
  String get typeEmailHeadline => 'Scannen um E-Mail zu senden';

  @override
  String get typeSms => 'SMS';

  @override
  String get typeSmsDescription => 'Textnachricht senden';

  @override
  String get typeSmsHeadline => 'Scannen zum Schreiben';

  @override
  String get typeLocation => 'Standort';

  @override
  String get typeLocationDescription => 'Physische Adresse oder Koordinaten';

  @override
  String get typeLocationHeadline => 'Scannen für Wegbeschreibung';

  @override
  String get historyAppBarTitle => 'Scan-Verlauf';

  @override
  String get historyClearAllTooltip => 'Alle löschen';

  @override
  String get historyEmpty => 'Noch keine Scans';

  @override
  String get historyJustNow => 'Gerade eben';

  @override
  String historyMinutesAgo(Object count) {
    return 'vor $count Min.';
  }

  @override
  String historyHoursAgo(Object count) {
    return 'vor $count Std.';
  }

  @override
  String historyDeletedSnack(Object label) {
    return '$label gelöscht';
  }

  @override
  String get historyUndoButton => 'Rückgängig';

  @override
  String get historyClearDialogTitle => 'Scan-Verlauf löschen?';

  @override
  String get historyClearDialogContent =>
      'Diese Aktion kann nicht rückgängig gemacht werden.';

  @override
  String get historyClearButton => 'Löschen';

  @override
  String get historySourceGallery => 'Galerie';

  @override
  String get historySourceCamera => 'Kamera';

  @override
  String get galleryNoQrFound => 'Kein QR-Code im Bild gefunden';

  @override
  String get galleryCropTitle => 'QR-Code einrahmen';

  @override
  String get galleryCropScan => 'Scannen';

  @override
  String get ratePromptTitle => 'Gefällt Ihnen PlainQR?';

  @override
  String get ratePromptBody =>
      'Ihre Bewertung hilft anderen, einen privaten QR-Scanner zu finden.';

  @override
  String get ratePromptRate => 'Bewerten';

  @override
  String get ratePromptFeedback => 'Feedback';

  @override
  String get tilePromptTitle => 'Von überall scannen';

  @override
  String get tilePromptBody =>
      'Fügen Sie eine PlainQR-Kachel zu den Schnelleinstellungen hinzu.\nRunterwischen, tippen, scannen — App muss nicht geöffnet werden.';

  @override
  String get tilePromptAdd => 'Kachel hinzufügen';

  @override
  String get settingsAppBarTitle => 'Einstellungen';

  @override
  String get settingsSectionScanning => 'Scannen';

  @override
  String get settingsSaveHistory => 'Scan-Verlauf speichern';

  @override
  String get settingsSaveHistoryOn => 'Kamera-Scans automatisch speichern';

  @override
  String get settingsSaveHistoryOff => 'Manuell von Ergebniskarte speichern';

  @override
  String get settingsAutoOpen => 'Gefährliche Typen automatisch öffnen';

  @override
  String get settingsAutoOpenOn =>
      'Bestätigung für URLs, Anrufe, SMS und E-Mails überspringen';

  @override
  String get settingsAutoOpenOff =>
      'Vor dem Öffnen von URLs, Anrufen, SMS oder E-Mails nachfragen';

  @override
  String get settingsAutoFlashlight =>
      'Taschenlampe beim Scannen automatisch einschalten';

  @override
  String get settingsAutoFlashlightOn =>
      'Taschenlampe wird beim Öffnen des Scan-Bildschirms eingeschaltet';

  @override
  String get settingsAutoFlashlightOff => 'Taschenlampe manuell steuern';

  @override
  String get settingsEnableGenerators => 'Generatoren aktivieren';

  @override
  String settingsEnableGeneratorsSubtitle(Object price) {
    return 'Schalten Sie die Generatoren WiFi, vCard und Kalender für $price frei';
  }

  @override
  String get settingsPremiumUnlocked => 'Premium freigeschaltet';

  @override
  String get settingsPremiumUnlockedSubtitle =>
      'Alle Generatorfunktionen sind aktiviert';

  @override
  String get settingsSectionAppearance => 'Erscheinungsbild';

  @override
  String get settingsThemeSystem => 'System';

  @override
  String get settingsThemeLight => 'Hell';

  @override
  String get settingsThemeDark => 'Dunkel';

  @override
  String get settingsSectionLegal => 'Rechtliches';

  @override
  String get settingsOpenSourceLicences => 'Open-Source-Lizenzen';

  @override
  String get changelog04Item1 =>
      '22 Sprachen — PlainQR spricht jetzt Ihre Sprache. Wählen Sie sie in den Systemeinstellungen aus.';

  @override
  String get changelog04Item2 =>
      'System-Theme — hell, dunkel oder automatisch Ihrem Gerät folgen.';

  @override
  String get changelog04Item3 =>
      'Bewerten Sie uns — tippen Sie auf den Stern im Menü, um eine Bewertung im Play Store zu hinterlassen.';

  @override
  String get changelog04Item4 => 'Neuigkeiten — Sie lesen sie gerade.';

  @override
  String get changelog04Item5 =>
      'Feedback auf GitHub ansehen — tippen Sie auf eine Einreichung, um den Issue-Status zu sehen.';

  @override
  String get unlockAppBarTitle => 'Generatoren aktivieren';

  @override
  String get unlockTitle =>
      'WiFi-, Kontakt-\n& Kalender-Generatoren aktivieren';

  @override
  String unlockDescription(Object price) {
    return 'QR-Codes für WiFi-Netzwerke, Kontaktkarten\nund Kalendertermine erstellen.\nEinmalig $price. Kein Abo.';
  }

  @override
  String unlockEnableButton(Object price) {
    return 'Aktivieren — $price';
  }

  @override
  String get unlockRestoreButton => 'Kauf wiederherstellen';

  @override
  String get unlockDialogTitle => 'Generatoren freischalten';

  @override
  String unlockDialogContent(Object price) {
    return 'Schalten Sie die Generatoren WiFi, vCard und Kalender mit einem einmaligen $price-Kauf frei. Die anderen sechs Generatortypen sind immer kostenlos.';
  }

  @override
  String get actionOpen => 'Öffnen';

  @override
  String get actionCopy => 'Kopieren';

  @override
  String get actionGenerate => 'Erstellen';

  @override
  String get actionShare => 'Teilen';

  @override
  String get actionEmail => 'E-Mail';

  @override
  String get actionCall => 'Anrufen';

  @override
  String get actionSendSms => 'SMS senden';

  @override
  String get actionConnect => 'Verbinden';

  @override
  String get actionCopySsid => 'SSID kopieren';

  @override
  String get actionCopyPassword => 'Passwort kopieren';

  @override
  String get actionOpenMaps => 'Karten öffnen';

  @override
  String get actionOpenInWhatsApp => 'In WhatsApp öffnen';

  @override
  String get actionOpenInTelegram => 'In Telegram öffnen';

  @override
  String get actionOpenInSignal => 'In Signal öffnen';

  @override
  String get actionOpenInTwitter => 'In Twitter öffnen';

  @override
  String get actionFaceTimeCall => 'FaceTime-Anruf';

  @override
  String get actionOpenInSkype => 'In Skype öffnen';

  @override
  String get actionOpenInWallet => 'In Wallet öffnen';

  @override
  String get actionCopyAddress => 'Adresse kopieren';

  @override
  String get actionOpenInPayPal => 'In PayPal öffnen';

  @override
  String get actionOpenStore => 'Store öffnen';

  @override
  String get actionAddContact => 'Kontakt hinzufügen';

  @override
  String get actionAddToCalendar => 'Zum Kalender hinzufügen';

  @override
  String get actionSave => 'Speichern';

  @override
  String get actionCancel => 'Abbrechen';

  @override
  String showMoreRows(Object hiddenRows, Object rowWord) {
    return '$hiddenRows weitere $rowWord anzeigen';
  }

  @override
  String showMoreFields(Object hiddenRows) {
    return '$hiddenRows weitere anzeigen';
  }

  @override
  String get showLess => 'Weniger anzeigen';

  @override
  String get fieldEvent => 'Termin';

  @override
  String get fieldStartTime => 'Startzeit';

  @override
  String get fieldEndTime => 'Endzeit';

  @override
  String get fieldLocation => 'Ort';

  @override
  String get fieldDescription => 'Beschreibung';

  @override
  String get fieldOrganizer => 'Veranstalter';

  @override
  String get fieldAttendee => 'Teilnehmer';

  @override
  String get fieldName => 'Name';

  @override
  String get fieldPhone => 'Telefon';

  @override
  String get fieldEmail => 'E-Mail';

  @override
  String get fieldOrganization => 'Organisation';

  @override
  String get fieldTitle => 'Titel';

  @override
  String get fieldAddress => 'Adresse';

  @override
  String get fieldNotes => 'Notizen';

  @override
  String get fieldSsid => 'SSID';

  @override
  String get fieldPassword => 'Passwort';

  @override
  String get fieldEncryption => 'Verschlüsselung';

  @override
  String get fieldUrl => 'URL';

  @override
  String get fieldNickname => 'Spitzname';

  @override
  String get fieldRole => 'Rolle';

  @override
  String get fieldBirthday => 'Geburtstag';

  @override
  String get row => 'Zeile';

  @override
  String get rows => 'Zeilen';

  @override
  String get monthJan => 'Jan';

  @override
  String get monthFeb => 'Feb';

  @override
  String get monthMar => 'Mär';

  @override
  String get monthApr => 'Apr';

  @override
  String get monthMay => 'Mai';

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
  String get monthDec => 'Dez';

  @override
  String get cardCtaTitle => 'Mit PlainQR öffnen';

  @override
  String get cardSavedToDownloads => 'Karte in Downloads gespeichert';

  @override
  String get cardShareFailed => 'Karte konnte nicht geteilt werden';

  @override
  String get cardSaveFailed => 'Karte konnte nicht gespeichert werden';

  @override
  String get shareSubjectQrCode => 'QR-Code';

  @override
  String get copiedToClipboard => 'In die Zwischenablage kopiert';

  @override
  String get sharing => 'Wird geteilt…';

  @override
  String get openingLink => 'Link wird geöffnet';

  @override
  String get invalidUrl => 'Ungültige URL';

  @override
  String get couldNotOpenLink => 'Dieser Link konnte nicht geöffnet werden';

  @override
  String get errorOpeningLink => 'Fehler beim Öffnen des Links';

  @override
  String get wifiNoSsid => 'Keine SSID in diesem QR-Code gefunden';

  @override
  String wifiConnected(Object ssid) {
    return 'Verbunden mit $ssid';
  }

  @override
  String wifiCouldNotConnect(Object ssid) {
    return 'Verbindung mit $ssid nicht möglich';
  }

  @override
  String get wifiConnectionFailed => 'Verbindung fehlgeschlagen';

  @override
  String get contactOpenFailed => 'Kontakt konnte nicht geöffnet werden';

  @override
  String get eventOpenFailed => 'Termin konnte nicht geöffnet werden';

  @override
  String get confirmOpenExternalTitle => 'Externen Inhalt öffnen?';

  @override
  String confirmOpenExternalBody(Object url) {
    return 'Der Inhalt des folgenden Links ist möglicherweise nicht sicher. Fahren Sie nur fort, wenn Sie der Quelle vertrauen.\n\n$url\n\n— Um diesen Dialog in Zukunft zu überspringen, aktivieren Sie \"Gefährliche Typen automatisch öffnen\" in den Einstellungen.';
  }

  @override
  String get autoOpenDialogTitle => 'Gefährliche Typen automatisch öffnen?';

  @override
  String get autoOpenDialogContent =>
      'Wenn diese Einstellung aktiviert ist, werden URLs, Telefonanrufe, SMS und E-Mails aus QR-Codes sofort geöffnet, ohne Ihnen zuvor das Ziel anzuzeigen. Das bedeutet, ein bösartiger QR-Code könnte einen Anruf tätigen oder Sie auf eine schädliche Webseite leiten, ohne dass Sie es bemerken.\n\nAktivieren Sie dies nur, wenn Sie das Risiko verstehen und akzeptieren.';

  @override
  String get autoOpenConfirmButton => 'Ich verstehe';

  @override
  String purchaseButton(Object price) {
    return 'Kaufen für $price';
  }

  @override
  String get storeUnavailable =>
      'Google Play Store nicht verfügbar. Kauf nicht möglich.';

  @override
  String get productLoadFailed => 'Produkt konnte nicht geladen werden';

  @override
  String get purchaseFailed => 'Kauf fehlgeschlagen';

  @override
  String get noErrorsLogged => '(keine Fehler protokolliert)';

  @override
  String get addressLookupTimedOut => 'Adressabfrage Zeitüberschreitung';

  @override
  String get couldNotResolveAddress => 'Adresse konnte nicht aufgelöst werden';

  @override
  String get locationPermissionDenied => 'Standortberechtigung verweigert';

  @override
  String get locationLookupTimedOut => 'Standortabfrage Zeitüberschreitung';

  @override
  String get couldNotGetCurrentLocation =>
      'Aktueller Standort konnte nicht ermittelt werden';

  @override
  String get contactsPermissionDenied => 'Kontaktberechtigung verweigert';

  @override
  String get couldNotAccessContacts =>
      'Auf Kontakte konnte nicht zugegriffen werden';

  @override
  String get contactImported => 'Kontakt importiert';

  @override
  String get required => 'Erforderlich';

  @override
  String get resolving => 'Wird aufgelöst…';

  @override
  String get getCurrentLocation => 'Aktuellen Standort ermitteln';

  @override
  String get importFromContacts => 'Aus Kontakten importieren';

  @override
  String get tapToPickDateTime => 'Tippen um Datum & Uhrzeit auszuwählen';

  @override
  String get formEmailAddress => 'E-Mail-Adresse';

  @override
  String get formEmailHint => 'z.B. benutzer@beispiel.de';

  @override
  String get formEmailRequired => 'Erforderlich — muss @ enthalten';

  @override
  String get formSubject => 'Betreff';

  @override
  String get formBody => 'Nachricht';

  @override
  String get formPhoneNumber => 'Telefonnummer';

  @override
  String get formPhoneHint => 'z.B. +49 123 456789';

  @override
  String get formSmsHelper => 'Erforderlich — Nachricht ist optional';

  @override
  String get formMessage => 'Nachricht';

  @override
  String get formText => 'Text';

  @override
  String get formTextHint => 'Beliebigen Text oder Nachricht eingeben';

  @override
  String get formUrl => 'URL';

  @override
  String get formUrlHint => 'beispiel.de';

  @override
  String get formUrlHelper =>
      'Domain eingeben — https:// kann bei Bedarf geändert werden';

  @override
  String get formFullName => 'Vollständiger Name';

  @override
  String get formVcardHelper =>
      'Erforderlich — alle anderen Felder sind optional';

  @override
  String get formOrganization => 'Organisation';

  @override
  String get formTitle => 'Titel';

  @override
  String get formNetworkName => 'Netzwerkname (SSID)';

  @override
  String get formWifiSsidHint => 'z.B. MeinHeimWiFi';

  @override
  String get formSsidAutoDetected =>
      'SSID wurde aus Ihrem aktuellen Netzwerk automatisch erkannt';

  @override
  String get formWifiPassword => 'Passwort';

  @override
  String get formWifiPasswordHelper => 'Für offene Netzwerke leer lassen';

  @override
  String get formAddress => 'Adresse';

  @override
  String get formAddressHint => 'z.B. Eiffelturm, Paris';

  @override
  String get formLatitude => 'Breitengrad (-90 bis 90)';

  @override
  String get formLongitude => 'Längengrad (-180 bis 180)';

  @override
  String get formStartDate => 'Startdatum *';

  @override
  String get formEndDate => 'Enddatum';

  @override
  String get formEventTitle => 'Terminbezeichnung';

  @override
  String get formLocation => 'Ort';

  @override
  String get formLocationHint => 'z.B. Musterstraße 123 oder Veranstaltungsort';

  @override
  String get updateReadyMessage => 'Update bereit zur Installation';

  @override
  String get updateReadyAction => 'Neu starten';
}
