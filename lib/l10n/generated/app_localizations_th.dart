// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Thai (`th`).
class AppLocalizationsTh extends AppLocalizations {
  AppLocalizationsTh([String locale = 'th']) : super(locale);

  @override
  String get appName => 'PlainQR';

  @override
  String get appNameFull => 'PlainQR — สแกนและสร้าง';

  @override
  String get drawerScan => 'สแกน';

  @override
  String get drawerScanFromGallery => 'สแกนจากแกลเลอรี';

  @override
  String get drawerGenerator => 'สร้าง';

  @override
  String get drawerHistory => 'ประวัติ';

  @override
  String get drawerSettings => 'ตั้งค่า';

  @override
  String get scannerUnlockSnack => 'ปลดล็อคตัวสร้างแล้ว!';

  @override
  String get scannerUnlockAnnounce => 'ปลดล็อคตัวสร้างแล้ว';

  @override
  String scannerFreeTierBanner(Object price) {
    return 'ฟรี — $price เพื่อลบ';
  }

  @override
  String scannerDetectedAnnounce(Object type, Object brief) {
    return 'ตรวจพบ $type: $brief';
  }

  @override
  String get scannerSavedToHistory => 'บันทึกลงประวัติแล้ว';

  @override
  String get scannerTooltipDisableFlashlight => 'ปิดไฟฉาย';

  @override
  String get scannerTooltipEnableFlashlight => 'เปิดไฟฉาย';

  @override
  String get scannerTooltipGallery => 'สแกนจากแกลเลอรี';

  @override
  String get scannerZoomIn => 'ซูมเข้า';

  @override
  String get scannerZoomOut => 'ซูมออก';

  @override
  String scannerZoomLevel(Object level) {
    return '$level×';
  }

  @override
  String get generatorAppBarTitle => 'สร้าง';

  @override
  String generatorFormAppBarTitle(Object typeName) {
    return 'QR $typeName';
  }

  @override
  String get generatorCardLabel => 'ป้ายการ์ด (ไม่บังคับ)';

  @override
  String get generatorCardLabelHint => 'เช่น WiFi สำหรับแขก, เว็บไซต์ของฉัน';

  @override
  String get generatorPreview => 'ตัวอย่าง';

  @override
  String get generatorStyle => 'สไตล์';

  @override
  String get generatorStyleLight => 'สว่าง';

  @override
  String get generatorStyleDark => 'มืด';

  @override
  String get generatorStyleSticker => 'สติกเกอร์';

  @override
  String get generatorShareCard => 'แชร์การ์ด';

  @override
  String get generatorSaveToDevice => 'บันทึกลงอุปกรณ์';

  @override
  String get generatorCopiedSnack => 'คัดลอกเนื้อหา QR แล้ว';

  @override
  String get generatorCopyQrContent => 'คัดลอกเนื้อหา QR';

  @override
  String get typeUrl => 'URL';

  @override
  String get typeUrlDescription => 'ลิงก์ไปยังเว็บไซต์หรือเนื้อหาออนไลน์';

  @override
  String get typeUrlHeadline => 'สแกนเพื่อเข้าชม';

  @override
  String get typePlainText => 'ข้อความธรรมดา';

  @override
  String get typePlainTextDescription => 'ข้อความหรือข้อความอิสระ';

  @override
  String get typePlainTextHeadline => 'สแกนเพื่ออ่าน';

  @override
  String get typeWifi => 'WiFi';

  @override
  String get typeWifiDescription => 'แชร์ข้อมูลเครือข่ายของคุณ';

  @override
  String get typeWifiHeadline => 'สแกนเพื่อเชื่อมต่อ WiFi';

  @override
  String get typeVcard => 'vCard';

  @override
  String get typeVcardDescription => 'แชร์รายชื่อผู้ติดต่อ';

  @override
  String get typeVcardHeadline => 'สแกนเพื่อบันทึกรายชื่อ';

