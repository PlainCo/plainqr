// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Vietnamese (`vi`).
class AppLocalizationsVi extends AppLocalizations {
  AppLocalizationsVi([String locale = 'vi']) : super(locale);

  @override
  String get appName => 'PlainQR';

  @override
  String get appNameFull => 'PlainQR — Quét & Tạo mã';

  @override
  String get drawerScan => 'Quét';

  @override
  String get drawerScanFromGallery => 'Quét từ thư viện ảnh';

  @override
  String get drawerGenerator => 'Bộ tạo mã';

  @override
  String get drawerHistory => 'Lịch sử';

  @override
  String get drawerSettings => 'Cài đặt';

  @override
  String get scannerUnlockSnack => 'Đã mở khóa bộ tạo mã!';

  @override
  String get scannerUnlockAnnounce => 'Đã mở khóa bộ tạo mã';

  @override
  String scannerFreeTierBanner(Object price) {
    return 'Miễn phí — $price để gỡ bỏ';
  }

  @override
  String scannerDetectedAnnounce(Object type, Object brief) {
    return 'Phát hiện $type: $brief';
  }

  @override
  String get scannerSavedToHistory => 'Đã lưu vào lịch sử';

  @override
  String get scannerTooltipDisableFlashlight => 'Tắt đèn flash';

  @override
  String get scannerTooltipEnableFlashlight => 'Bật đèn flash';

  @override
  String get scannerTooltipGallery => 'Quét từ thư viện ảnh';

  @override
  String get scannerZoomIn => 'Phóng to';

  @override
  String get scannerZoomOut => 'Thu nhỏ';

  @override
  String scannerZoomLevel(Object level) {
    return '$level×';
  }

  @override
  String get generatorAppBarTitle => 'Bộ tạo mã';

  @override
  String generatorFormAppBarTitle(Object typeName) {
    return 'Mã QR $typeName';
  }

  @override
  String get generatorCardLabel => 'Nhãn thẻ (tùy chọn)';

  @override
  String get generatorCardLabelHint => 'VD: WiFi khách, Website của tôi';

  @override
  String get generatorPreview => 'Xem trước';

  @override
  String get generatorStyle => 'Kiểu';

  @override
  String get generatorStyleLight => 'Sáng';

  @override
  String get generatorStyleDark => 'Tối';

  @override
  String get generatorStyleSticker => 'Nhãn dán';

  @override
  String get generatorShareCard => 'Chia sẻ thẻ';

  @override
  String get generatorSaveToDevice => 'Lưu vào thiết bị';

  @override
  String get generatorCopiedSnack => 'Đã sao chép nội dung QR';

  @override
  String get generatorCopyQrContent => 'Sao chép nội dung QR';

  @override
  String get typeUrl => 'URL';

  @override
  String get typeUrlDescription =>
      'Liên kết đến trang web hoặc nội dung trực tuyến';

  @override
  String get typeUrlHeadline => 'Quét để truy cập';

  @override
  String get typePlainText => 'Văn bản thuần';

  @override
  String get typePlainTextDescription => 'Văn bản hoặc tin nhắn tự do';

  @override
  String get typePlainTextHeadline => 'Quét để đọc';

  @override
  String get typeWifi => 'WiFi';

  @override
  String get typeWifiDescription => 'Chia sẻ thông tin mạng';

  @override
  String get typeWifiHeadline => 'Quét để kết nối WiFi';

  @override
  String get typeVcard => 'vCard';

  @override
  String get typeVcardDescription => 'Chia sẻ thông tin liên hệ';

  @override
  String get typeVcardHeadline => 'Quét để lưu liên hệ';

  @override
  String get typeCalendar => 'Lịch';

  @override
  String get typeCalendarDescription => 'Thêm sự kiện vào lịch';

  @override
  String get typeCalendarHeadline => 'Quét để thêm vào lịch';

  @override
  String get typePhone => 'Điện thoại';

  @override
  String get typePhoneDescription => 'Số điện thoại để gọi';

  @override
  String get typePhoneHeadline => 'Quét để gọi';

  @override
  String get typeEmail => 'Email';

  @override
  String get typeEmailDescription => 'Soạn email';

