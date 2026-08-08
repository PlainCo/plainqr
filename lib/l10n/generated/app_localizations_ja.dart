// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Japanese (`ja`).
class AppLocalizationsJa extends AppLocalizations {
  AppLocalizationsJa([String locale = 'ja']) : super(locale);

  @override
  String get appName => 'PlainQR';

  @override
  String get appNameFull => 'PlainQR — スキャン & 作成';

  @override
  String get drawerScan => 'スキャン';

  @override
  String get drawerScanFromGallery => 'ギャラリーから読み取る';

  @override
  String get drawerGenerator => '作成';

  @override
  String get drawerHistory => '履歴';

  @override
  String get drawerSettings => '設定';

  @override
  String get scannerUnlockSnack => '作成機能が利用可能になりました！';

  @override
  String get scannerUnlockAnnounce => '作成機能が利用可能になりました';

  @override
  String scannerFreeTierBanner(Object price) {
    return '無料版 — $price で解除';
  }

  @override
  String scannerDetectedAnnounce(Object type, Object brief) {
    return '$type を検出: $brief';
  }

  @override
  String get scannerSavedToHistory => '履歴に保存しました';

  @override
  String get scannerTooltipDisableFlashlight => 'ライトをオフにする';

  @override
  String get scannerTooltipEnableFlashlight => 'ライトをオンにする';

  @override
  String get scannerTooltipGallery => 'ギャラリーから読み取る';

  @override
  String get scannerZoomIn => 'ズームイン';

  @override
  String get scannerZoomOut => 'ズームアウト';

  @override
  String scannerZoomLevel(Object level) {
    return '$level×';
  }

  @override
  String get generatorAppBarTitle => '作成';

  @override
  String generatorFormAppBarTitle(Object typeName) {
    return '$typeName QR';
  }

  @override
  String get generatorCardLabel => 'カードのラベル（任意）';

  @override
  String get generatorCardLabelHint => '例: ゲスト WiFi、自分のサイト';

  @override
  String get generatorPreview => 'プレビュー';

  @override
  String get generatorStyle => 'スタイル';

  @override
  String get generatorStyleLight => 'ライト';

  @override
  String get generatorStyleDark => 'ダーク';

  @override
  String get generatorStyleSticker => 'ステッカー';

  @override
  String get generatorShareCard => 'カードを共有';

  @override
  String get generatorSaveToDevice => '端末に保存';

  @override
  String get generatorCopiedSnack => 'QR内容をコピーしました';

  @override
  String get generatorCopyQrContent => 'QR内容をコピー';

  @override
  String get typeUrl => 'URL';

  @override
  String get typeUrlDescription => 'ウェブサイトやオンラインコンテンツへのリンク';

  @override
  String get typeUrlHeadline => 'スキャンして開く';

  @override
  String get typePlainText => 'プレーンテキスト';

  @override
  String get typePlainTextDescription => 'テキストやメッセージ';

  @override
  String get typePlainTextHeadline => 'スキャンして読む';

  @override
  String get typeWifi => 'WiFi';

  @override
  String get typeWifiDescription => 'ネットワーク認証情報を共有';

  @override
  String get typeWifiHeadline => 'スキャンしてWiFiに接続';

  @override
  String get typeVcard => 'vCard';

  @override
  String get typeVcardDescription => '連絡先情報を共有';

  @override
  String get typeVcardHeadline => 'スキャンして連絡先を保存';

  @override
  String get typeCalendar => 'カレンダー';

  @override
  String get typeCalendarDescription => 'カレンダーにイベントを追加';

  @override
  String get typeCalendarHeadline => 'スキャンしてカレンダーに追加';

  @override
  String get typePhone => '電話';

  @override
  String get typePhoneDescription => '電話番号';

  @override
  String get typePhoneHeadline => 'スキャンして電話する';

  @override
  String get typeEmail => 'メール';

  @override
  String get typeEmailDescription => 'メールを書く';

  @override
  String get typeEmailHeadline => 'スキャンしてメールする';

  @override
  String get typeSms => 'SMS';

  @override
  String get typeSmsDescription => 'テキストメッセージを送信';

  @override
  String get typeSmsHeadline => 'スキャンしてメッセージ送信';

  @override
  String get typeLocation => '場所';

  @override
  String get typeLocationDescription => '住所や座標';

  @override
  String get typeLocationHeadline => 'スキャンして地図で見る';

  @override
  String get historyAppBarTitle => 'スキャン履歴';

  @override
  String get historyClearAllTooltip => 'すべて削除';

  @override
  String get historyEmpty => 'まだスキャン履歴がありません';

  @override
  String get historyJustNow => 'たった今';