  @override
  String get typeCalendar => 'ปฏิทิน';

  @override
  String get typeCalendarDescription => 'เพิ่มกิจกรรมลงปฏิทิน';

  @override
  String get typeCalendarHeadline => 'สแกนเพื่อเพิ่มลงปฏิทิน';

  @override
  String get typePhone => 'โทรศัพท์';

  @override
  String get typePhoneDescription => 'หมายเลขโทรศัพท์ที่ต้องการโทร';

  @override
  String get typePhoneHeadline => 'สแกนเพื่อโทร';

  @override
  String get typeEmail => 'อีเมล';

  @override
  String get typeEmailDescription => 'เขียนอีเมล';

  @override
  String get typeEmailHeadline => 'สแกนเพื่อส่งอีเมล';

  @override
  String get typeSms => 'SMS';

  @override
  String get typeSmsDescription => 'ส่งข้อความ';

  @override
  String get typeSmsHeadline => 'สแกนเพื่อส่งข้อความ';

  @override
  String get typeLocation => 'ตำแหน่ง';

  @override
  String get typeLocationDescription => 'ที่อยู่หรือพิกัด';

  @override
  String get typeLocationHeadline => 'สแกนเพื่อดูแผนที่';

  @override
  String get historyAppBarTitle => 'ประวัติการสแกน';

  @override
  String get historyClearAllTooltip => 'ล้างทั้งหมด';

  @override
  String get historyEmpty => 'ยังไม่มีประวัติ';

  @override
  String get historyJustNow => 'เมื่อสักครู่';

  @override
  String historyMinutesAgo(Object count) {
    return '$count นาทีที่แล้ว';
  }

  @override
  String historyHoursAgo(Object count) {
    return '$count ชม.ที่แล้ว';
  }

  @override
  String historyDeletedSnack(Object label) {
    return 'ลบ $label แล้ว';
  }

  @override
  String get historyUndoButton => 'เลิกทำ';

  @override
  String get historyClearDialogTitle => 'ล้างประวัติการสแกน?';

  @override
  String get historyClearDialogContent => 'การกระทำนี้ไม่สามารถย้อนกลับได้';

  @override
  String get historyClearButton => 'ล้าง';

  @override
  String get historySourceGallery => 'แกลเลอรี';

  @override
  String get historySourceCamera => 'กล้อง';

  @override
  String get galleryNoQrFound => 'ไม่พบรหัส QR ในรูปภาพ';

  @override
  String get galleryCropTitle => 'จัดกรอบรหัส QR';

  @override
  String get galleryCropScan => 'สแกน';

  @override
  String get ratePromptTitle => 'ชอบ PlainQR ไหม?';

  @override
  String get ratePromptBody =>
      'รีวิวของคุณช่วยให้ผู้อื่นพบเครื่องสแกน QR ส่วนตัว';

  @override
  String get ratePromptRate => 'ให้คะแนน';

  @override
  String get ratePromptFeedback => 'ข้อเสนอแนะ';

  @override
  String get tilePromptTitle => 'สแกนจากทุกที่';

  @override
  String get tilePromptBody =>
      'เพิ่มไทล์ PlainQR ในการตั้งค่าด่วน\nปัดลง แตะ สแกน — ไม่ต้องเปิดแอป';

  @override
  String get tilePromptAdd => 'เพิ่มไทล์';

  @override
  String get settingsAppBarTitle => 'ตั้งค่า';

  @override
  String get settingsSectionScanning => 'การสแกน';

  @override
  String get settingsSaveHistory => 'บันทึกประวัติการสแกน';

  @override
  String get settingsSaveHistoryOn => 'บันทึกการสแกนจากกล้องอัตโนมัติ';

  @override
  String get settingsSaveHistoryOff => 'บันทึกด้วยตนเองจากการ์ดผลลัพธ์';

  @override
  String get settingsAutoOpen => 'เปิดประเภทอันตรายอัตโนมัติ';

