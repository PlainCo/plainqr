// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Indonesian (`id`).
class AppLocalizationsId extends AppLocalizations {
  AppLocalizationsId([String locale = 'id']) : super(locale);

  @override
  String get appName => 'PlainQR';

  @override
  String get appNameFull => 'PlainQR — Pindai & Buat';

  @override
  String get drawerScan => 'Pindai';

  @override
  String get drawerScanFromGallery => 'Pindai dari Galeri';

  @override
  String get drawerGenerator => 'Pembuat';

  @override
  String get drawerHistory => 'Riwayat';

  @override
  String get drawerSettings => 'Pengaturan';

  @override
  String get scannerUnlockSnack => 'Pembuat terbuka!';

  @override
  String get scannerUnlockAnnounce => 'Pembuat terbuka';

  @override
  String scannerFreeTierBanner(Object price) {
    return 'Gratis — $price untuk menghapus';
  }

  @override
  String scannerDetectedAnnounce(Object type, Object brief) {
    return 'Terdeteksi $type: $brief';
  }

  @override
  String get scannerSavedToHistory => 'Disimpan ke riwayat';

  @override
  String get scannerTooltipDisableFlashlight => 'Nonaktifkan senter';

  @override
  String get scannerTooltipEnableFlashlight => 'Aktifkan senter';

  @override
  String get scannerTooltipGallery => 'Pindai dari galeri';

  @override
  String get scannerZoomIn => 'Perbesar';

  @override
  String get scannerZoomOut => 'Perkecil';

  @override
  String scannerZoomLevel(Object level) {
    return '$level×';
  }

  @override
  String get generatorAppBarTitle => 'Pembuat';

  @override
  String generatorFormAppBarTitle(Object typeName) {
    return 'QR $typeName';
  }

  @override
  String get generatorCardLabel => 'Label kartu (opsional)';

  @override
  String get generatorCardLabelHint => 'cth: WiFi Tamu, Website Saya';

  @override
  String get generatorPreview => 'Pratinjau';

  @override
  String get generatorStyle => 'Gaya:';

  @override
  String get generatorStyleLight => 'Terang';

  @override
  String get generatorStyleDark => 'Gelap';

  @override
  String get generatorStyleSticker => 'Stiker';

  @override
  String get generatorShareCard => 'Bagikan Kartu';

  @override
  String get generatorSaveToDevice => 'Simpan ke Perangkat';

  @override
  String get generatorCopiedSnack => 'Konten QR disalin';

  @override
  String get generatorCopyQrContent => 'Salin Konten QR';

  @override
  String get typeUrl => 'URL';

  @override
  String get typeUrlDescription => 'Tautan ke situs web atau konten online';

  @override
  String get typeUrlHeadline => 'Pindai untuk mengunjungi';

  @override
  String get typePlainText => 'Teks biasa';

  @override
  String get typePlainTextDescription => 'Teks atau pesan bebas';

  @override
  String get typePlainTextHeadline => 'Pindai untuk membaca';

  @override
  String get typeWifi => 'WiFi';

  @override
  String get typeWifiDescription => 'Bagikan kredensial jaringan Anda';

  @override
  String get typeWifiHeadline => 'Pindai untuk bergabung WiFi';

  @override
  String get typeVcard => 'vCard';

  @override
  String get typeVcardDescription => 'Bagikan detail kontak';

  @override
  String get typeVcardHeadline => 'Pindai untuk menyimpan kontak';

  @override
  String get typeCalendar => 'Kalender';

  @override
  String get typeCalendarDescription => 'Tambahkan acara ke kalender apa pun';

  @override
  String get typeCalendarHeadline => 'Pindai untuk menambahkan ke kalender';

  @override
  String get typePhone => 'Telepon';

  @override
  String get typePhoneDescription => 'Nomor telepon untuk dihubungi';

  @override
  String get typePhoneHeadline => 'Pindai untuk menelepon';

  @override
  String get typeEmail => 'Email';

  @override
  String get typeEmailDescription => 'Buat email';