  @override
  String get typeEmailHeadline => 'Quét để gửi email';

  @override
  String get typeSms => 'SMS';

  @override
  String get typeSmsDescription => 'Gửi tin nhắn văn bản';

  @override
  String get typeSmsHeadline => 'Quét để nhắn tin';

  @override
  String get typeLocation => 'Vị trí';

  @override
  String get typeLocationDescription => 'Địa chỉ hoặc tọa độ';

  @override
  String get typeLocationHeadline => 'Quét để xem đường đi';

  @override
  String get historyAppBarTitle => 'Lịch sử quét';

  @override
  String get historyClearAllTooltip => 'Xóa tất cả';

  @override
  String get historyEmpty => 'Chưa có lần quét nào';

  @override
  String get historyJustNow => 'Vừa xong';

  @override
  String historyMinutesAgo(Object count) {
    return '${count}m trước';
  }

  @override
  String historyHoursAgo(Object count) {
    return '${count}h trước';
  }

  @override
  String historyDeletedSnack(Object label) {
    return 'Đã xóa $label';
  }

  @override
  String get historyUndoButton => 'Hoàn tác';

  @override
  String get historyClearDialogTitle => 'Xóa lịch sử quét?';

  @override
  String get historyClearDialogContent => 'Hành động này không thể hoàn tác.';

  @override
  String get historyClearButton => 'Xóa';

  @override
  String get historySourceGallery => 'Thư viện ảnh';

  @override
  String get historySourceCamera => 'Camera';

  @override
  String get galleryNoQrFound => 'Không tìm thấy mã QR trong ảnh';

  @override
  String get galleryCropTitle => 'Căn khung mã QR';

  @override
  String get galleryCropScan => 'Quét';

  @override
  String get ratePromptTitle => 'Thích PlainQR chứ?';

  @override
  String get ratePromptBody =>
      'Đánh giá của bạn giúp người khác tìm thấy máy quét QR riêng tư.';

  @override
  String get ratePromptRate => 'Đánh giá';

  @override
  String get ratePromptFeedback => 'Phản hồi';

  @override
  String get tilePromptTitle => 'Quét từ mọi nơi';

  @override
  String get tilePromptBody =>
      'Thêm ô PlainQR vào Cài đặt nhanh.\nVuốt xuống, chạm, quét — không cần mở ứng dụng.';

  @override
  String get tilePromptAdd => 'Thêm Ô';

  @override
  String get settingsAppBarTitle => 'Cài đặt';

  @override
  String get settingsSectionScanning => 'Quét';

  @override
  String get settingsSaveHistory => 'Lưu lịch sử quét';

  @override
  String get settingsSaveHistoryOn => 'Quét camera tự động lưu';

  @override
  String get settingsSaveHistoryOff => 'Tự lưu từ thẻ kết quả';

  @override
  String get settingsAutoOpen => 'Tự mở loại nguy hiểm';

  @override
  String get settingsAutoOpenOn =>
      'Bỏ qua xác nhận cho URL, gọi điện, SMS và email';

  @override
  String get settingsAutoOpenOff =>
      'Hỏi trước khi mở URL, gọi điện, gửi SMS hoặc soạn email';

  @override
  String get settingsAutoFlashlight => 'Tự bật đèn flash khi quét';

  @override
  String get settingsAutoFlashlightOn => 'Đèn flash bật khi mở màn hình quét';

  @override
  String get settingsAutoFlashlightOff => 'Đèn flash điều khiển thủ công';

  @override
  String get settingsEnableGenerators => 'Bật bộ tạo mã';

  @override
  String settingsEnableGeneratorsSubtitle(Object price) {
    return 'Mở khóa các trình tạo WiFi, vCard và Lịch cho $price';
  }

  @override
  String get settingsPremiumUnlocked => 'Đã mở khóa Premium';

  @override
  String get settingsPremiumUnlockedSubtitle =>
      'Tất cả tính năng bộ tạo mã đã được bật';

  @override
  String get settingsSectionAppearance => 'Giao diện';

  @override
  String get settingsThemeSystem => 'Hệ thống';

