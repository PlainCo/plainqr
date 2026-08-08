// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for French (`fr`).
class AppLocalizationsFr extends AppLocalizations {
  AppLocalizationsFr([String locale = 'fr']) : super(locale);

  @override
  String get appName => 'PlainQR';

  @override
  String get appNameFull => 'PlainQR — Scanner et Générer';

  @override
  String get drawerScan => 'Scanner';

  @override
  String get drawerScanFromGallery => 'Scanner depuis la galerie';

  @override
  String get drawerGenerator => 'Générateur';

  @override
  String get drawerHistory => 'Historique';

  @override
  String get drawerSettings => 'Paramètres';

  @override
  String get scannerUnlockSnack => 'Générateurs débloqués !';

  @override
  String get scannerUnlockAnnounce => 'Générateurs débloqués';

  @override
  String scannerFreeTierBanner(Object price) {
    return 'Version gratuite — $price pour supprimer';
  }

  @override
  String scannerDetectedAnnounce(Object type, Object brief) {
    return '$type détecté : $brief';
  }

  @override
  String get scannerSavedToHistory => 'Enregistré dans l\'historique';

  @override
  String get scannerTooltipDisableFlashlight => 'Désactiver la lampe torche';

  @override
  String get scannerTooltipEnableFlashlight => 'Activer la lampe torche';

  @override
  String get scannerTooltipGallery => 'Scanner depuis la galerie';

  @override
  String get scannerZoomIn => 'Zoom avant';

  @override
  String get scannerZoomOut => 'Zoom arrière';

  @override
  String scannerZoomLevel(Object level) {
    return '$level×';
  }

  @override
  String get generatorAppBarTitle => 'Générateur';

  @override
  String generatorFormAppBarTitle(Object typeName) {
    return 'QR $typeName';
  }

  @override
  String get generatorCardLabel => 'Libellé de la carte (facultatif)';

  @override
  String get generatorCardLabelHint => 'ex. WiFi invité, Mon site web';

  @override
  String get generatorPreview => 'Aperçu';

  @override
  String get generatorStyle => 'Style :';

  @override
  String get generatorStyleLight => 'Clair';

  @override
  String get generatorStyleDark => 'Sombre';

  @override
  String get generatorStyleSticker => 'Autocollant';

  @override
  String get generatorShareCard => 'Partager la carte';

  @override
  String get generatorSaveToDevice => 'Enregistrer sur l\'appareil';

  @override
  String get generatorCopiedSnack => 'Contenu du QR copié';

  @override
  String get generatorCopyQrContent => 'Copier le contenu du QR';

  @override
  String get typeUrl => 'URL';

  @override
  String get typeUrlDescription =>
      'Lien vers un site web ou un contenu en ligne';

  @override
  String get typeUrlHeadline => 'Scanner pour visiter';

  @override
  String get typePlainText => 'Texte brut';

  @override
  String get typePlainTextDescription => 'Texte ou message en format libre';

  @override
  String get typePlainTextHeadline => 'Scanner pour lire';

  @override
  String get typeWifi => 'WiFi';

  @override
  String get typeWifiDescription => 'Partager vos identifiants réseau';

  @override
  String get typeWifiHeadline => 'Scanner pour se connecter au WiFi';

  @override
  String get typeVcard => 'vCard';

  @override
  String get typeVcardDescription => 'Partager les coordonnées';

  @override
  String get typeVcardHeadline => 'Scanner pour enregistrer le contact';

  @override
  String get typeCalendar => 'Calendrier';

  @override
  String get typeCalendarDescription => 'Ajouter un événement à un calendrier';

  @override
  String get typeCalendarHeadline => 'Scanner pour ajouter au calendrier';

  @override
  String get typePhone => 'Téléphone';

  @override
  String get typePhoneDescription => 'Un numéro de téléphone à appeler';

  @override
  String get typePhoneHeadline => 'Scanner pour appeler';

  @override
  String get typeEmail => 'E-mail';

  @override
  String get typeEmailDescription => 'Rédiger un e-mail';

