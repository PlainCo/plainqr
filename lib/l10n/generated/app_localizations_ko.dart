// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Korean (`ko`).
class AppLocalizationsKo extends AppLocalizations {
  AppLocalizationsKo([String locale = 'ko']) : super(locale);

  @override
  String get appName => 'PlainQR';

  @override
  String get appNameFull => 'PlainQR — 스캔 및 생성';

  @override
  String get drawerScan => '스캔';

  @override
  String get drawerScanFromGallery => '갤러리에서 스캔';

  @override
  String get drawerGenerator => '생성기';

  @override
  String get drawerHistory => '기록';

  @override
  String get drawerSettings => '설정';

  @override
  String get scannerUnlockSnack => '생성기 잠금 해제!';

  @override
  String get scannerUnlockAnnounce => '생성기 잠금 해제';

  @override
  String scannerFreeTierBanner(Object price) {
    return '무료 버전 — $price로 제거';
  }

  @override
  String scannerDetectedAnnounce(Object type, Object brief) {
    return '$type 감지됨: $brief';
  }

  @override
  String get scannerSavedToHistory => '기록에 저장됨';

  @override
  String get scannerTooltipDisableFlashlight => '손전등 끄기';

  @override
  String get scannerTooltipEnableFlashlight => '손전등 켜기';

  @override
  String get scannerTooltipGallery => '갤러리에서 스캔';

  @override
  String get scannerZoomIn => '확대';

  @override
  String get scannerZoomOut => '축소';

  @override
  String scannerZoomLevel(Object level) {
    return '$level×';
  }

  @override
  String get generatorAppBarTitle => '생성기';

  @override
  String generatorFormAppBarTitle(Object typeName) {
    return '$typeName QR';
  }

  @override
  String get generatorCardLabel => '카드 라벨 (선택사항)';

  @override
  String get generatorCardLabelHint => '예: 게스트 와이파이, 내 웹사이트';

  @override
  String get generatorPreview => '미리보기';

  @override
  String get generatorStyle => '스타일:';

  @override
  String get generatorStyleLight => '라이트';

  @override
  String get generatorStyleDark => '다크';

  @override
  String get generatorStyleSticker => '스티커';

  @override
  String get generatorShareCard => '카드 공유';

  @override
  String get generatorSaveToDevice => '기기에 저장';

  @override
  String get generatorCopiedSnack => 'QR 내용 복사됨';

  @override
  String get generatorCopyQrContent => 'QR 내용 복사';

  @override
  String get typeUrl => 'URL';

  @override
  String get typeUrlDescription => '웹사이트나 온라인 콘텐츠 링크';

  @override
  String get typeUrlHeadline => '스캔하여 방문';

  @override
  String get typePlainText => '일반 텍스트';

  @override
  String get typePlainTextDescription => '자유 형식 텍스트 또는 메시지';

  @override
  String get typePlainTextHeadline => '스캔하여 읽기';

  @override
  String get typeWifi => '와이파이';

  @override
  String get typeWifiDescription => '네트워크 정보 공유';

  @override
  String get typeWifiHeadline => '스캔하여 와이파이 연결';

  @override
  String get typeVcard => 'vCard';

  @override
  String get typeVcardDescription => '연락처 정보 공유';

  @override
  String get typeVcardHeadline => '스캔하여 연락처 저장';

  @override
  String get typeCalendar => '캘린더';

  @override
  String get typeCalendarDescription => '캘린더에 이벤트 추가';

  @override
  String get typeCalendarHeadline => '스캔하여 캘린더에 추가';

  @override
  String get typePhone => '전화';

  @override
  String get typePhoneDescription => '전화번호';

  @override
  String get typePhoneHeadline => '스캔하여 전화';

  @override
  String get typeEmail => '이메일';

  @override
  String get typeEmailDescription => '이메일 작성';

  @override
  String get typeEmailHeadline => '스캔하여 이메일 보내기';

  @override
  String get typeSms => '문자';

  @override
  String get typeSmsDescription => '문자메시지 보내기';

  @override
  String get typeSmsHeadline => '스캔하여 문자 보내기';

  @override
  String get typeLocation => '위치';

  @override
  String get typeLocationDescription => '주소 또는 좌표';

  @override
  String get typeLocationHeadline => '스캔하여 길 안내';

  @override
  String get historyAppBarTitle => '스캔 기록';

  @override
  String get historyClearAllTooltip => '전체 삭제';

  @override
  String get historyEmpty => '스캔 기록 없음';

  @override
  String get historyJustNow => '방금';

  @override
  String historyMinutesAgo(Object count) {
    return '$count분 전';
  }

  @override
  String historyHoursAgo(Object count) {
    return '$count시간 전';
  }

