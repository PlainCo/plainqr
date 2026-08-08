// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Turkish (`tr`).
class AppLocalizationsTr extends AppLocalizations {
  AppLocalizationsTr([String locale = 'tr']) : super(locale);

  @override
  String get appName => 'PlainQR';

  @override
  String get appNameFull => 'PlainQR — Tara ve Oluştur';

  @override
  String get drawerScan => 'Tara';

  @override
  String get drawerScanFromGallery => 'Galeriden tara';

  @override
  String get drawerGenerator => 'Oluşturucu';

  @override
  String get drawerHistory => 'Geçmiş';

  @override
  String get drawerSettings => 'Ayarlar';

  @override
  String get scannerUnlockSnack => 'Oluşturucular açıldı!';

  @override
  String get scannerUnlockAnnounce => 'Oluşturucular açıldı';

  @override
  String scannerFreeTierBanner(Object price) {
    return 'Ücretsiz — kaldırılması için $price';
  }

  @override
  String scannerDetectedAnnounce(Object type, Object brief) {
    return 'Algılanan $type: $brief';
  }

  @override
  String get scannerSavedToHistory => 'Geçmişe kaydedildi';

  @override
  String get scannerTooltipDisableFlashlight => 'El fenerini devre dışı bırak';

  @override
  String get scannerTooltipEnableFlashlight => 'El fenerini etkinleştir';

  @override
  String get scannerTooltipGallery => 'Galeriden tara';

  @override
  String get scannerZoomIn => 'Yakınlaştır';

  @override
  String get scannerZoomOut => 'Uzaklaştır';

  @override
  String scannerZoomLevel(Object level) {
    return '$level×';
  }

  @override
  String get generatorAppBarTitle => 'Oluşturucu';

  @override
  String generatorFormAppBarTitle(Object typeName) {
    return '$typeName QR';
  }

  @override
  String get generatorCardLabel => 'Kart etiketi (isteğe bağlı)';

  @override
  String get generatorCardLabelHint => 'örn: Misafir WiFi, Sitem';

  @override
  String get generatorPreview => 'Önizleme';

  @override
  String get generatorStyle => 'Stil:';

  @override
  String get generatorStyleLight => 'Açık';

  @override
  String get generatorStyleDark => 'Koyu';

  @override
  String get generatorStyleSticker => 'Etiket';

  @override
  String get generatorShareCard => 'Kartı paylaş';

  @override
  String get generatorSaveToDevice => 'Cihaza kaydet';

  @override
  String get generatorCopiedSnack => 'QR içeriği kopyalandı';

  @override
  String get generatorCopyQrContent => 'QR içeriğini kopyala';

  @override
  String get typeUrl => 'URL';

  @override
  String get typeUrlDescription =>
      'Bir web sitesine veya çevrimiçi içeriğe bağlantı';

  @override
  String get typeUrlHeadline => 'Tarak ziyaret et';

  @override
  String get typePlainText => 'Düz metin';

  @override
  String get typePlainTextDescription => 'Serbest metin veya mesaj';

  @override
  String get typePlainTextHeadline => 'Tarak oku';

  @override
  String get typeWifi => 'WiFi';

  @override
  String get typeWifiDescription => 'Ağ kimlik bilgilerini paylaş';

  @override
  String get typeWifiHeadline => 'Tarak WiFi\'ye katıl';

  @override
  String get typeVcard => 'vCard';

  @override
  String get typeVcardDescription => 'Kişi bilgilerini paylaş';

  @override
  String get typeVcardHeadline => 'Tarak kişiyi kaydet';

  @override
  String get typeCalendar => 'Takvim';

  @override
  String get typeCalendarDescription => 'Takvime etkinlik ekle';

  @override
  String get typeCalendarHeadline => 'Tarak takvime ekle';

  @override
  String get typePhone => 'Telefon';

  @override
  String get typePhoneDescription => 'Aranacak telefon numarası';

  @override
  String get typePhoneHeadline => 'Tarak ara';

  @override
  String get typeEmail => 'E-posta';

  @override
  String get typeEmailDescription => 'E-posta oluştur';

  @override
  String get typeEmailHeadline => 'Tarak e-posta gönder';