  @override
  String get settingsAutoOpenOn =>
      'ข้ามการยืนยันสำหรับ URL, โทรศัพท์, SMS และอีเมล';

  @override
  String get settingsAutoOpenOff =>
      'ถามก่อนเปิด URL, โทร, ส่ง SMS หรือเขียนอีเมล';

  @override
  String get settingsAutoFlashlight => 'เปิดไฟฉายอัตโนมัติเมื่อสแกน';

  @override
  String get settingsAutoFlashlightOn => 'ไฟฉายเปิดเมื่อเปิดหน้าสแกน';

  @override
  String get settingsAutoFlashlightOff => 'ควบคุมไฟฉายด้วยตนเอง';

  @override
  String get settingsEnableGenerators => 'เปิดใช้งานตัวสร้าง';

  @override
  String settingsEnableGeneratorsSubtitle(Object price) {
    return 'ปลดล็อคเครื่องกำเนิด WiFi, vCard และ ปฏิทิน สำหรับ $price';
  }

  @override
  String get settingsPremiumUnlocked => 'ปลดล็อคพรีเมียมแล้ว';

  @override
  String get settingsPremiumUnlockedSubtitle =>
      'เปิดใช้งานฟีเจอร์สร้างทั้งหมดแล้ว';

  @override
  String get settingsSectionAppearance => 'ลักษณะ';

  @override
  String get settingsThemeSystem => 'ระบบ';

  @override
  String get settingsThemeLight => 'สว่าง';

  @override
  String get settingsThemeDark => 'มืด';

  @override
  String get settingsSectionLegal => 'ข้อมูลทางกฎหมาย';

  @override
  String get settingsOpenSourceLicences => 'ลิขสิทธิ์โอเพนซอร์ส';

  @override
  String get changelog04Item1 =>
      '22 ภาษา — PlainQR พูดภาษาของคุณแล้ว เลือกภาษาในการตั้งค่าระบบ';

  @override
  String get changelog04Item2 =>
      'ธีมระบบ — สว่าง มืด หรือติดตามอุปกรณ์ของคุณโดยอัตโนมัติ';

  @override
  String get changelog04Item3 =>
      'ให้คะแนนเรา — แตะที่ดาวในเมนูเพื่อรีวิวบน Play Store';

  @override
  String get changelog04Item4 => 'สิ่งใหม่ — คุณกำลังอ่านอยู่';

  @override
  String get changelog04Item5 =>
      'ดูความคิดเห็นบน GitHub — แตะที่การส่งใดก็ได้เพื่อดูสถานะ issue';

  @override
  String get unlockAppBarTitle => 'เปิดใช้งานตัวสร้าง';

  @override
  String get unlockTitle => 'เปิดใช้งานตัวสร้าง WiFi, ผู้ติดต่อ\nและปฏิทิน';

  @override
  String unlockDescription(Object price) {
    return 'สร้าง QR สำหรับเครือข่าย WiFi, การ์ดผู้ติดต่อ\nและกิจกรรมปฏิทิน\nจ่ายครั้งเดียว $price ไม่มีค่าสมาชิก';
  }

  @override
  String unlockEnableButton(Object price) {
    return 'เปิดใช้งาน — $price';
  }

  @override
  String get unlockRestoreButton => 'กู้คืนการซื้อก่อนหน้า';

  @override
  String get unlockDialogTitle => 'ปลดล็อคตัวสร้าง';

  @override
  String unlockDialogContent(Object price) {
    return 'ปลดล็อคเครื่องกำเนิด WiFi, vCard และ ปฏิทิน ด้วยการซื้อ $price เพียงครั้งเดียว เครื่องกำเนิดไฟฟ้าอีกหกประเภทนั้นฟรีเสมอ';
  }

  @override
  String get actionOpen => 'เปิด';

  @override
  String get actionCopy => 'คัดลอก';

  @override
  String get actionGenerate => 'สร้าง';

  @override
  String get actionShare => 'แชร์';