  @override
  String get typeEmailHeadline => 'Pindai untuk mengirim email';

  @override
  String get typeSms => 'SMS';

  @override
  String get typeSmsDescription => 'Kirim pesan teks';

  @override
  String get typeSmsHeadline => 'Pindai untuk mengirim pesan';

  @override
  String get typeLocation => 'Lokasi';

  @override
  String get typeLocationDescription => 'Alamat fisik atau koordinat';

  @override
  String get typeLocationHeadline => 'Pindai untuk petunjuk arah';

  @override
  String get historyAppBarTitle => 'Riwayat Pindaian';

  @override
  String get historyClearAllTooltip => 'Hapus semua';

  @override
  String get historyEmpty => 'Belum ada pindaian';

  @override
  String get historyJustNow => 'Baru saja';

  @override
  String historyMinutesAgo(Object count) {
    return '${count}m lalu';
  }

  @override
  String historyHoursAgo(Object count) {
    return '${count}j lalu';
  }

  @override
  String historyDeletedSnack(Object label) {
    return 'Dihapus $label';
  }

  @override
  String get historyUndoButton => 'Batalkan';

  @override
  String get historyClearDialogTitle => 'Hapus Riwayat Pindaian?';

  @override
  String get historyClearDialogContent =>
      'Tindakan ini tidak dapat dibatalkan.';

  @override
  String get historyClearButton => 'Hapus';

  @override
  String get historySourceGallery => 'Galeri';

  @override
  String get historySourceCamera => 'Kamera';

  @override
  String get galleryNoQrFound => 'Tidak ada kode QR ditemukan di gambar';

  @override
  String get galleryCropTitle => 'Bingkai kode QR';

  @override
  String get galleryCropScan => 'Pindai';

  @override
  String get ratePromptTitle => 'Menikmati PlainQR?';

  @override
  String get ratePromptBody =>
      'Ulasan Anda membantu orang lain menemukan pemindai QR pribadi.';

  @override
  String get ratePromptRate => 'Beri Nilai';

  @override
  String get ratePromptFeedback => 'Umpan Balik';

  @override
  String get tilePromptTitle => 'Pindai dari mana saja';

  @override
  String get tilePromptBody =>
      'Tambahkan tile PlainQR ke Pengaturan Cepat.\nGeser ke bawah, ketuk, pindai — tidak perlu membuka aplikasi.';

  @override
  String get tilePromptAdd => 'Tambah Tile';

  @override
  String get settingsAppBarTitle => 'Pengaturan';

  @override
  String get settingsSectionScanning => 'Pindaian';

  @override
  String get settingsSaveHistory => 'Simpan Riwayat Pindaian';

  @override
  String get settingsSaveHistoryOn => 'Pindaian kamera disimpan otomatis';

  @override
  String get settingsSaveHistoryOff => 'Simpan manual dari kartu hasil';

  @override
  String get settingsAutoOpen => 'Buka Otomatis Tipe Berbahaya';

  @override
  String get settingsAutoOpenOn =>
      'Lewati konfirmasi untuk URL, panggilan, SMS, dan email';

  @override
  String get settingsAutoOpenOff =>
      'Tanyakan sebelum membuka URL, menelepon, mengirim SMS, atau membuat email';

  @override
  String get settingsAutoFlashlight => 'Senter Otomatis saat Memindai';

  @override
  String get settingsAutoFlashlightOn =>
      'Senter menyala saat layar pemindaian dibuka';

  @override
  String get settingsAutoFlashlightOff => 'Senter dikendalikan secara manual';

  @override
  String get settingsEnableGenerators => 'Aktifkan Pembuat';

  @override
  String settingsEnableGeneratorsSubtitle(Object price) {
    return 'Buka kunci generator WiFi, vCard dan Kalender untuk $price';
  }

  @override
  String get settingsPremiumUnlocked => 'Premium Terbuka';

  @override
  String get settingsPremiumUnlockedSubtitle => 'Semua fitur pembuat aktif';

  @override
  String get settingsSectionAppearance => 'Tampilan';