  @override
  String get typeSms => 'SMS';

  @override
  String get typeSmsDescription => 'Metin mesajı gönder';

  @override
  String get typeSmsHeadline => 'Tarak mesaj yaz';

  @override
  String get typeLocation => 'Konum';

  @override
  String get typeLocationDescription => 'Fiziksel adres veya koordinatlar';

  @override
  String get typeLocationHeadline => 'Tarak yol tarifi al';

  @override
  String get historyAppBarTitle => 'Tarama Geçmişi';

  @override
  String get historyClearAllTooltip => 'Tümünü sil';

  @override
  String get historyEmpty => 'Henüz tarama yok';

  @override
  String get historyJustNow => 'Az önce';

  @override
  String historyMinutesAgo(Object count) {
    return '${count}dk önce';
  }

  @override
  String historyHoursAgo(Object count) {
    return '${count}sa önce';
  }

  @override
  String historyDeletedSnack(Object label) {
    return '$label silindi';
  }

  @override
  String get historyUndoButton => 'Geri al';

  @override
  String get historyClearDialogTitle => 'Tarama Geçmişi Silinsin mi?';

  @override
  String get historyClearDialogContent => 'Bu işlem geri alınamaz.';

  @override
  String get historyClearButton => 'Sil';

  @override
  String get historySourceGallery => 'Galeri';

  @override
  String get historySourceCamera => 'Kamera';

  @override
  String get galleryNoQrFound => 'Görselde QR kod bulunamadı';

  @override
  String get galleryCropTitle => 'QR kodu çerçevele';

  @override
  String get galleryCropScan => 'Tara';

  @override
  String get ratePromptTitle => 'PlainQR\'ı beğendiniz mi?';

  @override
  String get ratePromptBody =>
      'Yorumunuz başkalarının özel bir QR tarayıcı bulmasına yardımcı olur.';

  @override
  String get ratePromptRate => 'Değerlendir';

  @override
  String get ratePromptFeedback => 'Geri Bildirim';

  @override
  String get tilePromptTitle => 'Her yerden tarayın';

  @override
  String get tilePromptBody =>
      'Hızlı Ayarlara bir PlainQR kutucuğu ekleyin.\nAşağı kaydırın, dokunun, tarayın — uygulamayı açmaya gerek yok.';

  @override
  String get tilePromptAdd => 'Kutucuk Ekle';

  @override
  String get settingsAppBarTitle => 'Ayarlar';

  @override
  String get settingsSectionScanning => 'Tarama';

  @override
  String get settingsSaveHistory => 'Tarama Geçmişini Kaydet';

  @override
  String get settingsSaveHistoryOn => 'Kamera taramaları otomatik kaydedilir';

  @override
  String get settingsSaveHistoryOff => 'Sonuç kartından manuel olarak kaydedin';

  @override
  String get settingsAutoOpen => 'Tehlikeli Türleri Otomatik Aç';

  @override
  String get settingsAutoOpenOn =>
      'URL\'ler, aramalar, SMS ve e-postalar için onayı atla';

  @override
  String get settingsAutoOpenOff =>
      'URL\'leri açmadan, arama yapmadan, SMS göndermeden veya e-posta oluşturmadan önce sor';

  @override
  String get settingsAutoFlashlight => 'Taramada Otomatik El Feneri';

  @override
  String get settingsAutoFlashlightOn =>
      'El feneri tarama ekranı açıldığında açılır';

  @override
  String get settingsAutoFlashlightOff => 'El feneri manuel kontrol edilir';

  @override
  String get settingsEnableGenerators => 'Oluşturucuları Etkinleştir';

  @override
  String settingsEnableGeneratorsSubtitle(Object price) {
    return '$price için WiFi, vCard ve Takvim oluşturucuların kilidini açın';
  }

  @override
  String get settingsPremiumUnlocked => 'Premium kilidi açıldı';

  @override
  String get settingsPremiumUnlockedSubtitle =>
      'Tüm oluşturucu özellikleri etkinleştirildi';

  @override
  String get settingsSectionAppearance => 'Görünüm';

  @override
  String get settingsThemeSystem => 'Sistem';