  @override
  String get actionEmail => 'อีเมล';

  @override
  String get actionCall => 'โทร';

  @override
  String get actionSendSms => 'ส่ง SMS';

  @override
  String get actionConnect => 'เชื่อมต่อ';

  @override
  String get actionCopySsid => 'คัดลอก SSID';

  @override
  String get actionCopyPassword => 'คัดลอกรหัสผ่าน';

  @override
  String get actionOpenMaps => 'เปิดแผนที่';

  @override
  String get actionOpenInWhatsApp => 'เปิดใน WhatsApp';

  @override
  String get actionOpenInTelegram => 'เปิดใน Telegram';

  @override
  String get actionOpenInSignal => 'เปิดใน Signal';

  @override
  String get actionOpenInTwitter => 'เปิดใน Twitter';

  @override
  String get actionFaceTimeCall => 'FaceTime Call';

  @override
  String get actionOpenInSkype => 'เปิดใน Skype';

  @override
  String get actionOpenInWallet => 'เปิดใน Wallet';

  @override
  String get actionCopyAddress => 'คัดลอกที่อยู่';

  @override
  String get actionOpenInPayPal => 'เปิดใน PayPal';

  @override
  String get actionOpenStore => 'เปิดร้านค้า';

  @override
  String get actionAddContact => 'เพิ่มผู้ติดต่อ';

  @override
  String get actionAddToCalendar => 'เพิ่มลงปฏิทิน';

  @override
  String get actionSave => 'บันทึก';

  @override
  String get actionCancel => 'ยกเลิก';

  @override
  String showMoreRows(Object hiddenRows, Object rowWord) {
    return 'แสดงอีก $hiddenRows $rowWord';
  }

  @override
  String showMoreFields(Object hiddenRows) {
    return 'แสดงอีก $hiddenRows รายการ';
  }

  @override
  String get showLess => 'แสดงน้อยลง';

  @override
  String get fieldEvent => 'กิจกรรม';

  @override
  String get fieldStartTime => 'เวลาเริ่มต้น';

  @override
  String get fieldEndTime => 'เวลาสิ้นสุด';

  @override
  String get fieldLocation => 'ตำแหน่ง';

  @override
  String get fieldDescription => 'คำอธิบาย';

  @override
  String get fieldOrganizer => 'ผู้จัด';

  @override
  String get fieldAttendee => 'ผู้เข้าร่วม';

  @override
  String get fieldName => 'ชื่อ';

  @override
  String get fieldPhone => 'โทรศัพท์';

  @override
  String get fieldEmail => 'อีเมล';

  @override
  String get fieldOrganization => 'องค์กร';

  @override
  String get fieldTitle => 'ตำแหน่ง';

  @override
  String get fieldAddress => 'ที่อยู่';

  @override
  String get fieldNotes => 'บันทึก';

  @override
  String get fieldSsid => 'SSID';

  @override
  String get fieldPassword => 'รหัสผ่าน';

  @override
  String get fieldEncryption => 'การเข้ารหัส';

  @override
  String get fieldUrl => 'URL';

  @override
  String get fieldNickname => 'ชื่อเล่น';

  @override
  String get fieldRole => 'บทบาท';

  @override
  String get fieldBirthday => 'วันเกิด';

  @override
  String get row => 'แถว';

  @override
  String get rows => 'แถว';

  @override
  String get monthJan => 'ม.ค.';

  @override
  String get monthFeb => 'ก.พ.';

  @override
  String get monthMar => 'มี.ค.';

  @override
  String get monthApr => 'เม.ย.';

  @override
  String get monthMay => 'พ.ค.';

  @override
  String get monthJun => 'มิ.ย.';

  @override
  String get monthJul => 'ก.ค.';

  @override
  String get monthAug => 'ส.ค.';

  @override
  String get monthSep => 'ก.ย.';

  @override
  String get monthOct => 'ต.ค.';

  @override
  String get monthNov => 'พ.ย.';

