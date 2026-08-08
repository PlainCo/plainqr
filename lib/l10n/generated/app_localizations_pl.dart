// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Polish (`pl`).
class AppLocalizationsPl extends AppLocalizations {
  AppLocalizationsPl([String locale = 'pl']) : super(locale);

  @override
  String get appName => 'PlainQR';

  @override
  String get appNameFull => 'PlainQR — Skanuj i generuj';

  @override
  String get drawerScan => 'Skanuj';

  @override
  String get drawerScanFromGallery => 'Skanuj z galerii';

  @override
  String get drawerGenerator => 'Generator';

  @override
  String get drawerHistory => 'Historia';

  @override
  String get drawerSettings => 'Ustawienia';

  @override
  String get scannerUnlockSnack => 'Generatory odblokowane!';

  @override
  String get scannerUnlockAnnounce => 'Generatory odblokowane';

  @override
  String scannerFreeTierBanner(Object price) {
    return 'Wersja darmowa — $price, aby usunąć';
  }

  @override
  String scannerDetectedAnnounce(Object type, Object brief) {
    return 'Wykryto $type: $brief';
  }

  @override
  String get scannerSavedToHistory => 'Zapisano w historii';

  @override
  String get scannerTooltipDisableFlashlight => 'Wyłącz latarkę';

  @override
  String get scannerTooltipEnableFlashlight => 'Włącz latarkę';

  @override
  String get scannerTooltipGallery => 'Skanuj z galerii';

  @override
  String get scannerZoomIn => 'Powiększ';

  @override
  String get scannerZoomOut => 'Pomniejsz';

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
  String get generatorCardLabel => 'Etykieta karty (opcjonalnie)';

  @override
  String get generatorCardLabelHint => 'np. WiFi dla gości, Moja strona';

  @override
  String get generatorPreview => 'Podgląd';

  @override
  String get generatorStyle => 'Styl';

  @override
  String get generatorStyleLight => 'Jasny';

  @override
  String get generatorStyleDark => 'Ciemny';

  @override
  String get generatorStyleSticker => 'Naklejka';

  @override
  String get generatorShareCard => 'Udostępnij kartę';

  @override
  String get generatorSaveToDevice => 'Zapisz na urządzeniu';

  @override
  String get generatorCopiedSnack => 'Skopiowano zawartość QR';

  @override
  String get generatorCopyQrContent => 'Kopiuj zawartość QR';

  @override
  String get typeUrl => 'URL';

  @override
  String get typeUrlDescription =>
      'Link do strony internetowej lub treści online';

  @override
  String get typeUrlHeadline => 'Skanuj, aby odwiedzić';

  @override
  String get typePlainText => 'Tekst';

  @override
  String get typePlainTextDescription => 'Dowolny tekst lub wiadomość';

  @override
  String get typePlainTextHeadline => 'Skanuj, aby przeczytać';

  @override
  String get typeWifi => 'WiFi';

  @override
  String get typeWifiDescription => 'Udostępnij dane logowania do sieci';

  @override
  String get typeWifiHeadline => 'Skanuj, aby dołączyć do WiFi';

  @override
  String get typeVcard => 'vCard';

  @override
  String get typeVcardDescription => 'Udostępnij dane kontaktowe';

  @override
  String get typeVcardHeadline => 'Skanuj, aby zapisać kontakt';

  @override
  String get typeCalendar => 'Kalendarz';

  @override
  String get typeCalendarDescription => 'Dodaj wydarzenie do kalendarza';

  @override
  String get typeCalendarHeadline => 'Skanuj, aby dodać do kalendarza';

  @override
  String get typePhone => 'Telefon';

  @override
  String get typePhoneDescription => 'Numer telefonu do połączenia';

  @override
  String get typePhoneHeadline => 'Skanuj, aby zadzwonić';

  @override
  String get typeEmail => 'E-mail';

  @override
  String get typeEmailDescription => 'Napisz wiadomość e-mail';

  @override
  String get typeEmailHeadline => 'Skanuj, aby wysłać e-mail';

  @override
  String get typeSms => 'SMS';

  @override
  String get typeSmsDescription => 'Wyślij wiadomość tekstową';