  @override
  String get settingsThemeLight => 'Sáng';

  @override
  String get settingsThemeDark => 'Tối';

  @override
  String get settingsSectionLegal => 'Pháp lý';

  @override
  String get settingsOpenSourceLicences => 'Giấy phép mã nguồn mở';

  @override
  String get changelog04Item1 =>
      '22 ngôn ngữ — Bây giờ PlainQR nói ngôn ngữ của bạn. Chọn trong cài đặt hệ thống.';

  @override
  String get changelog04Item2 =>
      'Chủ đề hệ thống — sáng, tối, hoặc tự động theo thiết bị của bạn.';

  @override
  String get changelog04Item3 =>
      'Đánh giá chúng tôi — nhấn vào ngôi sao trong menu để để lại đánh giá trên Play Store.';

  @override
  String get changelog04Item4 => 'Có gì mới — bạn đang đọc nó.';

  @override
  String get changelog04Item5 =>
      'Xem phản hồi trên GitHub — nhấn vào bất kỳ nội dung gửi nào để xem trạng thái issue.';

  @override
  String get unlockAppBarTitle => 'Bật bộ tạo mã';

  @override
  String get unlockTitle => 'Bật bộ tạo WiFi, Liên hệ\n& Lịch';

  @override
  String unlockDescription(Object price) {
    return 'Tạo mã QR cho mạng WiFi, thẻ liên hệ,\nvà sự kiện lịch.\n$price một lần. Không phí định kỳ.';
  }

  @override
  String unlockEnableButton(Object price) {
    return 'Bật — $price';
  }

  @override
  String get unlockRestoreButton => 'Khôi phục giao dịch trước';

  @override
  String get unlockDialogTitle => 'Mở khóa bộ tạo mã';

  @override
  String unlockDialogContent(Object price) {
    return 'Mở khóa các máy phát điện WiFi, vCard và Lịch bằng giao dịch mua $price một lần. Sáu loại máy phát điện khác luôn miễn phí.';
  }

  @override
  String get actionOpen => 'Mở';

  @override
  String get actionCopy => 'Sao chép';

  @override
  String get actionGenerate => 'Tạo';

  @override
  String get actionShare => 'Chia sẻ';

  @override
  String get actionEmail => 'Email';

  @override
  String get actionCall => 'Gọi';

  @override
  String get actionSendSms => 'Gửi SMS';

  @override
  String get actionConnect => 'Kết nối';

  @override
  String get actionCopySsid => 'Sao chép SSID';

  @override
  String get actionCopyPassword => 'Sao chép mật khẩu';

  @override
  String get actionOpenMaps => 'Mở Bản đồ';

  @override
  String get actionOpenInWhatsApp => 'Mở trong WhatsApp';

  @override
  String get actionOpenInTelegram => 'Mở trong Telegram';

  @override
  String get actionOpenInSignal => 'Mở trong Signal';

  @override
  String get actionOpenInTwitter => 'Mở trong Twitter';

  @override
  String get actionFaceTimeCall => 'Gọi FaceTime';

  @override
  String get actionOpenInSkype => 'Mở trong Skype';

  @override
  String get actionOpenInWallet => 'Mở trong Wallet';

  @override
  String get actionCopyAddress => 'Sao chép địa chỉ';

  @override
  String get actionOpenInPayPal => 'Mở trong PayPal';

  @override
  String get actionOpenStore => 'Mở cửa hàng';

  @override
  String get actionAddContact => 'Thêm liên hệ';

  @override
  String get actionAddToCalendar => 'Thêm vào lịch';

  @override
  String get actionSave => 'Lưu';

  @override
  String get actionCancel => 'Hủy';

  @override
  String showMoreRows(Object hiddenRows, Object rowWord) {
    return 'Hiện $hiddenRows $rowWord nữa';
  }

  @override
  String showMoreFields(Object hiddenRows) {
    return 'Hiện $hiddenRows nữa';
  }

  @override
  String get showLess => 'Hiện ít hơn';

  @override
  String get fieldEvent => 'Sự kiện';

  @override
  String get fieldStartTime => 'Thời gian bắt đầu';

  @override
  String get fieldEndTime => 'Thời gian kết thúc';