  @override
  String get monthDec => 'ธ.ค.';

  @override
  String get cardCtaTitle => 'เปิดด้วย PlainQR';

  @override
  String get cardSavedToDownloads => 'บันทึกการ์ดไปยังโฟล์เดอร์ดาวน์โหลดแล้ว';

  @override
  String get cardShareFailed => 'ไม่สามารถแชร์การ์ดได้';

  @override
  String get cardSaveFailed => 'ไม่สามารถบันทึกการ์ดได้';

  @override
  String get shareSubjectQrCode => 'รหัส QR';

  @override
  String get copiedToClipboard => 'คัดลอกไปยังคลิปบอร์ดแล้ว';

  @override
  String get sharing => 'กำลังแชร์…';

  @override
  String get openingLink => 'กำลังเปิดลิงก์';

  @override
  String get invalidUrl => 'URL ไม่ถูกต้อง';

  @override
  String get couldNotOpenLink => 'ไม่สามารถเปิดลิงก์นี้ได้';

  @override
  String get errorOpeningLink => 'เกิดข้อผิดพลาดในการเปิดลิงก์';

  @override
  String get wifiNoSsid => 'ไม่พบ SSID ใน QR นี้';

  @override
  String wifiConnected(Object ssid) {
    return 'เชื่อมต่อกับ $ssid แล้ว';
  }

  @override
  String wifiCouldNotConnect(Object ssid) {
    return 'ไม่สามารถเชื่อมต่อกับ $ssid ได้';
  }

  @override
  String get wifiConnectionFailed => 'การเชื่อมต่อล้มเหลว';

  @override
  String get contactOpenFailed => 'ไม่สามารถเปิดผู้ติดต่อได้';

  @override
  String get eventOpenFailed => 'ไม่สามารถเปิดกิจกรรมได้';

  @override
  String get confirmOpenExternalTitle => 'เปิดเนื้อหาภายนอก?';

  @override
  String confirmOpenExternalBody(Object url) {
    return 'เนื้อหาที่ลิงก์ด้านล่างอาจไม่ปลอดภัย ดำเนินการเฉพาะเมื่อคุณเชื่อถือแหล่งที่มาเท่านั้น\n\n$url\n\n— หากต้องการข้าม dialog นี้ในอนาคต ให้เปิด \"เปิดประเภทอันตรายอัตโนมัติ\" ในตั้งค่า';
  }

  @override
  String get autoOpenDialogTitle => 'เปิดประเภทอันตรายอัตโนมัติ?';

  @override
  String get autoOpenDialogContent =>
      'เมื่อเปิดการตั้งค่านี้ URL, โทรศัพท์, SMS และอีเมลจาก QR จะเปิดทันทีโดยไม่แสดงจุดหมายปลายทางก่อน ซึ่งหมายความว่า QR อันตรายสามารถโทรหรือนำคุณไปยังเว็บไซต์ที่เป็นอันตรายได้โดยไม่รู้ตัว\n\nเปิดใช้งานเฉพาะเมื่อคุณเข้าใจและยอมรับความเสี่ยงนี้เท่านั้น';

  @override
  String get autoOpenConfirmButton => 'ฉันเข้าใจ';

  @override
  String purchaseButton(Object price) {
    return 'ซื้อ $price';
  }

  @override
  String get storeUnavailable =>
      'Google Play Store ไม่พร้อมใช้งาน ไม่สามารถซื้อได้';

  @override
  String get productLoadFailed => 'ไม่สามารถโหลดสินค้าได้';

  @override
  String get purchaseFailed => 'การซื้อล้มเหลว';

  @override
  String get noErrorsLogged => '(ไม่มีข้อผิดพลาดที่บันทึกไว้)';

  @override
  String get addressLookupTimedOut => 'หมดเวลาค้นหาที่อยู่';

  @override
  String get couldNotResolveAddress => 'ไม่สามารถค้นหาที่อยู่นี้ได้';