  @override
  String historyMinutesAgo(Object count) {
    return '$count分前';
  }

  @override
  String historyHoursAgo(Object count) {
    return '$count時間前';
  }

  @override
  String historyDeletedSnack(Object label) {
    return '$label を削除しました';
  }

  @override
  String get historyUndoButton => '元に戻す';

  @override
  String get historyClearDialogTitle => 'スキャン履歴を削除しますか？';

  @override
  String get historyClearDialogContent => 'この操作は取り消せません。';

  @override
  String get historyClearButton => '削除';

  @override
  String get historySourceGallery => 'ギャラリー';

  @override
  String get historySourceCamera => 'カメラ';

  @override
  String get galleryNoQrFound => '画像にQRコードが見つかりません';

  @override
  String get galleryCropTitle => 'QRコードを枠に入れる';

  @override
  String get galleryCropScan => 'スキャン';

  @override
  String get ratePromptTitle => 'PlainQRを楽しんでいますか？';

  @override
  String get ratePromptBody => 'あなたのレビューが他の人のプライベートQRスキャナー探しを助けます。';

  @override
  String get ratePromptRate => '評価する';

  @override
  String get ratePromptFeedback => 'フィードバック';

  @override
  String get tilePromptTitle => 'どこからでもスキャン';

  @override
  String get tilePromptBody =>
      'クイック設定にPlainQRタイルを追加。\n下にスワイプ、タップ、スキャン — アプリを開く必要なし。';

  @override
  String get tilePromptAdd => 'タイルを追加';

  @override
  String get settingsAppBarTitle => '設定';

  @override
  String get settingsSectionScanning => 'スキャン';

  @override
  String get settingsSaveHistory => 'スキャン履歴を保存';

  @override
  String get settingsSaveHistoryOn => 'カメラスキャンを自動保存';

  @override
  String get settingsSaveHistoryOff => '結果カードから手動で保存';

  @override
  String get settingsAutoOpen => '危険な種類を自動で開く';

  @override
  String get settingsAutoOpenOn => 'URL、電話、SMS、メールの確認をスキップ';

  @override
  String get settingsAutoOpenOff => 'URL、電話、SMS、メールを開く前に確認';

  @override
  String get settingsAutoFlashlight => 'スキャン時にライトを自動点灯';

  @override
  String get settingsAutoFlashlightOn => 'スキャン画面でライトが自動でオン';

  @override
  String get settingsAutoFlashlightOff => 'ライトを手動で操作';

  @override
  String get settingsEnableGenerators => '作成機能を有効にする';

  @override
  String settingsEnableGeneratorsSubtitle(Object price) {
    return '$price の WiFi、vCard、および カレンダー ジェネレーターのロックを解除します';
  }

  @override
  String get settingsPremiumUnlocked => 'プレミアム機能 有効';

  @override
  String get settingsPremiumUnlockedSubtitle => 'すべての作成機能が利用可能です';

  @override
  String get settingsSectionAppearance => '外観';

  @override
  String get settingsThemeSystem => 'システム';

  @override
  String get settingsThemeLight => 'ライト';

  @override
  String get settingsThemeDark => 'ダーク';

  @override
  String get settingsSectionLegal => '法的情報';

  @override
  String get settingsOpenSourceLicences => 'オープンソースライセンス';

  @override
  String get changelog04Item1 => '22言語 — PlainQRは今、あなたの言語を話します。システム設定で選んでください。';

  @override
  String get changelog04Item2 => 'システムテーマ — ライト、ダーク、またはデバイスに自動的に従います。';

  @override
  String get changelog04Item3 => '評価する — Play Storeでレビューを残すにはメニューの星をタップしてください。';

  @override
  String get changelog04Item4 => '新機能 — 今読んでいるものです。';

  @override
  String get changelog04Item5 =>
      'GitHubでフィードバックを見る — issueのステータスを確認するには提出物をタップしてください。';

  @override
  String get unlockAppBarTitle => '作成機能を有効にする';

  @override
  String get unlockTitle => 'WiFi、連絡先\n& カレンダーの作成を有効に';

  @override
  String unlockDescription(Object price) {
    return 'WiFiネットワーク、連絡先カード、\nカレンダーイベントのQRコードを作成。\n$price で永久利用。サブスクリプションなし。';
  }

  @override
  String unlockEnableButton(Object price) {
    return '有効にする — $price';
  }

  @override
  String get unlockRestoreButton => '以前の購入を復元';

  @override
  String get unlockDialogTitle => '作成機能を解除';

  @override
  String unlockDialogContent(Object price) {
    return '$price を 1 回購入すると、WiFi、vCard、カレンダー ジェネレーターのロックが解除されます。他の 6 種類のジェネレーターは常に無料です。';
  }