  @override
  String get typeEmailHeadline => 'Scanner pour envoyer un e-mail';

  @override
  String get typeSms => 'SMS';

  @override
  String get typeSmsDescription => 'Envoyer un message texte';

  @override
  String get typeSmsHeadline => 'Scanner pour envoyer un SMS';

  @override
  String get typeLocation => 'Localisation';

  @override
  String get typeLocationDescription =>
      'Une adresse physique ou des coordonnées';

  @override
  String get typeLocationHeadline => 'Scanner pour l\'itinéraire';

  @override
  String get historyAppBarTitle => 'Historique des scans';

  @override
  String get historyClearAllTooltip => 'Tout effacer';

  @override
  String get historyEmpty => 'Aucun scan pour l\'instant';

  @override
  String get historyJustNow => 'À l\'instant';

  @override
  String historyMinutesAgo(Object count) {
    return 'Il y a $count min';
  }

  @override
  String historyHoursAgo(Object count) {
    return 'Il y a $count h';
  }

  @override
  String historyDeletedSnack(Object label) {
    return '$label supprimé';
  }

  @override
  String get historyUndoButton => 'Annuler';

  @override
  String get historyClearDialogTitle => 'Effacer l\'historique des scans ?';

  @override
  String get historyClearDialogContent => 'Cette action est irréversible.';

  @override
  String get historyClearButton => 'Effacer';

  @override
  String get historySourceGallery => 'Galerie';

  @override
  String get historySourceCamera => 'Caméra';

  @override
  String get galleryNoQrFound => 'Aucun code QR trouvé dans l\'image';

  @override
  String get galleryCropTitle => 'Cadrez le code QR';

  @override
  String get galleryCropScan => 'Scanner';

  @override
  String get ratePromptTitle => 'Vous aimez PlainQR ?';

  @override
  String get ratePromptBody =>
      'Votre avis aide les autres à trouver un scanner QR privé.';

  @override
  String get ratePromptRate => 'Noter';

  @override
  String get ratePromptFeedback => 'Avis';

  @override
  String get tilePromptTitle => 'Scannez de n\'importe où';

  @override
  String get tilePromptBody =>
      'Ajoutez une tuile PlainQR aux paramètres rapides.\nBalayez vers le bas, appuyez, scannez — pas besoin d\'ouvrir l\'app.';

  @override
  String get tilePromptAdd => 'Ajouter une tuile';

  @override
  String get settingsAppBarTitle => 'Paramètres';

  @override
  String get settingsSectionScanning => 'Scan';

  @override
  String get settingsSaveHistory => 'Enregistrer l\'historique des scans';

  @override
  String get settingsSaveHistoryOn =>
      'Scans caméra enregistrés automatiquement';

  @override
  String get settingsSaveHistoryOff =>
      'Enregistrer manuellement depuis la carte de résultat';

  @override
  String get settingsAutoOpen => 'Ouverture automatique des types dangereux';

  @override
  String get settingsAutoOpenOn =>
      'Ignorer la confirmation pour les URL, appels, SMS et e-mails';

  @override
  String get settingsAutoOpenOff =>
      'Demander avant d\'ouvrir les URL, passer des appels, envoyer des SMS ou rédiger des e-mails';

  @override
  String get settingsAutoFlashlight => 'Lampe torche automatique lors du scan';

  @override
  String get settingsAutoFlashlightOn =>
      'La lampe torche s\'allume à l\'ouverture de l\'écran de scan';

  @override
  String get settingsAutoFlashlightOff => 'Lampe torche contrôlée manuellement';

  @override
  String get settingsEnableGenerators => 'Activer les générateurs';

  @override
  String settingsEnableGeneratorsSubtitle(Object price) {
    return 'Débloquez les générateurs WiFi, vCard et Calendrier pour $price';
  }

  @override
  String get settingsPremiumUnlocked => 'Premium débloqué';

  @override
  String get settingsPremiumUnlockedSubtitle =>
      'Toutes les fonctionnalités de génération sont activées';

  @override
  String get settingsSectionAppearance => 'Apparence';