  @override
  String get settingsThemeLight => 'Açık';

  @override
  String get settingsThemeDark => 'Koyu';

  @override
  String get settingsSectionLegal => 'Yasal';

  @override
  String get settingsOpenSourceLicences => 'Açık Kaynak Lisansları';

  @override
  String get changelog04Item1 =>
      '22 dil — PlainQR artık sizin dilinizi konuşuyor. Sistem ayarlarından dilinizi seçin.';

  @override
  String get changelog04Item2 =>
      'Sistem teması — açık, koyu veya cihazınızı otomatik olarak takip etsin.';

  @override
  String get changelog04Item3 =>
      'Bizi değerlendirin — menüdeki yıldıza dokunarak Play Store\'da bir yorum bırakın.';

  @override
  String get changelog04Item4 => 'Yenilikler — bunu şu an okuyorsunuz.';

  @override
  String get changelog04Item5 =>
      'GitHub\'da geri bildirimi görüntüle — bir gönderiye dokunarak sorun durumunu görün.';

  @override
  String get unlockAppBarTitle => 'Oluşturucuları Etkinleştir';

  @override
  String get unlockTitle => 'WiFi, Kişi\n& Takvim oluşturucularını açın';

  @override
  String unlockDescription(Object price) {
    return 'WiFi ağları, kişi kartları\nve takvim etkinlikleri için QR kodları oluşturun.\n$price tek seferlik. Abonelik yok.';
  }

  @override
  String unlockEnableButton(Object price) {
    return 'Etkinleştir — $price';
  }

  @override
  String get unlockRestoreButton => 'Önceki satın almayı geri yükle';

  @override
  String get unlockDialogTitle => 'Oluşturucuların Kilidini Aç';

  @override
  String unlockDialogContent(Object price) {
    return 'Tek seferlik $price satın alımıyla WiFi, vCard ve Takvim oluşturucuların kilidini açın. Diğer altı jeneratör türü her zaman ücretsizdir.';
  }

  @override
  String get actionOpen => 'Aç';

  @override
  String get actionCopy => 'Kopyala';

  @override
  String get actionGenerate => 'Oluştur';

  @override
  String get actionShare => 'Paylaş';

  @override
  String get actionEmail => 'E-posta';

  @override
  String get actionCall => 'Ara';

  @override
  String get actionSendSms => 'SMS gönder';

  @override
  String get actionConnect => 'Bağlan';

  @override
  String get actionCopySsid => 'SSID\'yi kopyala';

  @override
  String get actionCopyPassword => 'Şifreyi kopyala';

  @override
  String get actionOpenMaps => 'Haritaları aç';

  @override
  String get actionOpenInWhatsApp => 'WhatsApp\'ta aç';

  @override
  String get actionOpenInTelegram => 'Telegram\'da aç';

  @override
  String get actionOpenInSignal => 'Signal\'da aç';

  @override
  String get actionOpenInTwitter => 'Twitter\'da aç';

  @override
  String get actionFaceTimeCall => 'FaceTime Araması';

  @override
  String get actionOpenInSkype => 'Skype\'ta aç';

  @override
  String get actionOpenInWallet => 'Cüzdanda aç';

  @override
  String get actionCopyAddress => 'Adresi kopyala';

  @override
  String get actionOpenInPayPal => 'PayPal\'da aç';

  @override
  String get actionOpenStore => 'Mağazayı aç';

  @override
  String get actionAddContact => 'Kişi ekle';

  @override
  String get actionAddToCalendar => 'Takvime ekle';

  @override
  String get actionSave => 'Kaydet';

  @override
  String get actionCancel => 'İptal';

  @override
  String showMoreRows(Object hiddenRows, Object rowWord) {
    return '$hiddenRows $rowWord daha göster';
  }

  @override
  String showMoreFields(Object hiddenRows) {
    return '$hiddenRows daha göster';
  }

  @override
  String get showLess => 'Daha az göster';

  @override
  String get fieldEvent => 'Etkinlik';

  @override
  String get fieldStartTime => 'Başlangıç Zamanı';

  @override
  String get fieldEndTime => 'Bitiş Zamanı';