  @override
  String historyDeletedSnack(Object label) {
    return '$label 삭제됨';
  }

  @override
  String get historyUndoButton => '실행 취소';

  @override
  String get historyClearDialogTitle => '스캔 기록 전체 삭제?';

  @override
  String get historyClearDialogContent => '이 작업은 되돌릴 수 없습니다.';

  @override
  String get historyClearButton => '삭제';

  @override
  String get historySourceGallery => '갤러리';

  @override
  String get historySourceCamera => '카메라';

  @override
  String get galleryNoQrFound => '이미지에서 QR 코드를 찾을 수 없습니다';

  @override
  String get galleryCropTitle => 'QR 코드 프레임 맞추기';

  @override
  String get galleryCropScan => '스캔';

  @override
  String get ratePromptTitle => 'PlainQR가 마음에 드시나요?';

  @override
  String get ratePromptBody => '회원님의 리뷰가 다른 사람들이 비공개 QR 스캐너를 찾는 데 도움이 됩니다.';

  @override
  String get ratePromptRate => '평가하기';

  @override
  String get ratePromptFeedback => '피드백';

  @override
  String get tilePromptTitle => '어디서나 스캔';

  @override
  String get tilePromptBody =>
      '빠른 설정에 PlainQR 타일을 추가하세요.\n아래로 스와이프, 탭, 스캔 — 앱을 열 필요가 없습니다.';

  @override
  String get tilePromptAdd => '타일 추가';

  @override
  String get settingsAppBarTitle => '설정';

  @override
  String get settingsSectionScanning => '스캔';

  @override
  String get settingsSaveHistory => '스캔 기록 저장';

  @override
  String get settingsSaveHistoryOn => '카메라 스캔 자동 저장';

  @override
  String get settingsSaveHistoryOff => '결과 카드에서 수동 저장';

  @override
  String get settingsAutoOpen => '위험 유형 자동 열기';

  @override
  String get settingsAutoOpenOn => 'URL, 전화, 문자, 이메일 열기 전 확인 건너뛰기';

  @override
  String get settingsAutoOpenOff => 'URL 열기, 전화, 문자, 이메일 보내기 전 확인';

  @override
  String get settingsAutoFlashlight => '스캔 시 자동 손전등';

  @override
  String get settingsAutoFlashlightOn => '스캔 화면 열 때 손전등 자동 켜기';

  @override
  String get settingsAutoFlashlightOff => '손전등 수동 제어';

  @override
  String get settingsEnableGenerators => '생성기 활성화';

  @override
  String settingsEnableGeneratorsSubtitle(Object price) {
    return '$price에 대한 와이파이, vCard 및 캘린더 생성기 잠금 해제';
  }

  @override
  String get settingsPremiumUnlocked => '프리미엄 해제됨';

  @override
  String get settingsPremiumUnlockedSubtitle => '모든 생성기 기능 사용 가능';

  @override
  String get settingsSectionAppearance => '외관';

  @override
  String get settingsThemeSystem => '시스템';

  @override
  String get settingsThemeLight => '라이트';

  @override
  String get settingsThemeDark => '다크';

  @override
  String get settingsSectionLegal => '법적 고지';

  @override
  String get settingsOpenSourceLicences => '오픈소스 라이선스';

  @override
  String get changelog04Item1 =>
      '22개 언어 — PlainQR가 이제 귀하의 언어로 작동합니다. 시스템 설정에서 선택하세요.';

  @override
  String get changelog04Item2 => '시스템 테마 — 라이트, 다크, 또는 기기 설정을 자동으로 따릅니다.';

  @override
  String get changelog04Item3 => '평가하기 — Play Store에 리뷰를 남기려면 메뉴의 별을 탭하세요.';

  @override
  String get changelog04Item4 => '새로운 기능 — 지금 읽고 계신 내용입니다.';

  @override
  String get changelog04Item5 => 'GitHub에서 피드백 보기 — issue 상태를 보려면 제출물을 탭하세요.';

  @override
  String get unlockAppBarTitle => '생성기 활성화';

  @override
  String get unlockTitle => '와이파이, 연락처,\n캘린더 생성기 활성화';

  @override
  String unlockDescription(Object price) {
    return '와이파이 네트워크, 연락처 카드,\n캘린더 이벤트 QR 코드 생성.\n$price一次性. 구독 없음.';
  }

  @override
  String unlockEnableButton(Object price) {
    return '활성화 — $price';
  }

  @override
  String get unlockRestoreButton => '이전 구매 복원';

  @override
  String get unlockDialogTitle => '생성기 잠금 해제';

  @override
  String unlockDialogContent(Object price) {
    return '일회성 $price 구매로 와이파이, vCard 및 캘린더 생성기를 잠금 해제하세요. 나머지 6개 생성기 유형은 항상 무료입니다.';
  }

