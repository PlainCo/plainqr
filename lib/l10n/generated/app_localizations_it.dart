// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Italian (`it`).
class AppLocalizationsIt extends AppLocalizations {
  AppLocalizationsIt([String locale = 'it']) : super(locale);

  @override
  String get appName => 'PlainQR';

  @override
  String get appNameFull => 'PlainQR — Scansiona e genera';

  @override
  String get drawerScan => 'Scansiona';

  @override
  String get drawerScanFromGallery => 'Scansiona dalla galleria';

  @override
  String get drawerGenerator => 'Generatore';

  @override
  String get drawerHistory => 'Cronologia';

  @override
  String get drawerSettings => 'Impostazioni';

  @override
  String get scannerUnlockSnack => 'Generatori sbloccati!';

  @override
  String get scannerUnlockAnnounce => 'Generatori sbloccati';

  @override
  String scannerFreeTierBanner(Object price) {
    return 'Versione gratuita — $price per rimuovere';
  }

  @override
  String scannerDetectedAnnounce(Object type, Object brief) {
    return 'Rilevato $type: $brief';
  }

  @override
  String get scannerSavedToHistory => 'Salvato nella cronologia';

  @override
  String get scannerTooltipDisableFlashlight => 'Disattiva torcia';

  @override
  String get scannerTooltipEnableFlashlight => 'Attiva torcia';

  @override
  String get scannerTooltipGallery => 'Scansiona dalla galleria';

  @override
  String get scannerZoomIn => 'Ingrandisci';

  @override
  String get scannerZoomOut => 'Riduci';

  @override
  String scannerZoomLevel(Object level) {
    return '$level×';
  }

  @override
  String get generatorAppBarTitle => 'Generatore';

  @override
  String generatorFormAppBarTitle(Object typeName) {
    return 'QR $typeName';
  }

  @override
  String get generatorCardLabel => 'Etichetta scheda (opzionale)';

  @override
  String get generatorCardLabelHint => 'es. WiFi ospiti, Il mio sito';

  @override
  String get generatorPreview => 'Anteprima';

  @override
  String get generatorStyle => 'Stile';

  @override
  String get generatorStyleLight => 'Chiaro';

  @override
  String get generatorStyleDark => 'Scuro';

  @override
  String get generatorStyleSticker => 'Adesivo';

  @override
  String get generatorShareCard => 'Condividi scheda';

  @override
  String get generatorSaveToDevice => 'Salva sul dispositivo';

  @override
  String get generatorCopiedSnack => 'Contenuto QR copiato';

  @override
  String get generatorCopyQrContent => 'Copia contenuto QR';

  @override
  String get typeUrl => 'URL';

  @override
  String get typeUrlDescription =>
      'Collegamento a un sito web o contenuti online';

  @override
  String get typeUrlHeadline => 'Scansiona per visitare';

  @override
  String get typePlainText => 'Testo semplice';

  @override
  String get typePlainTextDescription => 'Testo o messaggio libero';

  @override
  String get typePlainTextHeadline => 'Scansiona per leggere';

  @override
  String get typeWifi => 'WiFi';

  @override
  String get typeWifiDescription => 'Condividi le credenziali della rete';

  @override
  String get typeWifiHeadline => 'Scansiona per connetterti al WiFi';

  @override
  String get typeVcard => 'vCard';

  @override
  String get typeVcardDescription => 'Condividi i dati di contatto';

  @override
  String get typeVcardHeadline => 'Scansiona per salvare il contatto';

  @override
  String get typeCalendar => 'Calendario';

  @override
  String get typeCalendarDescription => 'Aggiungi un evento al calendario';

  @override
  String get typeCalendarHeadline => 'Scansiona per aggiungere al calendario';

  @override
  String get typePhone => 'Telefono';

  @override
  String get typePhoneDescription => 'Un numero da chiamare';

  @override
  String get typePhoneHeadline => 'Scansiona per chiamare';

  @override
  String get typeEmail => 'Email';