  @override
  String get settingsThemeSystem => 'Sistem';

  @override
  String get settingsThemeLight => 'Terang';

  @override
  String get settingsThemeDark => 'Gelap';

  @override
  String get settingsSectionLegal => 'Legal';

  @override
  String get settingsOpenSourceLicences => 'Lisensi Sumber Terbuka';

  @override
  String get changelog04Item1 =>
      '22 bahasa — PlainQR sekarang berbicara bahasa Anda. Pilih di pengaturan sistem.';

  @override
  String get changelog04Item2 =>
      'Tema sistem — terang, gelap, atau ikuti perangkat Anda secara otomatis.';

  @override
  String get changelog04Item3 =>
      'Beri Nilai Kami — ketuk bintang di menu untuk memberikan ulasan di Play Store.';

  @override
  String get changelog04Item4 => 'Yang Baru — Anda sedang membacanya.';

  @override
  String get changelog04Item5 =>
      'Lihat umpan balik di GitHub — ketuk pengiriman mana pun untuk melihat status issue.';

  @override
  String get unlockAppBarTitle => 'Aktifkan Pembuat';

  @override
  String get unlockTitle => 'Aktifkan Pembuat WiFi, Kontak\n& Kalender';

  @override
  String unlockDescription(Object price) {
    return 'Buat kode QR untuk jaringan WiFi, kartu kontak,\ndan acara kalender.\n$price sekali. Tanpa langganan.';
  }

  @override
  String unlockEnableButton(Object price) {
    return 'Aktifkan — $price';
  }

  @override
  String get unlockRestoreButton => 'Pulihkan pembelian sebelumnya';

  @override
  String get unlockDialogTitle => 'Buka Pembuat';

  @override
  String unlockDialogContent(Object price) {
    return 'Buka kunci generator WiFi, vCard, dan Kalender dengan pembelian $price satu kali. Enam jenis generator lainnya selalu gratis.';
  }

  @override
  String get actionOpen => 'Buka';

  @override
  String get actionCopy => 'Salin';

  @override
  String get actionGenerate => 'Buat';

  @override
  String get actionShare => 'Bagikan';

  @override
  String get actionEmail => 'Email';

  @override
  String get actionCall => 'Telepon';

  @override
  String get actionSendSms => 'Kirim SMS';

  @override
  String get actionConnect => 'Hubungkan';

  @override
  String get actionCopySsid => 'Salin SSID';

  @override
  String get actionCopyPassword => 'Salin Kata Sandi';

  @override
  String get actionOpenMaps => 'Buka Peta';

  @override
  String get actionOpenInWhatsApp => 'Buka di WhatsApp';

  @override
  String get actionOpenInTelegram => 'Buka di Telegram';

  @override
  String get actionOpenInSignal => 'Buka di Signal';

  @override
  String get actionOpenInTwitter => 'Buka di Twitter';

  @override
  String get actionFaceTimeCall => 'Panggilan FaceTime';

  @override
  String get actionOpenInSkype => 'Buka di Skype';

  @override
  String get actionOpenInWallet => 'Buka di Dompet';

  @override
  String get actionCopyAddress => 'Salin Alamat';

  @override
  String get actionOpenInPayPal => 'Buka di PayPal';

  @override
  String get actionOpenStore => 'Buka Toko';

  @override
  String get actionAddContact => 'Tambah Kontak';

  @override
  String get actionAddToCalendar => 'Tambah ke Kalender';

  @override
  String get actionSave => 'Simpan';

  @override
  String get actionCancel => 'Batal';

  @override
  String showMoreRows(Object hiddenRows, Object rowWord) {
    return 'Tampilkan $hiddenRows $rowWord lagi';
  }

  @override
  String showMoreFields(Object hiddenRows) {
    return 'Tampilkan $hiddenRows lagi';
  }

  @override
  String get showLess => 'Tampilkan lebih sedikit';

  @override
  String get fieldEvent => 'Acara';

  @override
  String get fieldStartTime => 'Waktu Mulai';

  @override
  String get fieldEndTime => 'Waktu Selesai';