  @override
  String get locationPermissionDenied => 'ปฏิเสธสิทธิ์เข้าถึงตำแหน่ง';

  @override
  String get locationLookupTimedOut => 'หมดเวลาค้นหาตำแหน่ง';

  @override
  String get couldNotGetCurrentLocation => 'ไม่สามารถรับตำแหน่งปัจจุบันได้';

  @override
  String get contactsPermissionDenied => 'ปฏิเสธสิทธิ์เข้าถึงผู้ติดต่อ';

  @override
  String get couldNotAccessContacts => 'ไม่สามารถเข้าถึงผู้ติดต่อได้';

  @override
  String get contactImported => 'นำเข้าผู้ติดต่อแล้ว';

  @override
  String get required => 'จำเป็น';

  @override
  String get resolving => 'กำลังค้นหา…';

  @override
  String get getCurrentLocation => 'รับตำแหน่งปัจจุบัน';

  @override
  String get importFromContacts => 'นำเข้าจากผู้ติดต่อ';

  @override
  String get tapToPickDateTime => 'แตะเพื่อเลือกวันที่และเวลา';

  @override
  String get formEmailAddress => 'ที่อยู่อีเมล';

  @override
  String get formEmailHint => 'เช่น user@example.com';

  @override
  String get formEmailRequired => 'จำเป็น — ต้องมี @';

  @override
  String get formSubject => 'หัวข้อ';

  @override
  String get formBody => 'เนื้อหา';

  @override
  String get formPhoneNumber => 'หมายเลขโทรศัพท์';

  @override
  String get formPhoneHint => 'เช่น 081-234-5678';

  @override
  String get formSmsHelper => 'จำเป็น — ข้อความไม่บังคับ';

  @override
  String get formMessage => 'ข้อความ';

  @override
  String get formText => 'ข้อความ';

  @override
  String get formTextHint => 'ป้อนข้อความหรือข้อความใดๆ';

  @override
  String get formUrl => 'URL';

  @override
  String get formUrlHint => 'example.com';

  @override
  String get formUrlHelper =>
      'ป้อนโดเมน — คุณสามารถเปลี่ยน https:// ได้ตามต้องการ';

  @override
  String get formFullName => 'ชื่อ-นามสกุล';

  @override
  String get formVcardHelper => 'จำเป็น — ช่องอื่นๆ ไม่บังคับ';

  @override
  String get formOrganization => 'องค์กร';

  @override
  String get formTitle => 'ตำแหน่ง';

  @override
  String get formNetworkName => 'ชื่อเครือข่าย (SSID)';

  @override
  String get formWifiSsidHint => 'เช่น MyHomeWiFi';

  @override
  String get formSsidAutoDetected =>
      'ตรวจพบ SSID จากเครือข่ายปัจจุบันโดยอัตโนมัติ';

  @override
  String get formWifiPassword => 'รหัสผ่าน';

  @override
  String get formWifiPasswordHelper => 'ปล่อยว่างสำหรับเครือข่ายเปิด';

  @override
  String get formAddress => 'ที่อยู่';

  @override
  String get formAddressHint => 'เช่น หอไอเฟล, ปารีส';

  @override
  String get formLatitude => 'ละติจูด (-90 ถึง 90)';

  @override
  String get formLongitude => 'ลองจิจูด (-180 ถึง 180)';

  @override
  String get formStartDate => 'วันที่เริ่มต้น *';

  @override
  String get formEndDate => 'วันที่สิ้นสุด';

  @override
  String get formEventTitle => 'ชื่อกิจกรรม';

  @override
  String get formLocation => 'ตำแหน่ง';

  @override
  String get formLocationHint => 'เช่น 123 ถนนหลัก หรือชื่อสถานที่';

  @override
  String get updateReadyMessage => 'อัปเดตพร้อมติดตั้งแล้ว';

  @override
  String get updateReadyAction => 'รีสตาร์ท';
}