  @override
  String get settingsThemeSystem => 'Système';

  @override
  String get settingsThemeLight => 'Clair';

  @override
  String get settingsThemeDark => 'Sombre';

  @override
  String get settingsSectionLegal => 'Mentions légales';

  @override
  String get settingsOpenSourceLicences => 'Licences open source';

  @override
  String get changelog04Item1 =>
      '22 langues — PlainQR parle désormais votre langue. Choisissez-la dans les paramètres système.';

  @override
  String get changelog04Item2 =>
      'Thème système — clair, sombre ou suit automatiquement votre appareil.';

  @override
  String get changelog04Item3 =>
      'Évaluez-nous — appuyez sur l\'étoile dans le menu pour laisser un avis sur le Play Store.';

  @override
  String get changelog04Item4 => 'Nouveautés — vous êtes en train de les lire.';

  @override
  String get changelog04Item5 =>
      'Voir les retours sur GitHub — appuyez sur une soumission pour voir le statut de l\'issue.';

  @override
  String get unlockAppBarTitle => 'Activer les générateurs';

  @override
  String get unlockTitle =>
      'Activer les générateurs WiFi, Contact\net Calendrier';

  @override
  String unlockDescription(Object price) {
    return 'Générer des QR codes pour les réseaux WiFi, les fiches de contact\net les événements calendrier.\n$price une fois. Pas d\'abonnement.';
  }

  @override
  String unlockEnableButton(Object price) {
    return 'Activer — $price';
  }

  @override
  String get unlockRestoreButton => 'Restaurer l\'achat précédent';

  @override
  String get unlockDialogTitle => 'Débloquer les générateurs';

  @override
  String unlockDialogContent(Object price) {
    return 'Débloquez les générateurs WiFi, vCard et Calendrier avec un achat unique de $price. Les six autres types de générateurs sont toujours gratuits.';
  }

  @override
  String get actionOpen => 'Ouvrir';

  @override
  String get actionCopy => 'Copier';

  @override
  String get actionGenerate => 'Générer';

  @override
  String get actionShare => 'Partager';

  @override
  String get actionEmail => 'E-mail';

  @override
  String get actionCall => 'Appeler';

  @override
  String get actionSendSms => 'Envoyer un SMS';

  @override
  String get actionConnect => 'Connecter';

  @override
  String get actionCopySsid => 'Copier le SSID';

  @override
  String get actionCopyPassword => 'Copier le mot de passe';

  @override
  String get actionOpenMaps => 'Ouvrir les cartes';

  @override
  String get actionOpenInWhatsApp => 'Ouvrir dans WhatsApp';

  @override
  String get actionOpenInTelegram => 'Ouvrir dans Telegram';

  @override
  String get actionOpenInSignal => 'Ouvrir dans Signal';

  @override
  String get actionOpenInTwitter => 'Ouvrir dans Twitter';

  @override
  String get actionFaceTimeCall => 'Appel FaceTime';

  @override
  String get actionOpenInSkype => 'Ouvrir dans Skype';

  @override
  String get actionOpenInWallet => 'Ouvrir dans Wallet';

  @override
  String get actionCopyAddress => 'Copier l\'adresse';

  @override
  String get actionOpenInPayPal => 'Ouvrir dans PayPal';

  @override
  String get actionOpenStore => 'Ouvrir la boutique';

  @override
  String get actionAddContact => 'Ajouter le contact';

  @override
  String get actionAddToCalendar => 'Ajouter au calendrier';

  @override
  String get actionSave => 'Enregistrer';

  @override
  String get actionCancel => 'Annuler';

  @override
  String showMoreRows(Object hiddenRows, Object rowWord) {
    return 'Afficher $hiddenRows $rowWord de plus';
  }

  @override
  String showMoreFields(Object hiddenRows) {
    return 'Afficher $hiddenRows de plus';
  }

  @override
  String get showLess => 'Afficher moins';

  @override
  String get fieldEvent => 'Événement';

  @override
  String get fieldStartTime => 'Heure de début';