  @override
  String get fieldLocation => 'Địa điểm';

  @override
  String get fieldDescription => 'Mô tả';

  @override
  String get fieldOrganizer => 'Người tổ chức';

  @override
  String get fieldAttendee => 'Người tham dự';

  @override
  String get fieldName => 'Tên';

  @override
  String get fieldPhone => 'Điện thoại';

  @override
  String get fieldEmail => 'Email';

  @override
  String get fieldOrganization => 'Tổ chức';

  @override
  String get fieldTitle => 'Chức danh';

  @override
  String get fieldAddress => 'Địa chỉ';

  @override
  String get fieldNotes => 'Ghi chú';

  @override
  String get fieldSsid => 'SSID';

  @override
  String get fieldPassword => 'Mật khẩu';

  @override
  String get fieldEncryption => 'Mã hóa';

  @override
  String get fieldUrl => 'URL';

  @override
  String get fieldNickname => 'Tên hiển thị';

  @override
  String get fieldRole => 'Vai trò';

  @override
  String get fieldBirthday => 'Ngày sinh';

  @override
  String get row => 'dòng';

  @override
  String get rows => 'dòng';

  @override
  String get monthJan => 'Th1';

  @override
  String get monthFeb => 'Th2';

  @override
  String get monthMar => 'Th3';

  @override
  String get monthApr => 'Th4';

  @override
  String get monthMay => 'Th5';

  @override
  String get monthJun => 'Th6';

  @override
  String get monthJul => 'Th7';

  @override
  String get monthAug => 'Th8';

  @override
  String get monthSep => 'Th9';

  @override
  String get monthOct => 'Th10';

  @override
  String get monthNov => 'Th11';

  @override
  String get monthDec => 'Th12';

  @override
  String get cardCtaTitle => 'Mở với PlainQR';

  @override
  String get cardSavedToDownloads => 'Đã lưu thẻ vào Tải xuống';

  @override
  String get cardShareFailed => 'Không thể chia sẻ thẻ';

  @override
  String get cardSaveFailed => 'Không thể lưu thẻ';

  @override
  String get shareSubjectQrCode => 'Mã QR';

  @override
  String get copiedToClipboard => 'Đã sao chép';

  @override
  String get sharing => 'Đang chia sẻ…';

  @override
  String get openingLink => 'Đang mở liên kết';

  @override
  String get invalidUrl => 'URL không hợp lệ';

  @override
  String get couldNotOpenLink => 'Không thể mở liên kết này';

  @override
  String get errorOpeningLink => 'Lỗi khi mở liên kết';

  @override
  String get wifiNoSsid => 'Không tìm thấy SSID trong mã QR này';

  @override
  String wifiConnected(Object ssid) {
    return 'Đã kết nối với $ssid';
  }

  @override
  String wifiCouldNotConnect(Object ssid) {
    return 'Không thể kết nối với $ssid';
  }

  @override
  String get wifiConnectionFailed => 'Kết nối thất bại';

  @override
  String get contactOpenFailed => 'Không thể mở liên hệ';

  @override
  String get eventOpenFailed => 'Không thể mở sự kiện';

  @override
  String get confirmOpenExternalTitle => 'Mở nội dung bên ngoài?';

  @override
  String confirmOpenExternalBody(Object url) {
    return 'Nội dung tại liên kết bên dưới có thể không an toàn. Chỉ tiếp tục nếu bạn tin tưởng nguồn.\n\n$url\n\n— Để bỏ qua dialog này trong tương lai, bật \"Tự mở loại nguy hiểm\" trong Cài đặt.';
  }

  @override
  String get autoOpenDialogTitle => 'Tự mở loại nguy hiểm?';

  @override
  String get autoOpenDialogContent =>
      'Khi bật cài đặt này, URL, cuộc gọi điện thoại, SMS và email từ mã QR sẽ mở ngay lập tức mà không hiển thị điểm đến trước. Điều này có nghĩa là mã QR độc hại có thể thực hiện cuộc gọi hoặc đưa bạn đến trang web có hại mà không biết.\n\nChỉ bật nếu bạn hiểu và chấp nhận rủi ro này.';