  @override
  String get typeEmailDescription => 'Componi un\'email';

  @override
  String get typeEmailHeadline => 'Scansiona per inviare email';

  @override
  String get typeSms => 'SMS';

  @override
  String get typeSmsDescription => 'Invia un messaggio di testo';

  @override
  String get typeSmsHeadline => 'Scansiona per inviare SMS';

  @override
  String get typeLocation => 'Posizione';

  @override
  String get typeLocationDescription => 'Un indirizzo o coordinate';

  @override
  String get typeLocationHeadline => 'Scansiona per le indicazioni';

  @override
  String get historyAppBarTitle => 'Cronologia scansioni';

  @override
  String get historyClearAllTooltip => 'Cancella tutto';

  @override
  String get historyEmpty => 'Nessuna scansione ancora';

  @override
  String get historyJustNow => 'Adesso';

  @override
  String historyMinutesAgo(Object count) {
    return '${count}m fa';
  }

  @override
  String historyHoursAgo(Object count) {
    return '${count}h fa';
  }

  @override
  String historyDeletedSnack(Object label) {
    return '$label eliminato';
  }

  @override
  String get historyUndoButton => 'Annulla';

  @override
  String get historyClearDialogTitle => 'Cancellare la cronologia?';

  @override
  String get historyClearDialogContent =>
      'Questa azione non può essere annullata.';

  @override
  String get historyClearButton => 'Cancella';

  @override
  String get historySourceGallery => 'Galleria';

  @override
  String get historySourceCamera => 'Fotocamera';

  @override
  String get galleryNoQrFound => 'Nessun codice QR trovato nell\'immagine';

  @override
  String get galleryCropTitle => 'Inquadra il codice QR';

  @override
  String get galleryCropScan => 'Scansiona';

  @override
  String get ratePromptTitle => 'Ti piace PlainQR?';

  @override
  String get ratePromptBody =>
      'La tua recensione aiuta gli altri a trovare uno scanner QR privato.';

  @override
  String get ratePromptRate => 'Valutaci';

  @override
  String get ratePromptFeedback => 'Feedback';

  @override
  String get tilePromptTitle => 'Scansiona da qualsiasi luogo';

  @override
  String get tilePromptBody =>
      'Aggiungi un tile PlainQR alle Impostazioni rapide.\nScorri verso il basso, tocca, scansiona — senza aprire l\'app.';

  @override
  String get tilePromptAdd => 'Aggiungi Tile';

  @override
  String get settingsAppBarTitle => 'Impostazioni';

  @override
  String get settingsSectionScanning => 'Scansione';

  @override
  String get settingsSaveHistory => 'Salva cronologia scansioni';

  @override
  String get settingsSaveHistoryOn =>
      'Scansioni fotocamera salvate automaticamente';

  @override
  String get settingsSaveHistoryOff =>
      'Salva manualmente dalla scheda risultato';

  @override
  String get settingsAutoOpen => 'Apertura automatica tipi pericolosi';

  @override
  String get settingsAutoOpenOn =>
      'Salta conferma per URL, chiamate, SMS ed email';

  @override
  String get settingsAutoOpenOff =>
      'Chiedi prima di aprire URL, effettuare chiamate, inviare SMS o comporre email';

  @override
  String get settingsAutoFlashlight => 'Torcia automatica alla scansione';

  @override
  String get settingsAutoFlashlightOn =>
      'La torcia si accende quando si apre la schermata di scansione';

  @override
  String get settingsAutoFlashlightOff => 'Torcia controllata manualmente';

  @override
  String get settingsEnableGenerators => 'Abilita generatori';

  @override
  String settingsEnableGeneratorsSubtitle(Object price) {
    return 'Sblocca i generatori WiFi, vCard e Calendario per $price';
  }

  @override
  String get settingsPremiumUnlocked => 'Premium sbloccato';

  @override
  String get settingsPremiumUnlockedSubtitle =>
      'Tutte le funzionalità del generatore sono abilitate';