  @override
  String get actionOpen => '開く';

  @override
  String get actionCopy => 'コピー';

  @override
  String get actionGenerate => '作成';

  @override
  String get actionShare => '共有';

  @override
  String get actionEmail => 'メール';

  @override
  String get actionCall => '電話';

  @override
  String get actionSendSms => 'SMS送信';

  @override
  String get actionConnect => '接続';

  @override
  String get actionCopySsid => 'SSIDをコピー';

  @override
  String get actionCopyPassword => 'パスワードをコピー';

  @override
  String get actionOpenMaps => 'マップで開く';

  @override
  String get actionOpenInWhatsApp => 'WhatsAppで開く';

  @override
  String get actionOpenInTelegram => 'Telegramで開く';

  @override
  String get actionOpenInSignal => 'Signalで開く';

  @override
  String get actionOpenInTwitter => 'Twitterで開く';

  @override
  String get actionFaceTimeCall => 'FaceTime通話';

  @override
  String get actionOpenInSkype => 'Skypeで開く';

  @override
  String get actionOpenInWallet => 'Walletで開く';

  @override
  String get actionCopyAddress => '住所をコピー';

  @override
  String get actionOpenInPayPal => 'PayPalで開く';

  @override
  String get actionOpenStore => 'ストアを開く';

  @override
  String get actionAddContact => '連絡先に追加';

  @override
  String get actionAddToCalendar => 'カレンダーに追加';

  @override
  String get actionSave => '保存';

  @override
  String get actionCancel => 'キャンセル';

  @override
  String showMoreRows(Object hiddenRows, Object rowWord) {
    return '他 $hiddenRows 件の$rowWordを表示';
  }

  @override
  String showMoreFields(Object hiddenRows) {
    return '他 $hiddenRows 件を表示';
  }

  @override
  String get showLess => '閉じる';

  @override
  String get fieldEvent => 'イベント';

  @override
  String get fieldStartTime => '開始時刻';

  @override
  String get fieldEndTime => '終了時刻';

  @override
  String get fieldLocation => '場所';

  @override
  String get fieldDescription => '説明';

  @override
  String get fieldOrganizer => '主催者';

  @override
  String get fieldAttendee => '出席者';

  @override
  String get fieldName => '名前';

  @override
  String get fieldPhone => '電話番号';

  @override
  String get fieldEmail => 'メール';

  @override
  String get fieldOrganization => '組織';

  @override
  String get fieldTitle => 'タイトル';

  @override
  String get fieldAddress => '住所';

  @override
  String get fieldNotes => 'メモ';

  @override
  String get fieldSsid => 'SSID';

  @override
  String get fieldPassword => 'パスワード';

  @override
  String get fieldEncryption => '暗号化';

  @override
  String get fieldUrl => 'URL';

  @override
  String get fieldNickname => 'ニックネーム';

  @override
  String get fieldRole => '役職';

  @override
  String get fieldBirthday => '生年月日';

  @override
  String get row => '行';

  @override
  String get rows => '行';

  @override
  String get monthJan => '1月';

  @override
  String get monthFeb => '2月';

  @override
  String get monthMar => '3月';

  @override
  String get monthApr => '4月';

  @override
  String get monthMay => '5月';

  @override
  String get monthJun => '6月';

  @override
  String get monthJul => '7月';

  @override
  String get monthAug => '8月';

  @override
  String get monthSep => '9月';

  @override
  String get monthOct => '10月';

  @override
  String get monthNov => '11月';

  @override
  String get monthDec => '12月';

  @override
  String get cardCtaTitle => 'PlainQR で開く';

  @override
  String get cardSavedToDownloads => 'カードを「ダウンロード」に保存しました';

  @override
  String get cardShareFailed => 'カードを共有できませんでした';

  @override
  String get cardSaveFailed => 'カードを保存できませんでした';

  @override
  String get shareSubjectQrCode => 'QRコード';

  @override
  String get copiedToClipboard => 'クリップボードにコピーしました';

  @override
  String get sharing => '共有中…';

  @override
  String get openingLink => 'リンクを開いています';

  @override
  String get invalidUrl => '無効なURLです';

  @override
  String get couldNotOpenLink => 'このリンクを開けませんでした';

  @override
  String get errorOpeningLink => 'リンクの開く際にエラーが発生しました';

  @override
  String get wifiNoSsid => 'このQRコードにSSIDが含まれていません';

  @override
  String wifiConnected(Object ssid) {
    return '$ssid に接続しました';
  }

  @override
  String wifiCouldNotConnect(Object ssid) {
    return '$ssid に接続できませんでした';
  }