  @override
  String get actionOpen => '열기';

  @override
  String get actionCopy => '복사';

  @override
  String get actionGenerate => '생성';

  @override
  String get actionShare => '공유';

  @override
  String get actionEmail => '이메일';

  @override
  String get actionCall => '전화';

  @override
  String get actionSendSms => '문자 보내기';

  @override
  String get actionConnect => '연결';

  @override
  String get actionCopySsid => 'SSID 복사';

  @override
  String get actionCopyPassword => '비밀번호 복사';

  @override
  String get actionOpenMaps => '지도 열기';

  @override
  String get actionOpenInWhatsApp => 'WhatsApp에서 열기';

  @override
  String get actionOpenInTelegram => 'Telegram에서 열기';

  @override
  String get actionOpenInSignal => 'Signal에서 열기';

  @override
  String get actionOpenInTwitter => 'Twitter에서 열기';

  @override
  String get actionFaceTimeCall => 'FaceTime 통화';

  @override
  String get actionOpenInSkype => 'Skype에서 열기';

  @override
  String get actionOpenInWallet => '지갑에서 열기';

  @override
  String get actionCopyAddress => '주소 복사';

  @override
  String get actionOpenInPayPal => 'PayPal에서 열기';

  @override
  String get actionOpenStore => '스토어 열기';

  @override
  String get actionAddContact => '연락처 추가';

  @override
  String get actionAddToCalendar => '캘린더에 추가';

  @override
  String get actionSave => '저장';

  @override
  String get actionCancel => '취소';

  @override
  String showMoreRows(Object hiddenRows, Object rowWord) {
    return '$hiddenRows개 $rowWord 더 보기';
  }

  @override
  String showMoreFields(Object hiddenRows) {
    return '$hiddenRows개 더 보기';
  }

  @override
  String get showLess => '간략히';

  @override
  String get fieldEvent => '이벤트';

  @override
  String get fieldStartTime => '시작 시간';

  @override
  String get fieldEndTime => '종료 시간';

  @override
  String get fieldLocation => '위치';

  @override
  String get fieldDescription => '설명';

  @override
  String get fieldOrganizer => '주최자';

  @override
  String get fieldAttendee => '참석자';

  @override
  String get fieldName => '이름';

  @override
  String get fieldPhone => '전화';

  @override
  String get fieldEmail => '이메일';

  @override
  String get fieldOrganization => '소속';

  @override
  String get fieldTitle => '직함';

  @override
  String get fieldAddress => '주소';

  @override
  String get fieldNotes => '메모';

  @override
  String get fieldSsid => 'SSID';

  @override
  String get fieldPassword => '비밀번호';

  @override
  String get fieldEncryption => '암호화';

  @override
  String get fieldUrl => 'URL';

  @override
  String get fieldNickname => '별명';

  @override
  String get fieldRole => '역할';

  @override
  String get fieldBirthday => '생년월일';

  @override
  String get row => '행';

  @override
  String get rows => '행';

  @override
  String get monthJan => '1월';

  @override
  String get monthFeb => '2월';

  @override
  String get monthMar => '3월';

  @override
  String get monthApr => '4월';

  @override
  String get monthMay => '5월';

  @override
  String get monthJun => '6월';

  @override
  String get monthJul => '7월';

  @override
  String get monthAug => '8월';

  @override
  String get monthSep => '9월';

  @override
  String get monthOct => '10월';

  @override
  String get monthNov => '11월';

  @override
  String get monthDec => '12월';

  @override
  String get cardCtaTitle => 'PlainQR로 열기';

  @override
  String get cardSavedToDownloads => '카드를 다운로드에 저장';

  @override
  String get cardShareFailed => '카드를 공유할 수 없음';

  @override
  String get cardSaveFailed => '카드를 저장할 수 없음';

  @override
  String get shareSubjectQrCode => 'QR 코드';

  @override
  String get copiedToClipboard => '클립보드에 복사됨';

  @override
  String get sharing => '공유 중…';

  @override
  String get openingLink => '링크 열기';

  @override
  String get invalidUrl => '잘못된 URL';

  @override
  String get couldNotOpenLink => '이 링크를 열 수 없음';

  @override
  String get errorOpeningLink => '링크 열기 오류';

  @override
  String get wifiNoSsid => '이 QR 코드에서 SSID를 찾을 수 없음';

  @override
  String wifiConnected(Object ssid) {
    return '$ssid에 연결됨';
  }

  @override
  String wifiCouldNotConnect(Object ssid) {
    return '$ssid에 연결할 수 없음';
  }

  @override
  String get wifiConnectionFailed => '연결 실패';