  @override
  String get settingsSectionAppearance => 'Aspetto';

  @override
  String get settingsThemeSystem => 'Sistema';

  @override
  String get settingsThemeLight => 'Chiaro';

  @override
  String get settingsThemeDark => 'Scuro';

  @override
  String get settingsSectionLegal => 'Legale';

  @override
  String get settingsOpenSourceLicences => 'Licenze open source';

  @override
  String get changelog04Item1 =>
      '22 lingue — PlainQR ora parla la tua lingua. Sceglila nelle impostazioni di sistema.';

  @override
  String get changelog04Item2 =>
      'Tema di sistema — chiaro, scuro o seguendo automaticamente il tuo dispositivo.';

  @override
  String get changelog04Item3 =>
      'Valutaci — tocca la stella nel menu per lasciare una recensione sul Play Store.';

  @override
  String get changelog04Item4 => 'Novità — le stai leggendo.';

  @override
  String get changelog04Item5 =>
      'Vedi i feedback su GitHub — tocca una pubblicazione per vedere lo stato dell\'issue.';

  @override
  String get unlockAppBarTitle => 'Abilita generatori';

  @override
  String get unlockTitle => 'Abilita generatori WiFi, contatti\ne calendario';

  @override
  String unlockDescription(Object price) {
    return 'Genera codici QR per reti WiFi, schede contatto\ne eventi calendario.\n$price una tantum. Nessun abbonamento.';
  }

  @override
  String unlockEnableButton(Object price) {
    return 'Abilita — $price';
  }

  @override
  String get unlockRestoreButton => 'Ripristina acquisto precedente';

  @override
  String get unlockDialogTitle => 'Sblocca generatori';

  @override
  String unlockDialogContent(Object price) {
    return 'Sblocca i generatori WiFi, vCard e Calendario con un acquisto $price una tantum. Gli altri sei tipi di generatori sono sempre gratuiti.';
  }

  @override
  String get actionOpen => 'Apri';

  @override
  String get actionCopy => 'Copia';

  @override
  String get actionGenerate => 'Genera';

  @override
  String get actionShare => 'Condividi';

  @override
  String get actionEmail => 'Email';

  @override
  String get actionCall => 'Chiama';

  @override
  String get actionSendSms => 'Invia SMS';

  @override
  String get actionConnect => 'Connetti';

  @override
  String get actionCopySsid => 'Copia SSID';

  @override
  String get actionCopyPassword => 'Copia password';

  @override
  String get actionOpenMaps => 'Apri Maps';

  @override
  String get actionOpenInWhatsApp => 'Apri in WhatsApp';

  @override
  String get actionOpenInTelegram => 'Apri in Telegram';

  @override
  String get actionOpenInSignal => 'Apri in Signal';

  @override
  String get actionOpenInTwitter => 'Apri in Twitter';

  @override
  String get actionFaceTimeCall => 'Chiamata FaceTime';

  @override
  String get actionOpenInSkype => 'Apri in Skype';

  @override
  String get actionOpenInWallet => 'Apri in Wallet';

  @override
  String get actionCopyAddress => 'Copia indirizzo';

  @override
  String get actionOpenInPayPal => 'Apri in PayPal';

  @override
  String get actionOpenStore => 'Apri Store';

  @override
  String get actionAddContact => 'Aggiungi contatto';

  @override
  String get actionAddToCalendar => 'Aggiungi al calendario';

  @override
  String get actionSave => 'Salva';

  @override
  String get actionCancel => 'Annulla';

  @override
  String showMoreRows(Object hiddenRows, Object rowWord) {
    return 'Mostra $hiddenRows altre $rowWord';
  }

  @override
  String showMoreFields(Object hiddenRows) {
    return 'Mostra $hiddenRows altri';
  }

  @override
  String get showLess => 'Mostra meno';

  @override
  String get fieldEvent => 'Evento';

  @override
  String get fieldStartTime => 'Ora di inizio';