  @override
  String get autoOpenConfirmButton => 'Tôi hiểu';

  @override
  String purchaseButton(Object price) {
    return 'Mua $price';
  }

  @override
  String get storeUnavailable =>
      'Google Play Store không khả dụng. Không thể mua hàng.';

  @override
  String get productLoadFailed => 'Tải thông tin sản phẩm thất bại';

  @override
  String get purchaseFailed => 'Mua hàng thất bại';

  @override
  String get noErrorsLogged => '(không có lỗi nào)';

  @override
  String get addressLookupTimedOut => 'Tra cứu địa chỉ hết thời gian';

  @override
  String get couldNotResolveAddress => 'Không thể phân giải địa chỉ';

  @override
  String get locationPermissionDenied => 'Từ chối quyền vị trí';

  @override
  String get locationLookupTimedOut => 'Tra cứu vị trí hết thời gian';

  @override
  String get couldNotGetCurrentLocation => 'Không thể lấy vị trí hiện tại';

  @override
  String get contactsPermissionDenied => 'Từ chối quyền danh bạ';

  @override
  String get couldNotAccessContacts => 'Không thể truy cập danh bạ';

  @override
  String get contactImported => 'Đã nhập liên hệ';

  @override
  String get required => 'Bắt buộc';

  @override
  String get resolving => 'Đang phân giải…';

  @override
  String get getCurrentLocation => 'Lấy vị trí hiện tại';

  @override
  String get importFromContacts => 'Nhập từ danh bạ';

  @override
  String get tapToPickDateTime => 'Nhấn để chọn ngày & giờ';

  @override
  String get formEmailAddress => 'Địa chỉ email';

  @override
  String get formEmailHint => 'VD: user@example.com';

  @override
  String get formEmailRequired => 'Bắt buộc — phải chứa @';

  @override
  String get formSubject => 'Tiêu đề';

  @override
  String get formBody => 'Nội dung';

  @override
  String get formPhoneNumber => 'Số điện thoại';

  @override
  String get formPhoneHint => 'VD: 0912 345 678';

  @override
  String get formSmsHelper => 'Bắt buộc — tin nhắn là tùy chọn';

  @override
  String get formMessage => 'Tin nhắn';

  @override
  String get formText => 'Văn bản';

  @override
  String get formTextHint => 'Nhập bất kỳ văn bản hoặc tin nhắn nào';

  @override
  String get formUrl => 'URL';

  @override
  String get formUrlHint => 'example.com';

  @override
  String get formUrlHelper =>
      'Nhập tên miền — bạn có thể thay đổi https:// nếu cần';

  @override
  String get formFullName => 'Họ và tên';

  @override
  String get formVcardHelper => 'Bắt buộc — tất cả các trường khác là tùy chọn';

  @override
  String get formOrganization => 'Tổ chức';

  @override
  String get formTitle => 'Chức danh';

  @override
  String get formNetworkName => 'Tên mạng (SSID)';

  @override
  String get formWifiSsidHint => 'VD: MyHomeWiFi';

  @override
  String get formSsidAutoDetected => 'SSID tự động phát hiện từ mạng hiện tại';

  @override
  String get formWifiPassword => 'Mật khẩu';

  @override
  String get formWifiPasswordHelper => 'Để trống cho mạng mở';

  @override
  String get formAddress => 'Địa chỉ';

  @override
  String get formAddressHint => 'VD: Tháp Eiffel, Paris';

  @override
  String get formLatitude => 'Vĩ độ (-90 đến 90)';

  @override
  String get formLongitude => 'Kinh độ (-180 đến 180)';

  @override
  String get formStartDate => 'Ngày bắt đầu *';

  @override
  String get formEndDate => 'Ngày kết thúc';

  @override
  String get formEventTitle => 'Tên sự kiện';

  @override
  String get formLocation => 'Địa điểm';

  @override
  String get formLocationHint => 'VD: 123 Đường Chính hoặc tên địa điểm';

  @override
  String get updateReadyMessage => 'Bản cập nhật đã sẵn sàng cài đặt';

  @override
  String get updateReadyAction => 'Khởi động lại';
}