  @override
  String get contactOpenFailed => '연락처를 열 수 없음';

  @override
  String get eventOpenFailed => '이벤트를 열 수 없음';

  @override
  String get confirmOpenExternalTitle => '외부 콘텐츠를 열까요?';

  @override
  String confirmOpenExternalBody(Object url) {
    return '아래 링크의 콘텐츠가 안전하지 않을 수 있습니다. 출처를 신뢰하는 경우에만 진행하세요.\n\n$url\n\n— 이 대화 상자를 건너뛰려면 설정에서 \"위험 유형 자동 열기\"를 활성화하세요.';
  }

  @override
  String get autoOpenDialogTitle => '위험 유형 자동 열기?';

  @override
  String get autoOpenDialogContent =>
      '이 설정을 켜면 QR 코드의 URL, 전화, 문자, 이메일이 대상 없이 바로 열립니다. 이는 악성 QR 코드가 귀하의 동의 없이 전화를 걸거나 유해한 사이트로 이동할 수 있음을 의미합니다.\n\n이 위험을 이해하고 수락하는 경우에만 활성화하세요.';

  @override
  String get autoOpenConfirmButton => '알겠습니다';

  @override
  String purchaseButton(Object price) {
    return '$price 구매';
  }

  @override
  String get storeUnavailable => 'Google Play 스토어를 사용할 수 없습니다. 구매할 수 없습니다.';

  @override
  String get productLoadFailed => '제품을 불러오지 못함';

  @override
  String get purchaseFailed => '구매 실패';

  @override
  String get noErrorsLogged => '(오류 기록 없음)';

  @override
  String get addressLookupTimedOut => '주소 조회 시간 초과';

  @override
  String get couldNotResolveAddress => '해당 주소를 확인할 수 없음';

  @override
  String get locationPermissionDenied => '위치 권한 거부됨';

  @override
  String get locationLookupTimedOut => '위치 조회 시간 초과';

  @override
  String get couldNotGetCurrentLocation => '현재 위치를 가져올 수 없음';

  @override
  String get contactsPermissionDenied => '연락처 권한 거부됨';

  @override
  String get couldNotAccessContacts => '연락처에 접근할 수 없음';

  @override
  String get contactImported => '연락처 가져오기 완료';

  @override
  String get required => '필수';

  @override
  String get resolving => '해석 중…';

  @override
  String get getCurrentLocation => '현재 위치 가져오기';

  @override
  String get importFromContacts => '연락처에서 가져오기';

  @override
  String get tapToPickDateTime => '날짜 및 시간 선택';

  @override
  String get formEmailAddress => '이메일 주소';

  @override
  String get formEmailHint => '예: user@example.com';

  @override
  String get formEmailRequired => '필수 — @ 포함 필수';

  @override
  String get formSubject => '제목';

  @override
  String get formBody => '본문';

  @override
  String get formPhoneNumber => '전화번호';

  @override
  String get formPhoneHint => '예: 010-1234-5678';

  @override
  String get formSmsHelper => '필수 — 메시지는 선택사항';

  @override
  String get formMessage => '메시지';

  @override
  String get formText => '텍스트';

  @override
  String get formTextHint => '텍스트 또는 메시지 입력';

  @override
  String get formUrl => 'URL';

  @override
  String get formUrlHint => 'example.com';

  @override
  String get formUrlHelper => '도메인 입력 — 필요 시 https:// 변경 가능';

  @override
  String get formFullName => '전체 이름';

  @override
  String get formVcardHelper => '필수 — 다른 모든 항목은 선택사항';

  @override
  String get formOrganization => '소속';

  @override
  String get formTitle => '직함';

  @override
  String get formNetworkName => '네트워크 이름 (SSID)';

  @override
  String get formWifiSsidHint => '예: MyHomeWiFi';

  @override
  String get formSsidAutoDetected => '현재 네트워크에서 SSID 자동 감지됨';

  @override
  String get formWifiPassword => '비밀번호';

  @override
  String get formWifiPasswordHelper => '오픈 네트워크는 비워두세요';

  @override
  String get formAddress => '주소';

  @override
  String get formAddressHint => '예: 에펠탑, 파리';

  @override
  String get formLatitude => '위도 (-90 ~ 90)';

  @override
  String get formLongitude => '경도 (-180 ~ 180)';

  @override
  String get formStartDate => '시작일 *';

  @override
  String get formEndDate => '종료일';

  @override
  String get formEventTitle => '이벤트 제목';

  @override
  String get formLocation => '위치';

  @override
  String get formLocationHint => '예: 123번지 또는 장소 이름';

  @override
  String get updateReadyMessage => '업데이트 설치 준비 완료';

  @override
  String get updateReadyAction => '다시 시작';
}