  @override
  String get fieldLocation => 'Lokasi';

  @override
  String get fieldDescription => 'Deskripsi';

  @override
  String get fieldOrganizer => 'Penyelenggara';

  @override
  String get fieldAttendee => 'Peserta';

  @override
  String get fieldName => 'Nama';

  @override
  String get fieldPhone => 'Telepon';

  @override
  String get fieldEmail => 'Email';

  @override
  String get fieldOrganization => 'Organisasi';

  @override
  String get fieldTitle => 'Judul';

  @override
  String get fieldAddress => 'Alamat';

  @override
  String get fieldNotes => 'Catatan';

  @override
  String get fieldSsid => 'SSID';

  @override
  String get fieldPassword => 'Kata Sandi';

  @override
  String get fieldEncryption => 'Enkripsi';

  @override
  String get fieldUrl => 'URL';

  @override
  String get fieldNickname => 'Nama Panggilan';

  @override
  String get fieldRole => 'Peran';

  @override
  String get fieldBirthday => 'Ulang Tahun';

  @override
  String get row => 'baris';

  @override
  String get rows => 'baris';

  @override
  String get monthJan => 'Jan';

  @override
  String get monthFeb => 'Feb';

  @override
  String get monthMar => 'Mar';

  @override
  String get monthApr => 'Apr';

  @override
  String get monthMay => 'Mei';

  @override
  String get monthJun => 'Jun';

  @override
  String get monthJul => 'Jul';

  @override
  String get monthAug => 'Agt';

  @override
  String get monthSep => 'Sep';

  @override
  String get monthOct => 'Okt';

  @override
  String get monthNov => 'Nov';

  @override
  String get monthDec => 'Des';

  @override
  String get cardCtaTitle => 'Buka dengan PlainQR';

  @override
  String get cardSavedToDownloads => 'Kartu disimpan ke Unduhan';

  @override
  String get cardShareFailed => 'Tidak dapat membagikan kartu';

  @override
  String get cardSaveFailed => 'Tidak dapat menyimpan kartu';

  @override
  String get shareSubjectQrCode => 'Kode QR';

  @override
  String get copiedToClipboard => 'Disalin ke papan klip';

  @override
  String get sharing => 'Membagikan…';

  @override
  String get openingLink => 'Membuka tautan';

  @override
  String get invalidUrl => 'URL tidak valid';

  @override
  String get couldNotOpenLink => 'Tidak dapat membuka tautan ini';

  @override
  String get errorOpeningLink => 'Gagal membuka tautan';

  @override
  String get wifiNoSsid => 'SSID tidak ditemukan di kode QR ini';

  @override
  String wifiConnected(Object ssid) {
    return 'Terhubung ke $ssid';
  }

  @override
  String wifiCouldNotConnect(Object ssid) {
    return 'Tidak dapat terhubung ke $ssid';
  }

  @override
  String get wifiConnectionFailed => 'Koneksi gagal';

  @override
  String get contactOpenFailed => 'Tidak dapat membuka kontak';

  @override
  String get eventOpenFailed => 'Tidak dapat membuka acara';

  @override
  String get confirmOpenExternalTitle => 'Buka Konten Eksternal?';

  @override
  String confirmOpenExternalBody(Object url) {
    return 'Konten di tautan di bawah mungkin tidak aman. Lanjutkan hanya jika Anda mempercayai sumbernya.\n\n$url\n\n— Untuk melewati dialog ini di masa depan, aktifkan \"Buka otomatis tipe berbahaya\" di Pengaturan.';
  }

  @override
  String get autoOpenDialogTitle => 'Buka Otomatis Tipe Berbahaya?';

  @override
  String get autoOpenDialogContent =>
      'Dengan pengaturan ini aktif, URL, panggilan telepon, SMS, dan email dari kode QR akan langsung terbuka tanpa menampilkan tujuan terlebih dahulu. Artinya kode QR jahat bisa menelepon atau mengarahkan Anda ke situs berbahaya tanpa sepengetahuan Anda.\n\nAktifkan hanya jika Anda memahami dan menerima risiko ini.';