  @override
  String get typeSmsHeadline => 'Skanuj, aby wysłać SMS';

  @override
  String get typeLocation => 'Lokalizacja';

  @override
  String get typeLocationDescription => 'Adres lub współrzędne geograficzne';

  @override
  String get typeLocationHeadline => 'Skanuj, aby uzyskać wskazówki';

  @override
  String get historyAppBarTitle => 'Historia skanów';

  @override
  String get historyClearAllTooltip => 'Wyczyść wszystko';

  @override
  String get historyEmpty => 'Brak skanów';

  @override
  String get historyJustNow => 'Przed chwilą';

  @override
  String historyMinutesAgo(Object count) {
    return '$count min temu';
  }

  @override
  String historyHoursAgo(Object count) {
    return '$count godz. temu';
  }

  @override
  String historyDeletedSnack(Object label) {
    return 'Usunięto $label';
  }

  @override
  String get historyUndoButton => 'Cofnij';

  @override
  String get historyClearDialogTitle => 'Wyczyścić historię skanów?';

  @override
  String get historyClearDialogContent => 'Tej operacji nie można cofnąć.';

  @override
  String get historyClearButton => 'Wyczyść';

  @override
  String get historySourceGallery => 'Galeria';

  @override
  String get historySourceCamera => 'Aparat';

  @override
  String get galleryNoQrFound => 'Nie znaleziono kodu QR na obrazie';

  @override
  String get galleryCropTitle => 'Wykadruj kod QR';

  @override
  String get galleryCropScan => 'Skanuj';

  @override
  String get ratePromptTitle => 'Podoba Ci się PlainQR?';

  @override
  String get ratePromptBody =>
      'Twoja recenzja pomaga innym znaleźć prywatny skaner QR.';

  @override
  String get ratePromptRate => 'Oceń';

  @override
  String get ratePromptFeedback => 'Opinia';

  @override
  String get tilePromptTitle => 'Skanuj z dowolnego miejsca';

  @override
  String get tilePromptBody =>
      'Dodaj kafelek PlainQR do Szybkich ustawień.\nPrzesuń w dół, dotknij, skanuj — nie musisz otwierać aplikacji.';

  @override
  String get tilePromptAdd => 'Dodaj kafelek';

  @override
  String get settingsAppBarTitle => 'Ustawienia';

  @override
  String get settingsSectionScanning => 'Skanowanie';

  @override
  String get settingsSaveHistory => 'Zapisuj historię skanów';

  @override
  String get settingsSaveHistoryOn =>
      'Skanowane aparatem są zapisywane automatycznie';

  @override
  String get settingsSaveHistoryOff => 'Zapisuj ręcznie z karty wyniku';

  @override
  String get settingsAutoOpen =>
      'Automatyczne otwieranie niebezpiecznych typów';

  @override
  String get settingsAutoOpenOn =>
      'Pomijaj potwierdzenie dla URL-i, połączeń, SMS-ów i e-maili';

  @override
  String get settingsAutoOpenOff =>
      'Pytaj przed otwarciem URL-i, dzwonieniem, wysyłaniem SMS-ów lub tworzeniem e-maili';

  @override
  String get settingsAutoFlashlight => 'Automatyczna latarka przy skanowaniu';

  @override
  String get settingsAutoFlashlightOn =>
      'Latarka włącza się przy otwarciu ekranu skanowania';

  @override
  String get settingsAutoFlashlightOff => 'Latarka sterowana ręcznie';

  @override
  String get settingsEnableGenerators => 'Włącz generatory';

  @override
  String settingsEnableGeneratorsSubtitle(Object price) {
    return 'Odblokuj generatory WiFi, vCard i Kalendarz dla $price';
  }

  @override
  String get settingsPremiumUnlocked => 'Premium odblokowane';

  @override
  String get settingsPremiumUnlockedSubtitle =>
      'Wszystkie funkcje generatora są włączone';

  @override
  String get settingsSectionAppearance => 'Wygląd';

  @override
  String get settingsThemeSystem => 'Systemowy';

  @override
  String get settingsThemeLight => 'Jasny';

  @override
  String get settingsThemeDark => 'Ciemny';