  @override
  String get fieldEndTime => 'Heure de fin';

  @override
  String get fieldLocation => 'Lieu';

  @override
  String get fieldDescription => 'Description';

  @override
  String get fieldOrganizer => 'Organisateur';

  @override
  String get fieldAttendee => 'Participant';

  @override
  String get fieldName => 'Nom';

  @override
  String get fieldPhone => 'Téléphone';

  @override
  String get fieldEmail => 'E-mail';

  @override
  String get fieldOrganization => 'Organisation';

  @override
  String get fieldTitle => 'Titre';

  @override
  String get fieldAddress => 'Adresse';

  @override
  String get fieldNotes => 'Notes';

  @override
  String get fieldSsid => 'SSID';

  @override
  String get fieldPassword => 'Mot de passe';

  @override
  String get fieldEncryption => 'Chiffrement';

  @override
  String get fieldUrl => 'URL';

  @override
  String get fieldNickname => 'Surnom';

  @override
  String get fieldRole => 'Rôle';

  @override
  String get fieldBirthday => 'Date de naissance';

  @override
  String get row => 'ligne';

  @override
  String get rows => 'lignes';

  @override
  String get monthJan => 'janv.';

  @override
  String get monthFeb => 'févr.';

  @override
  String get monthMar => 'mars';

  @override
  String get monthApr => 'avr.';

  @override
  String get monthMay => 'mai';

  @override
  String get monthJun => 'juin';

  @override
  String get monthJul => 'juil.';

  @override
  String get monthAug => 'août';

  @override
  String get monthSep => 'sept.';

  @override
  String get monthOct => 'oct.';

  @override
  String get monthNov => 'nov.';

  @override
  String get monthDec => 'déc.';

  @override
  String get cardCtaTitle => 'Ouvrir avec PlainQR';

  @override
  String get cardSavedToDownloads => 'Carte enregistrée dans Téléchargements';

  @override
  String get cardShareFailed => 'Impossible de partager la carte';

  @override
  String get cardSaveFailed => 'Impossible d\'enregistrer la carte';

  @override
  String get shareSubjectQrCode => 'Code QR';

  @override
  String get copiedToClipboard => 'Copié dans le presse-papiers';

  @override
  String get sharing => 'Partage…';

  @override
  String get openingLink => 'Ouverture du lien';

  @override
  String get invalidUrl => 'URL invalide';

  @override
  String get couldNotOpenLink => 'Impossible d\'ouvrir ce lien';

  @override
  String get errorOpeningLink => 'Erreur lors de l\'ouverture du lien';

  @override
  String get wifiNoSsid => 'Aucun SSID trouvé dans ce QR code';

  @override
  String wifiConnected(Object ssid) {
    return 'Connecté à $ssid';
  }

  @override
  String wifiCouldNotConnect(Object ssid) {
    return 'Impossible de se connecter à $ssid';
  }

  @override
  String get wifiConnectionFailed => 'Échec de la connexion';

  @override
  String get contactOpenFailed => 'Impossible d\'ouvrir le contact';

  @override
  String get eventOpenFailed => 'Impossible d\'ouvrir l\'événement';

  @override
  String get confirmOpenExternalTitle => 'Ouvrir le contenu externe ?';

  @override
  String confirmOpenExternalBody(Object url) {
    return 'Le contenu du lien ci-dessous peut ne pas être sûr. Procédez uniquement si vous faites confiance à la source.\n\n$url\n\n— Pour ignorer cette boîte de dialogue à l\'avenir, activez « Ouverture automatique des types dangereux » dans les paramètres.';
  }

  @override
  String get autoOpenDialogTitle =>
      'Ouverture automatique des types dangereux ?';

  @override
  String get autoOpenDialogContent =>
      'Avec ce paramètre activé, les URL, appels téléphoniques, SMS et e-mails provenant de QR codes s\'ouvriront immédiatement sans afficher la destination au préalable. Cela signifie qu\'un QR code malveillant pourrait passer un appel ou vous rediriger vers un site dangereux à votre insu.\n\nActivez-le uniquement si vous comprenez et acceptez ce risque.';