  @override
  String get fieldEndTime => 'Ora di fine';

  @override
  String get fieldLocation => 'Posizione';

  @override
  String get fieldDescription => 'Descrizione';

  @override
  String get fieldOrganizer => 'Organizzatore';

  @override
  String get fieldAttendee => 'Partecipante';

  @override
  String get fieldName => 'Nome';

  @override
  String get fieldPhone => 'Telefono';

  @override
  String get fieldEmail => 'Email';

  @override
  String get fieldOrganization => 'Organizzazione';

  @override
  String get fieldTitle => 'Titolo';

  @override
  String get fieldAddress => 'Indirizzo';

  @override
  String get fieldNotes => 'Note';

  @override
  String get fieldSsid => 'SSID';

  @override
  String get fieldPassword => 'Password';

  @override
  String get fieldEncryption => 'Crittografia';

  @override
  String get fieldUrl => 'URL';

  @override
  String get fieldNickname => 'Soprannome';

  @override
  String get fieldRole => 'Ruolo';

  @override
  String get fieldBirthday => 'Compleanno';

  @override
  String get row => 'riga';

  @override
  String get rows => 'righe';

  @override
  String get monthJan => 'Gen';

  @override
  String get monthFeb => 'Feb';

  @override
  String get monthMar => 'Mar';

  @override
  String get monthApr => 'Apr';

  @override
  String get monthMay => 'Mag';

  @override
  String get monthJun => 'Giu';

  @override
  String get monthJul => 'Lug';

  @override
  String get monthAug => 'Ago';

  @override
  String get monthSep => 'Set';

  @override
  String get monthOct => 'Ott';

  @override
  String get monthNov => 'Nov';

  @override
  String get monthDec => 'Dic';

  @override
  String get cardCtaTitle => 'Apri con PlainQR';

  @override
  String get cardSavedToDownloads => 'Scheda salvata in Download';

  @override
  String get cardShareFailed => 'Impossibile condividere la scheda';

  @override
  String get cardSaveFailed => 'Impossibile salvare la scheda';

  @override
  String get shareSubjectQrCode => 'Codice QR';

  @override
  String get copiedToClipboard => 'Copiato negli appunti';

  @override
  String get sharing => 'Condivisione…';

  @override
  String get openingLink => 'Apertura collegamento';

  @override
  String get invalidUrl => 'URL non valido';

  @override
  String get couldNotOpenLink => 'Impossibile aprire questo collegamento';

  @override
  String get errorOpeningLink => 'Errore nell\'apertura del collegamento';

  @override
  String get wifiNoSsid => 'Nessun SSID trovato in questo codice QR';

  @override
  String wifiConnected(Object ssid) {
    return 'Connesso a $ssid';
  }

  @override
  String wifiCouldNotConnect(Object ssid) {
    return 'Impossibile connettersi a $ssid';
  }

  @override
  String get wifiConnectionFailed => 'Connessione fallita';

  @override
  String get contactOpenFailed => 'Impossibile aprire il contatto';

  @override
  String get eventOpenFailed => 'Impossibile aprire l\'evento';

  @override
  String get confirmOpenExternalTitle => 'Aprire contenuti esterni?';

  @override
  String confirmOpenExternalBody(Object url) {
    return 'Il contenuto del collegamento qui sotto potrebbe non essere sicuro. Procedi solo se ti fidi della fonte.\n\n$url\n\n— Per saltare questa finestra in futuro, attiva \"Apertura automatica tipi pericolosi\" nelle Impostazioni.';
  }

  @override
  String get autoOpenDialogTitle => 'Aprire automaticamente i tipi pericolosi?';

  @override
  String get autoOpenDialogContent =>
      'Con questa impostazione attivata, URL, chiamate telefoniche, SMS ed email dai codici QR si apriranno immediatamente senza mostrarti prima la destinazione. Questo significa che un codice QR malevolo potrebbe effettuare una chiamata o indirizzarti a un sito dannoso senza la tua conoscenza.\n\nAttiva solo se comprendi e accetti questo rischio.';