  @override
  String get settingsSectionLegal => 'Prawne';

  @override
  String get settingsOpenSourceLicences => 'Licencje open source';

  @override
  String get changelog04Item1 =>
      '22 języki — PlainQR teraz mówi Twoim językiem. Wybierz go w ustawieniach systemowych.';

  @override
  String get changelog04Item2 =>
      'Motyw systemowy — jasny, ciemny lub automatycznie dopasowujący się do urządzenia.';

  @override
  String get changelog04Item3 =>
      'Oceń nas — dotknij gwiazdki w menu, aby zostawić recenzję w Play Store.';

  @override
  String get changelog04Item4 => 'Co nowego — właśnie to czytasz.';

  @override
  String get changelog04Item5 =>
      'Zobacz informacje zwrotne na GitHub — dotknij zgłoszenia, aby zobaczyć status problemu.';

  @override
  String get unlockAppBarTitle => 'Włącz generatory';

  @override
  String get unlockTitle => 'Włącz generatory WiFi, kontaktów\ni kalendarza';

  @override
  String unlockDescription(Object price) {
    return 'Generuj kody QR dla sieci kart kontaktowych\ni wydarzeń kalendarza.\n$price jednorazowo. Bez subskrypcji.';
  }

  @override
  String unlockEnableButton(Object price) {
    return 'Włącz — $price';
  }

  @override
  String get unlockRestoreButton => 'Przywróć poprzedni zakup';

  @override
  String get unlockDialogTitle => 'Odblokuj generatory';

  @override
  String unlockDialogContent(Object price) {
    return 'Odblokuj generatory WiFi, vCard i Kalendarz dokonując jednorazowego zakupu $price. Pozostałe sześć typów generatorów jest zawsze bezpłatnych.';
  }

  @override
  String get actionOpen => 'Otwórz';

  @override
  String get actionCopy => 'Kopiuj';

  @override
  String get actionGenerate => 'Generuj';

  @override
  String get actionShare => 'Udostępnij';

  @override
  String get actionEmail => 'E-mail';

  @override
  String get actionCall => 'Zadzwoń';

  @override
  String get actionSendSms => 'Wyślij SMS';

  @override
  String get actionConnect => 'Połącz';

  @override
  String get actionCopySsid => 'Kopiuj SSID';

  @override
  String get actionCopyPassword => 'Kopiuj hasło';

  @override
  String get actionOpenMaps => 'Otwórz Maps';

  @override
  String get actionOpenInWhatsApp => 'Otwórz w WhatsApp';

  @override
  String get actionOpenInTelegram => 'Otwórz w Telegram';

  @override
  String get actionOpenInSignal => 'Otwórz w Signal';

  @override
  String get actionOpenInTwitter => 'Otwórz w Twitter';

  @override
  String get actionFaceTimeCall => 'Połączenie FaceTime';

  @override
  String get actionOpenInSkype => 'Otwórz w Skype';

  @override
  String get actionOpenInWallet => 'Otwórz w Wallet';

  @override
  String get actionCopyAddress => 'Kopiuj adres';

  @override
  String get actionOpenInPayPal => 'Otwórz w PayPal';

  @override
  String get actionOpenStore => 'Otwórz sklep';

  @override
  String get actionAddContact => 'Dodaj kontakt';

  @override
  String get actionAddToCalendar => 'Dodaj do kalendarza';

  @override
  String get actionSave => 'Zapisz';

  @override
  String get actionCancel => 'Anuluj';

  @override
  String showMoreRows(Object hiddenRows, Object rowWord) {
    return 'Pokaż więcej wierszy ($hiddenRows)';
  }

  @override
  String showMoreFields(Object hiddenRows) {
    return 'Pokaż więcej pól ($hiddenRows)';
  }

  @override
  String get showLess => 'Pokaż mniej';

  @override
  String get fieldEvent => 'Wydarzenie';

  @override
  String get fieldStartTime => 'Czas rozpoczęcia';

  @override
  String get fieldEndTime => 'Czas zakończenia';

  @override
  String get fieldLocation => 'Lokalizacja';

  @override
  String get fieldDescription => 'Opis';