  @override
  String get autoOpenConfirmButton => 'J\'ai compris';

  @override
  String purchaseButton(Object price) {
    return 'Acheter pour $price';
  }

  @override
  String get storeUnavailable =>
      'Google Play Store non disponible. Impossible d\'effectuer des achats.';

  @override
  String get productLoadFailed => 'Échec du chargement du produit';

  @override
  String get purchaseFailed => 'Échec de l\'achat';

  @override
  String get noErrorsLogged => '(aucune erreur enregistrée)';

  @override
  String get addressLookupTimedOut => 'Recherche d\'adresse expirée';

  @override
  String get couldNotResolveAddress => 'Impossible de résoudre cette adresse';

  @override
  String get locationPermissionDenied => 'Autorisation de localisation refusée';

  @override
  String get locationLookupTimedOut => 'Recherche de localisation expirée';

  @override
  String get couldNotGetCurrentLocation =>
      'Impossible d\'obtenir la position actuelle';

  @override
  String get contactsPermissionDenied =>
      'Autorisation d\'accès aux contacts refusée';

  @override
  String get couldNotAccessContacts => 'Impossible d\'accéder aux contacts';

  @override
  String get contactImported => 'Contact importé';

  @override
  String get required => 'Obligatoire';

  @override
  String get resolving => 'Résolution…';

  @override
  String get getCurrentLocation => 'Obtenir la position actuelle';

  @override
  String get importFromContacts => 'Importer depuis les contacts';

  @override
  String get tapToPickDateTime => 'Appuyez pour choisir la date et l\'heure';

  @override
  String get formEmailAddress => 'Adresse e-mail';

  @override
  String get formEmailHint => 'ex. utilisateur@exemple.com';

  @override
  String get formEmailRequired => 'Obligatoire — doit contenir @';

  @override
  String get formSubject => 'Objet';

  @override
  String get formBody => 'Corps';

  @override
  String get formPhoneNumber => 'Numéro de téléphone';

  @override
  String get formPhoneHint => 'ex. +33 1 23 45 67 89';

  @override
  String get formSmsHelper => 'Obligatoire — le message est facultatif';

  @override
  String get formMessage => 'Message';

  @override
  String get formText => 'Texte';

  @override
  String get formTextHint => 'Saisissez un texte ou un message';

  @override
  String get formUrl => 'URL';

  @override
  String get formUrlHint => 'exemple.com';

  @override
  String get formUrlHelper =>
      'Saisissez un domaine — vous pouvez modifier https:// si nécessaire';

  @override
  String get formFullName => 'Nom complet';

  @override
  String get formVcardHelper =>
      'Obligatoire — tous les autres champs sont facultatifs';

  @override
  String get formOrganization => 'Organisation';

  @override
  String get formTitle => 'Titre';

  @override
  String get formNetworkName => 'Nom du réseau (SSID)';

  @override
  String get formWifiSsidHint => 'ex. MonReseauWiFi';

  @override
  String get formSsidAutoDetected =>
      'SSID détecté automatiquement depuis votre réseau actuel';

  @override
  String get formWifiPassword => 'Mot de passe';

  @override
  String get formWifiPasswordHelper => 'Laisser vide pour les réseaux ouverts';

  @override
  String get formAddress => 'Adresse';

  @override
  String get formAddressHint => 'ex. Tour Eiffel, Paris';

  @override
  String get formLatitude => 'Latitude (-90 à 90)';

  @override
  String get formLongitude => 'Longitude (-180 à 180)';

  @override
  String get formStartDate => 'Date de début *';

  @override
  String get formEndDate => 'Date de fin';

  @override
  String get formEventTitle => 'Titre de l\'événement';

  @override
  String get formLocation => 'Lieu';

  @override
  String get formLocationHint => 'ex. 123 rue Principale ou nom du lieu';

  @override
  String get updateReadyMessage => 'Mise à jour prête à installer';

  @override
  String get updateReadyAction => 'Redémarrer';
}