  @override
  String get autoOpenConfirmButton => 'Saya Mengerti';

  @override
  String purchaseButton(Object price) {
    return 'Beli $price';
  }

  @override
  String get storeUnavailable =>
      'Google Play Store tidak tersedia. Tidak dapat melakukan pembelian.';

  @override
  String get productLoadFailed => 'Gagal memuat produk';

  @override
  String get purchaseFailed => 'Pembelian gagal';

  @override
  String get noErrorsLogged => '(tidak ada error tercatat)';

  @override
  String get addressLookupTimedOut => 'Pencarian alamat habis waktu';

  @override
  String get couldNotResolveAddress =>
      'Tidak dapat menyelesaikan alamat tersebut';

  @override
  String get locationPermissionDenied => 'Izin lokasi ditolak';

  @override
  String get locationLookupTimedOut => 'Pencarian lokasi habis waktu';

  @override
  String get couldNotGetCurrentLocation =>
      'Tidak dapat mendapatkan lokasi saat ini';

  @override
  String get contactsPermissionDenied => 'Izin kontak ditolak';

  @override
  String get couldNotAccessContacts => 'Tidak dapat mengakses kontak';

  @override
  String get contactImported => 'Kontak diimpor';

  @override
  String get required => 'Wajib';

  @override
  String get resolving => 'Menyelesaikan…';

  @override
  String get getCurrentLocation => 'Dapatkan Lokasi Saat Ini';

  @override
  String get importFromContacts => 'Impor dari kontak';

  @override
  String get tapToPickDateTime => 'Ketuk untuk memilih tanggal & waktu';

  @override
  String get formEmailAddress => 'Alamat email';

  @override
  String get formEmailHint => 'cth: user@example.com';

  @override
  String get formEmailRequired => 'Wajib — harus mengandung @';

  @override
  String get formSubject => 'Subjek';

  @override
  String get formBody => 'Isi';

  @override
  String get formPhoneNumber => 'Nomor telepon';

  @override
  String get formPhoneHint => 'cth: 0812-3456-7890';

  @override
  String get formSmsHelper => 'Wajib — pesan bersifat opsional';

  @override
  String get formMessage => 'Pesan';

  @override
  String get formText => 'Teks';

  @override
  String get formTextHint => 'Masukkan teks atau pesan apa pun';

  @override
  String get formUrl => 'URL';

  @override
  String get formUrlHint => 'example.com';

  @override
  String get formUrlHelper =>
      'Ketik domain — Anda dapat mengubah https:// jika perlu';

  @override
  String get formFullName => 'Nama lengkap';

  @override
  String get formVcardHelper => 'Wajib — semua bidang lainnya opsional';

  @override
  String get formOrganization => 'Organisasi';

  @override
  String get formTitle => 'Judul';

  @override
  String get formNetworkName => 'Nama jaringan (SSID)';

  @override
  String get formWifiSsidHint => 'cth: WiFiRumahSaya';

  @override
  String get formSsidAutoDetected =>
      'SSID terdeteksi otomatis dari jaringan Anda saat ini';

  @override
  String get formWifiPassword => 'Kata sandi';

  @override
  String get formWifiPasswordHelper => 'Kosongkan untuk jaringan terbuka';

  @override
  String get formAddress => 'Alamat';

  @override
  String get formAddressHint => 'cth: Menara Eiffel, Paris';

  @override
  String get formLatitude => 'Lintang (-90 hingga 90)';

  @override
  String get formLongitude => 'Bujur (-180 hingga 180)';

  @override
  String get formStartDate => 'Tanggal mulai *';

  @override
  String get formEndDate => 'Tanggal selesai';

  @override
  String get formEventTitle => 'Judul acara';

  @override
  String get formLocation => 'Lokasi';

  @override
  String get formLocationHint => 'cth: Jl. Sudirman No. 123 atau nama tempat';

  @override
  String get updateReadyMessage => 'Pembaruan siap dipasang';

  @override
  String get updateReadyAction => 'Mulai ulang';
}