  @override
  String get fieldOrganizer => 'Organizator';

  @override
  String get fieldAttendee => 'Uczestnik';

  @override
  String get fieldName => 'Nazwa';

  @override
  String get fieldPhone => 'Telefon';

  @override
  String get fieldEmail => 'E-mail';

  @override
  String get fieldOrganization => 'Organizacja';

  @override
  String get fieldTitle => 'Tytuł';

  @override
  String get fieldAddress => 'Adres';

  @override
  String get fieldNotes => 'Notatki';

  @override
  String get fieldSsid => 'SSID';

  @override
  String get fieldPassword => 'Hasło';

  @override
  String get fieldEncryption => 'Szyfrowanie';

  @override
  String get fieldUrl => 'URL';

  @override
  String get fieldNickname => 'Pseudonim';

  @override
  String get fieldRole => 'Rola';

  @override
  String get fieldBirthday => 'Data urodzenia';

  @override
  String get row => 'wiersz';

  @override
  String get rows => 'wiersze';

  @override
  String get monthJan => 'Sty';

  @override
  String get monthFeb => 'Lut';

  @override
  String get monthMar => 'Mar';

  @override
  String get monthApr => 'Kwi';

  @override
  String get monthMay => 'Maj';

  @override
  String get monthJun => 'Cze';

  @override
  String get monthJul => 'Lip';

  @override
  String get monthAug => 'Sie';

  @override
  String get monthSep => 'Wrz';

  @override
  String get monthOct => 'Paź';

  @override
  String get monthNov => 'Lis';

  @override
  String get monthDec => 'Gru';

  @override
  String get cardCtaTitle => 'Otwórz w PlainQR';

  @override
  String get cardSavedToDownloads => 'Zapisano kartę w folderze Pobrane';

  @override
  String get cardShareFailed => 'Nie udało się udostępnić karty';

  @override
  String get cardSaveFailed => 'Nie udało się zapisać karty';

  @override
  String get shareSubjectQrCode => 'Kod QR';

  @override
  String get copiedToClipboard => 'Skopiowano do schowka';

  @override
  String get sharing => 'Udostępnianie…';

  @override
  String get openingLink => 'Otwieranie linku';

  @override
  String get invalidUrl => 'Nieprawidłowy URL';

  @override
  String get couldNotOpenLink => 'Nie udało się otworzyć tego linku';

  @override
  String get errorOpeningLink => 'Błąd przy otwieraniu linku';

  @override
  String get wifiNoSsid => 'Nie znaleziono SSID w tym kodzie QR';

  @override
  String wifiConnected(Object ssid) {
    return 'Połączono z $ssid';
  }

  @override
  String wifiCouldNotConnect(Object ssid) {
    return 'Nie udało się połączyć z $ssid';
  }

  @override
  String get wifiConnectionFailed => 'Połączenie nie powiodło się';

  @override
  String get contactOpenFailed => 'Nie udało się otworzyć kontaktu';

  @override
  String get eventOpenFailed => 'Nie udało się otworzyć wydarzenia';

  @override
  String get confirmOpenExternalTitle => 'Otworzyć zewnętrzne treści?';

  @override
  String confirmOpenExternalBody(Object url) {
    return 'Treść pod poniższym linkiem może nie być bezpieczna. Kontynuuj tylko, jeśli ufasz źródłu.\n\n$url\n\n— Aby pominąć to okno w przyszłości, włącz „Automatyczne otwieranie niebezpiecznych typów\" w Ustawieniach.';
  }

  @override
  String get autoOpenDialogTitle =>
      'Automatycznie otwierać niebezpieczne typy?';

  @override
  String get autoOpenDialogContent =>
      'Gdy ta opcja jest włączona, URL-e, połączenia telefoniczne, SMS-y i e-maile z kodów QR będą otwierane natychmiast bez pokazywania celu. Oznacza to, że złośliwy kod QR może wykonać połączenie lub przekierować do niebezpiecznej strony bez Twojej wiedzy.\n\nWłącz tę opcję tylko wtedy, gdy rozumiesz i akceptujesz to ryzyko.';

  @override
  String get autoOpenConfirmButton => 'Rozumiem';