  @override
  String get fieldLocation => 'Konum';

  @override
  String get fieldDescription => 'Açıklama';

  @override
  String get fieldOrganizer => 'Düzenleyen';

  @override
  String get fieldAttendee => 'Katılımcı';

  @override
  String get fieldName => 'Ad';

  @override
  String get fieldPhone => 'Telefon';

  @override
  String get fieldEmail => 'E-posta';

  @override
  String get fieldOrganization => 'Kurum';

  @override
  String get fieldTitle => 'Ünvan';

  @override
  String get fieldAddress => 'Adres';

  @override
  String get fieldNotes => 'Notlar';

  @override
  String get fieldSsid => 'SSID';

  @override
  String get fieldPassword => 'Şifre';

  @override
  String get fieldEncryption => 'Şifreleme';

  @override
  String get fieldUrl => 'URL';

  @override
  String get fieldNickname => 'Takma ad';

  @override
  String get fieldRole => 'Rol';

  @override
  String get fieldBirthday => 'Doğum günü';

  @override
  String get row => 'satır';

  @override
  String get rows => 'satır';

  @override
  String get monthJan => 'Oca';

  @override
  String get monthFeb => 'Şub';

  @override
  String get monthMar => 'Mar';

  @override
  String get monthApr => 'Nis';

  @override
  String get monthMay => 'May';

  @override
  String get monthJun => 'Haz';

  @override
  String get monthJul => 'Tem';

  @override
  String get monthAug => 'Ağu';

  @override
  String get monthSep => 'Eyl';

  @override
  String get monthOct => 'Eki';

  @override
  String get monthNov => 'Kas';

  @override
  String get monthDec => 'Ara';

  @override
  String get cardCtaTitle => 'PlainQR ile aç';

  @override
  String get cardSavedToDownloads => 'Kart İndirmelere kaydedildi';

  @override
  String get cardShareFailed => 'Kart paylaşılamadı';

  @override
  String get cardSaveFailed => 'Kaydedilemedi';

  @override
  String get shareSubjectQrCode => 'QR Kodu';

  @override
  String get copiedToClipboard => 'Panoya kopyalandı';

  @override
  String get sharing => 'Paylaşılıyor…';

  @override
  String get openingLink => 'Bağlantı açılıyor';

  @override
  String get invalidUrl => 'Geçersiz URL';

  @override
  String get couldNotOpenLink => 'Bu bağlantı açılamadı';

  @override
  String get errorOpeningLink => 'Bağlantı açılırken hata oluştu';

  @override
  String get wifiNoSsid => 'Bu QR kodunda SSID bulunamadı';

  @override
  String wifiConnected(Object ssid) {
    return '$ssid ağına bağlanıldı';
  }

  @override
  String wifiCouldNotConnect(Object ssid) {
    return '$ssid ağına bağlanılamadı';
  }

  @override
  String get wifiConnectionFailed => 'Bağlantı başarısız oldu';

  @override
  String get contactOpenFailed => 'Kişi açılamadı';

  @override
  String get eventOpenFailed => 'Etkinlik açılamadı';

  @override
  String get confirmOpenExternalTitle => 'Dış İçerik Açılsın mı?';

  @override
  String confirmOpenExternalBody(Object url) {
    return 'Aşağıdaki bağlantıdaki içerik güvenli olmayabilir. Yalnızca kaynağa güveniyorsanız devam edin.\n\n$url\n\n— Bu diyaloğu gelecekte atlamak için Ayarlar\'dan \"Tehlikeli türleri otomatik aç\"ı etkinleştirin.';
  }

  @override
  String get autoOpenDialogTitle => 'Tehlikeli Türler Otomatik Açılsın mı?';

  @override
  String get autoOpenDialogContent =>
      'Bu ayar AÇIK olduğunda, QR kodlardaki URL\'ler, telefon aramaları, SMS ve e-postalar, hedefi size göstermeden hemen açılır. Bu, kötü niyetli bir QR kodunun sizin haberiniz olmadan arama yapmasına veya sizi zararlı bir siteye yönlendirebileceği anlamına gelir.\n\nBunu yalnızca bu riski anladığınızda ve kabul ettiğinizde etkinleştirin.';