  @override
  String get autoOpenConfirmButton => 'Ho capito';

  @override
  String purchaseButton(Object price) {
    return 'Acquista $price';
  }

  @override
  String get storeUnavailable =>
      'Google Play Store non disponibile. Impossibile effettuare acquisti.';

  @override
  String get productLoadFailed => 'Caricamento prodotto non riuscito';

  @override
  String get purchaseFailed => 'Acquisto non riuscito';

  @override
  String get noErrorsLogged => '(nessun errore registrato)';

  @override
  String get addressLookupTimedOut => 'Ricerca indirizzo scaduta';

  @override
  String get couldNotResolveAddress => 'Impossibile risolvere l\'indirizzo';

  @override
  String get locationPermissionDenied => 'Permesso di posizione negato';

  @override
  String get locationLookupTimedOut => 'Ricerca posizione scaduta';

  @override
  String get couldNotGetCurrentLocation =>
      'Impossibile ottenere la posizione attuale';

  @override
  String get contactsPermissionDenied => 'Permesso contatti negato';

  @override
  String get couldNotAccessContacts => 'Impossibile accedere ai contatti';

  @override
  String get contactImported => 'Contatto importato';

  @override
  String get required => 'Obbligatorio';

  @override
  String get resolving => 'Risoluzione…';

  @override
  String get getCurrentLocation => 'Ottieni posizione attuale';

  @override
  String get importFromContacts => 'Importa dai contatti';

  @override
  String get tapToPickDateTime => 'Tocca per scegliere data e ora';

  @override
  String get formEmailAddress => 'Indirizzo email';

  @override
  String get formEmailHint => 'es. utente@esempio.com';

  @override
  String get formEmailRequired => 'Obbligatorio — deve contenere @';

  @override
  String get formSubject => 'Oggetto';

  @override
  String get formBody => 'Corpo';

  @override
  String get formPhoneNumber => 'Numero di telefono';

  @override
  String get formPhoneHint => 'es. +39 333 1234567';

  @override
  String get formSmsHelper => 'Obbligatorio — il messaggio è opzionale';

  @override
  String get formMessage => 'Messaggio';

  @override
  String get formText => 'Testo';

  @override
  String get formTextHint => 'Inserisci un testo o messaggio';

  @override
  String get formUrl => 'URL';

  @override
  String get formUrlHint => 'esempio.com';

  @override
  String get formUrlHelper =>
      'Inserisci un dominio — puoi modificare https:// se necessario';

  @override
  String get formFullName => 'Nome completo';

  @override
  String get formVcardHelper =>
      'Obbligatorio — tutti gli altri campi sono opzionali';

  @override
  String get formOrganization => 'Organizzazione';

  @override
  String get formTitle => 'Titolo';

  @override
  String get formNetworkName => 'Nome rete (SSID)';

  @override
  String get formWifiSsidHint => 'es. LaMiaReteWiFi';

  @override
  String get formSsidAutoDetected =>
      'SSID rilevato automaticamente dalla rete attuale';

  @override
  String get formWifiPassword => 'Password';

  @override
  String get formWifiPasswordHelper => 'Lascia vuoto per reti aperte';

  @override
  String get formAddress => 'Indirizzo';

  @override
  String get formAddressHint => 'es. Torre Eiffel, Parigi';

  @override
  String get formLatitude => 'Latitudine (-90 a 90)';

  @override
  String get formLongitude => 'Longitudine (-180 a 180)';

  @override
  String get formStartDate => 'Data di inizio *';

  @override
  String get formEndDate => 'Data di fine';

  @override
  String get formEventTitle => 'Titolo evento';

  @override
  String get formLocation => 'Posizione';

  @override
  String get formLocationHint => 'es. Via Roma 123 o nome del luogo';

  @override
  String get updateReadyMessage => 'Aggiornamento pronto per l\'installazione';

  @override
  String get updateReadyAction => 'Riavvia';
}