  @override
  String purchaseButton(Object price) {
    return 'Kup za $price';
  }

  @override
  String get storeUnavailable =>
      'Google Play Store niedostępny. Nie można dokonywać zakupów.';

  @override
  String get productLoadFailed => 'Nie udało się załadować produktu';

  @override
  String get purchaseFailed => 'Zakup nie powiódł się';

  @override
  String get noErrorsLogged => '(brak zarejestrowanych błędów)';

  @override
  String get addressLookupTimedOut =>
      'Wyszukiwanie adresu przekroczyło limit czasu';

  @override
  String get couldNotResolveAddress => 'Nie udało się rozwiązać tego adresu';

  @override
  String get locationPermissionDenied => 'Odmowa dostępu do lokalizacji';

  @override
  String get locationLookupTimedOut =>
      'Wyszukiwanie lokalizacji przekroczyło limit czasu';

  @override
  String get couldNotGetCurrentLocation =>
      'Nie udało się uzyskać bieżącej lokalizacji';

  @override
  String get contactsPermissionDenied => 'Odmowa dostępu do kontaktów';

  @override
  String get couldNotAccessContacts =>
      'Nie udało się uzyskać dostępu do kontaktów';

  @override
  String get contactImported => 'Kontakt zaimportowany';

  @override
  String get required => 'Wymagane';

  @override
  String get resolving => 'Rozwiązywanie…';

  @override
  String get getCurrentLocation => 'Uzyskaj bieżącą lokalizację';

  @override
  String get importFromContacts => 'Importuj z kontaktów';

  @override
  String get tapToPickDateTime => 'Stuknij, aby wybrać datę i godzinę';

  @override
  String get formEmailAddress => 'Adres e-mail';

  @override
  String get formEmailHint => 'np. user@example.com';

  @override
  String get formEmailRequired => 'Wymagane — musi zawierać @';

  @override
  String get formSubject => 'Temat';

  @override
  String get formBody => 'Treść';

  @override
  String get formPhoneNumber => 'Numer telefonu';

  @override
  String get formPhoneHint => 'np. +48 601 234 567';

  @override
  String get formSmsHelper => 'Wymagane — wiadomość jest opcjonalna';

  @override
  String get formMessage => 'Wiadomość';

  @override
  String get formText => 'Tekst';

  @override
  String get formTextHint => 'Wpisz dowolny tekst lub wiadomość';

  @override
  String get formUrl => 'URL';

  @override
  String get formUrlHint => 'example.com';

  @override
  String get formUrlHelper =>
      'Wpisz domenę — możesz zmienić https:// jeśli potrzeba';

  @override
  String get formFullName => 'Imię i nazwisko';

  @override
  String get formVcardHelper => 'Wymagane — pozostałe pola są opcjonalne';

  @override
  String get formOrganization => 'Organizacja';

  @override
  String get formTitle => 'Tytuł';

  @override
  String get formNetworkName => 'Nazwa sieci (SSID)';

  @override
  String get formWifiSsidHint => 'np. MojeWiFi';

  @override
  String get formSsidAutoDetected =>
      'SSID automatycznie wykryte z bieżącej sieci';

  @override
  String get formWifiPassword => 'Hasło';

  @override
  String get formWifiPasswordHelper => 'Pozostaw puste dla sieci otwartych';

  @override
  String get formAddress => 'Adres';

  @override
  String get formAddressHint => 'np. Wieża Eiffla, Paryż';

  @override
  String get formLatitude => 'Szerokość geograficzna (-90 do 90)';

  @override
  String get formLongitude => 'Długość geograficzna (-180 do 180)';

  @override
  String get formStartDate => 'Data rozpoczęcia *';

  @override
  String get formEndDate => 'Data zakończenia';

  @override
  String get formEventTitle => 'Tytuł wydarzenia';

  @override
  String get formLocation => 'Lokalizacja';

  @override
  String get formLocationHint => 'np. ul. Przykładowa 123 lub nazwa obiektu';

  @override
  String get updateReadyMessage => 'Aktualizacja gotowa do instalacji';

  @override
  String get updateReadyAction => 'Uruchom ponownie';
}