  @override
  String get autoOpenConfirmButton => 'Anladım';

  @override
  String purchaseButton(Object price) {
    return '$price\'a Satın Al';
  }

  @override
  String get storeUnavailable =>
      'Google Play Store kullanılamıyor. Satın alma yapılamaz.';

  @override
  String get productLoadFailed => 'Ürün yüklenemedi';

  @override
  String get purchaseFailed => 'Satın alma başarısız oldu';

  @override
  String get noErrorsLogged => '(hata kaydı yok)';

  @override
  String get addressLookupTimedOut => 'Adres arama zaman aşımına uğradı';

  @override
  String get couldNotResolveAddress => 'Bu adres çözümlenemedi';

  @override
  String get locationPermissionDenied => 'Konum izni reddedildi';

  @override
  String get locationLookupTimedOut => 'Konum arama zaman aşımına uğradı';

  @override
  String get couldNotGetCurrentLocation => 'Mevcut konum alınamadı';

  @override
  String get contactsPermissionDenied => 'Kişiler izni reddedildi';

  @override
  String get couldNotAccessContacts => 'Kişilere erişilemedi';

  @override
  String get contactImported => 'Kişi içe aktarıldı';

  @override
  String get required => 'Zorunlu';

  @override
  String get resolving => 'Çözümleniyor…';

  @override
  String get getCurrentLocation => 'Mevcut Konumu Al';

  @override
  String get importFromContacts => 'Kişilerden içe aktar';

  @override
  String get tapToPickDateTime => 'Tarih ve saat seçmek için dokunun';

  @override
  String get formEmailAddress => 'E-posta adresi';

  @override
  String get formEmailHint => 'örn: kullanici@ornek.com';

  @override
  String get formEmailRequired => 'Zorunlu — @ içermelidir';

  @override
  String get formSubject => 'Konu';

  @override
  String get formBody => 'Metin';

  @override
  String get formPhoneNumber => 'Telefon numarası';

  @override
  String get formPhoneHint => 'örn: 0532 123 4567';

  @override
  String get formSmsHelper => 'Zorunlu — mesaj isteğe bağlıdır';

  @override
  String get formMessage => 'Mesaj';

  @override
  String get formText => 'Metin';

  @override
  String get formTextHint => 'Herhangi bir metin veya mesaj girin';

  @override
  String get formUrl => 'URL';

  @override
  String get formUrlHint => 'ornek.com';

  @override
  String get formUrlHelper =>
      'Bir etki alanı yazın — ihtiyacınız olursa https://\'yi değiştirebilirsiniz';

  @override
  String get formFullName => 'Ad soyad';

  @override
  String get formVcardHelper => 'Zorunlu — diğer tüm alanlar isteğe bağlıdır';

  @override
  String get formOrganization => 'Kurum';

  @override
  String get formTitle => 'Ünvan';

  @override
  String get formNetworkName => 'Ağ adı (SSID)';

  @override
  String get formWifiSsidHint => 'örn: BenimEvimWiFi';

  @override
  String get formSsidAutoDetected =>
      'SSID mevcut ağınızdan otomatik olarak algılandı';

  @override
  String get formWifiPassword => 'Şifre';

  @override
  String get formWifiPasswordHelper => 'Açık ağlar için boş bırakın';

  @override
  String get formAddress => 'Adres';

  @override
  String get formAddressHint => 'örn: Eyfel Kulesi, Paris';

  @override
  String get formLatitude => 'Enlem (-90 ile 90 arası)';

  @override
  String get formLongitude => 'Boylam (-180 ile 180 arası)';

  @override
  String get formStartDate => 'Başlangıç tarihi *';

  @override
  String get formEndDate => 'Bitiş tarihi';

  @override
  String get formEventTitle => 'Etkinlik başlığı';

  @override
  String get formLocation => 'Konum';

  @override
  String get formLocationHint => 'örn: Atatürk Cad. 123 veya mekan adı';

  @override
  String get updateReadyMessage => 'Güncelleme yüklemeye hazır';

  @override
  String get updateReadyAction => 'Yeniden başlat';
}