  @override
  String get wifiConnectionFailed => '接続に失敗しました';

  @override
  String get contactOpenFailed => '連絡先を開けませんでした';

  @override
  String get eventOpenFailed => 'イベントを開けませんでした';

  @override
  String get confirmOpenExternalTitle => '外部コンテンツを開きますか？';

  @override
  String confirmOpenExternalBody(Object url) {
    return '以下のリンク先のコンテンツが安全でない場合があります。信頼できるソースのみ proceeding してください。\n\n$url\n\n— このダイアログを今後表示しない場合は、設定で「危険な種類を自動で開く」を有効にしてください。';
  }

  @override
  String get autoOpenDialogTitle => '危険な種類を自動で開きますか？';

  @override
  String get autoOpenDialogContent =>
      'この設定をONにすると、QRコードから読み取ったURL、電話、SMS、メールが確認なしに直接開きます。悪意のあるQRコードが電話をかけたり、有害なサイトに誘導したりする可能性があります。\n\nこのリスクを理解し、受け入れる場合のみ有効にしてください。';

  @override
  String get autoOpenConfirmButton => '了解しました';

  @override
  String purchaseButton(Object price) {
    return '$price で購入';
  }

  @override
  String get storeUnavailable => 'Google Play Store が利用できません。購入できません。';

  @override
  String get productLoadFailed => '商品情報の読み込みに失敗しました';

  @override
  String get purchaseFailed => '購入に失敗しました';

  @override
  String get noErrorsLogged => '（エラーは記録されていません）';

  @override
  String get addressLookupTimedOut => '住所の検索がタイムアウトしました';

  @override
  String get couldNotResolveAddress => '住所を特定できませんでした';

  @override
  String get locationPermissionDenied => '位置情報の権限が拒否されました';

  @override
  String get locationLookupTimedOut => '位置情報の検索がタイムアウトしました';

  @override
  String get couldNotGetCurrentLocation => '現在地を取得できませんでした';

  @override
  String get contactsPermissionDenied => '連絡先の権限が拒否されました';

  @override
  String get couldNotAccessContacts => '連絡先にアクセスできませんでした';

  @override
  String get contactImported => '連絡先をインポートしました';

  @override
  String get required => '必須';

  @override
  String get resolving => '検索中…';

  @override
  String get getCurrentLocation => '現在地を取得';

  @override
  String get importFromContacts => '連絡先からインポート';

  @override
  String get tapToPickDateTime => 'タップして日付と時刻を選択';

  @override
  String get formEmailAddress => 'メールアドレス';

  @override
  String get formEmailHint => '例: user@example.com';

  @override
  String get formEmailRequired => '必須 — @ を含む必要があります';

  @override
  String get formSubject => '件名';

  @override
  String get formBody => '本文';

  @override
  String get formPhoneNumber => '電話番号';

  @override
  String get formPhoneHint => '例: 090-1234-5678';

  @override
  String get formSmsHelper => '必須 — メッセージは任意';

  @override
  String get formMessage => 'メッセージ';

  @override
  String get formText => 'テキスト';

  @override
  String get formTextHint => 'テキストやメッセージを入力';

  @override
  String get formUrl => 'URL';

  @override
  String get formUrlHint => 'example.com';

  @override
  String get formUrlHelper => 'ドメインを入力 — https:// は必要に応じて変更可能';

  @override
  String get formFullName => '氏名';

  @override
  String get formVcardHelper => '必須 — 他の項目はすべて任意';

  @override
  String get formOrganization => '組織';

  @override
  String get formTitle => 'タイトル';

  @override
  String get formNetworkName => 'ネットワーク名（SSID）';

  @override
  String get formWifiSsidHint => '例: MyHomeWiFi';

  @override
  String get formSsidAutoDetected => '現在のネットワークからSSIDを自動検出しました';

  @override
  String get formWifiPassword => 'パスワード';

  @override
  String get formWifiPasswordHelper => 'オープンネットワークの場合は空欄にしてください';

  @override
  String get formAddress => '住所';

  @override
  String get formAddressHint => '例: 東京スカイツリー、渋谷駅';

  @override
  String get formLatitude => '緯度（-90 〜 90）';

  @override
  String get formLongitude => '経度（-180 〜 180）';

  @override
  String get formStartDate => '開始日 *';

  @override
  String get formEndDate => '終了日';

  @override
  String get formEventTitle => 'イベントタイトル';

  @override
  String get formLocation => '場所';

  @override
  String get formLocationHint => '例: 東京ドーム、会場名';

  @override
  String get updateReadyMessage => 'アップデートをインストールできます';

  @override
  String get updateReadyAction => '再起動';
}
