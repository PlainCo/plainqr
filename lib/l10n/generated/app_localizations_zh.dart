// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Chinese (`zh`).
class AppLocalizationsZh extends AppLocalizations {
  AppLocalizationsZh([String locale = 'zh']) : super(locale);

  @override
  String get appName => 'PlainQR';

  @override
  String get appNameFull => 'PlainQR — 扫码与生成';

  @override
  String get drawerScan => '扫码';

  @override
  String get drawerScanFromGallery => '从相册扫码';

  @override
  String get drawerGenerator => '生成器';

  @override
  String get drawerHistory => '历史记录';

  @override
  String get drawerSettings => '设置';

  @override
  String get scannerUnlockSnack => '生成器已解锁！';

  @override
  String get scannerUnlockAnnounce => '生成器已解锁';

  @override
  String scannerFreeTierBanner(Object price) {
    return '免费版 — $price 移除此限制';
  }

  @override
  String scannerDetectedAnnounce(Object type, Object brief) {
    return '检测到 $type：$brief';
  }

  @override
  String get scannerSavedToHistory => '已保存到历史记录';

  @override
  String get scannerTooltipDisableFlashlight => '关闭手电筒';

  @override
  String get scannerTooltipEnableFlashlight => '打开手电筒';

  @override
  String get scannerTooltipGallery => '从相册扫码';

  @override
  String get scannerZoomIn => '放大';

  @override
  String get scannerZoomOut => '缩小';

  @override
  String scannerZoomLevel(Object level) {
    return '$level×';
  }

  @override
  String get generatorAppBarTitle => '生成器';

  @override
  String generatorFormAppBarTitle(Object typeName) {
    return '$typeName QR';
  }

  @override
  String get generatorCardLabel => '卡片标签（可选）';

  @override
  String get generatorCardLabelHint => '例如：访客 WiFi、我的网站';

  @override
  String get generatorPreview => '预览';

  @override
  String get generatorStyle => '样式：';

  @override
  String get generatorStyleLight => '浅色';

  @override
  String get generatorStyleDark => '深色';

  @override
  String get generatorStyleSticker => '贴纸';

  @override
  String get generatorShareCard => '分享卡片';

  @override
  String get generatorSaveToDevice => '保存到设备';

  @override
  String get generatorCopiedSnack => '已复制 QR 内容';

  @override
  String get generatorCopyQrContent => '复制 QR 内容';

  @override
  String get typeUrl => 'URL';

  @override
  String get typeUrlDescription => '链接到网站或在线内容';

  @override
  String get typeUrlHeadline => '扫码访问';

  @override
  String get typePlainText => '纯文本';

  @override
  String get typePlainTextDescription => '自由格式的文本或消息';

  @override
  String get typePlainTextHeadline => '扫码阅读';

  @override
  String get typeWifi => 'WiFi';

  @override
  String get typeWifiDescription => '分享网络连接信息';

  @override
  String get typeWifiHeadline => '扫码加入 WiFi';

  @override
  String get typeVcard => 'vCard';

  @override
  String get typeVcardDescription => '分享联系人信息';

  @override
  String get typeVcardHeadline => '扫码保存联系人';

  @override
  String get typeCalendar => '日历';

  @override
  String get typeCalendarDescription => '添加事件到任意日历';

  @override
  String get typeCalendarHeadline => '扫码添加到日历';

  @override
  String get typePhone => '电话';

  @override
  String get typePhoneDescription => '拨打电话号码';

  @override
  String get typePhoneHeadline => '扫码拨打电话';

  @override
  String get typeEmail => '电子邮件';

  @override
  String get typeEmailDescription => '撰写电子邮件';

  @override
  String get typeEmailHeadline => '扫码发送邮件';

  @override
  String get typeSms => '短信';

  @override
  String get typeSmsDescription => '发送短信';

  @override
  String get typeSmsHeadline => '扫码发送短信';

  @override
  String get typeLocation => '位置';

  @override
  String get typeLocationDescription => '物理地址或坐标';

  @override
  String get typeLocationHeadline => '扫码获取导航';

  @override
  String get historyAppBarTitle => '扫码历史';

  @override
  String get historyClearAllTooltip => '清除全部';

  @override
  String get historyEmpty => '暂无扫码记录';

  @override
  String get historyJustNow => '刚刚';

  @override
  String historyMinutesAgo(Object count) {
    return '$count分钟前';
  }

  @override
  String historyHoursAgo(Object count) {
    return '$count小时前';
  }

  @override
  String historyDeletedSnack(Object label) {
    return '已删除 $label';
  }

  @override
  String get historyUndoButton => '撤销';

  @override
  String get historyClearDialogTitle => '清除扫码历史？';

  @override
  String get historyClearDialogContent => '此操作无法撤销。';

  @override
  String get historyClearButton => '清除';

  @override
  String get historySourceGallery => '相册';

  @override
  String get historySourceCamera => '相机';

  @override
  String get galleryNoQrFound => '图片中未找到二维码';

  @override
  String get galleryCropTitle => '框选二维码';

  @override
  String get galleryCropScan => '扫描';

  @override
  String get ratePromptTitle => '喜欢 PlainQR 吗？';

  @override
  String get ratePromptBody => '您的评价帮助他人找到私密的二维码扫描器。';

  @override
  String get ratePromptRate => '评分';

  @override
  String get ratePromptFeedback => '反馈';

  @override
  String get tilePromptTitle => '随时随地扫描';

  @override
  String get tilePromptBody => '将 PlainQR 磁贴添加到快速设置。\n向下滑动，点击，扫描 — 无需打开应用。';

  @override
  String get tilePromptAdd => '添加磁贴';

  @override
  String get settingsAppBarTitle => '设置';

  @override
  String get settingsSectionScanning => '扫码';

  @override
  String get settingsSaveHistory => '保存扫码历史';

  @override
  String get settingsSaveHistoryOn => '相机扫码自动保存';

  @override
  String get settingsSaveHistoryOff => '从结果卡片手动保存';

  @override
  String get settingsAutoOpen => '自动打开危险类型';

  @override
  String get settingsAutoOpenOn => '跳过 URL、电话、短信和邮件的确认提示';

  @override
  String get settingsAutoOpenOff => '打开 URL、拨打电话、发送短信或撰写邮件前先确认';

  @override
  String get settingsAutoFlashlight => '扫码时自动开启手电筒';

  @override
  String get settingsAutoFlashlightOn => '打开扫码界面时自动开启手电筒';

  @override
  String get settingsAutoFlashlightOff => '手动控制手电筒';

  @override
  String get settingsEnableGenerators => '启用生成器';

  @override
  String settingsEnableGeneratorsSubtitle(Object price) {
    return '解锁$price的WiFi、vCard和日历生成器';
  }

  @override
  String get settingsPremiumUnlocked => '高级版已解锁';

  @override
  String get settingsPremiumUnlockedSubtitle => '所有生成器功能均已启用';

  @override
  String get settingsSectionAppearance => '外观';

  @override
  String get settingsThemeSystem => '系统';

  @override
  String get settingsThemeLight => '浅色';

  @override
  String get settingsThemeDark => '深色';

  @override
  String get settingsSectionLegal => '法律信息';

  @override
  String get settingsOpenSourceLicences => '开源许可证';

  @override
  String get changelog04Item1 => '22种语言 — PlainQR 现在支持您的语言。在系统设置中选择。';

  @override
  String get changelog04Item2 => '系统主题 — 浅色、深色，或自动跟随您的设备。';

  @override
  String get changelog04Item3 => '为我们评分 — 在菜单中点击星标，在 Play Store 上留下评论。';

  @override
  String get changelog04Item4 => '更新内容 — 您正在阅读。';

  @override
  String get changelog04Item5 => '在 GitHub 上查看反馈 — 点击任何提交查看 issue 状态。';

  @override
  String get unlockAppBarTitle => '启用生成器';

  @override
  String get unlockTitle => '启用 WiFi、联系人\n及日历生成器';

  @override
  String unlockDescription(Object price) {
    return '为 WiFi 网络、联系人名片\n和日历事件生成 QR 码。\n一次性支付 $price，无需订阅。';
  }

  @override
  String unlockEnableButton(Object price) {
    return '启用 — $price';
  }

  @override
  String get unlockRestoreButton => '恢复之前的购买';

  @override
  String get unlockDialogTitle => '解锁生成器';

  @override
  String unlockDialogContent(Object price) {
    return '一次性购买 $price 即可解锁 WiFi、vCard 和 日历 生成器。其他六种发电机类型始终免费。';
  }

  @override
  String get actionOpen => '打开';

  @override
  String get actionCopy => '复制';

  @override
  String get actionGenerate => '生成';

  @override
  String get actionShare => '分享';

  @override
  String get actionEmail => '发送邮件';

  @override
  String get actionCall => '拨打电话';

  @override
  String get actionSendSms => '发送短信';

  @override
  String get actionConnect => '连接';

  @override
  String get actionCopySsid => '复制 SSID';

  @override
  String get actionCopyPassword => '复制密码';

  @override
  String get actionOpenMaps => '打开地图';

  @override
  String get actionOpenInWhatsApp => '在 WhatsApp 中打开';

  @override
  String get actionOpenInTelegram => '在 Telegram 中打开';

  @override
  String get actionOpenInSignal => '在 Signal 中打开';

  @override
  String get actionOpenInTwitter => '在 Twitter 中打开';

  @override
  String get actionFaceTimeCall => 'FaceTime 通话';

  @override
  String get actionOpenInSkype => '在 Skype 中打开';

  @override
  String get actionOpenInWallet => '在钱包中打开';

  @override
  String get actionCopyAddress => '复制地址';

  @override
  String get actionOpenInPayPal => '在 PayPal 中打开';

  @override
  String get actionOpenStore => '打开商店';

  @override
  String get actionAddContact => '添加联系人';

  @override
  String get actionAddToCalendar => '添加到日历';

  @override
  String get actionSave => '保存';

  @override
  String get actionCancel => '取消';

  @override
  String showMoreRows(Object hiddenRows, Object rowWord) {
    return '显示更多 $hiddenRows 个$rowWord';
  }

  @override
  String showMoreFields(Object hiddenRows) {
    return '显示更多 $hiddenRows 项';
  }

  @override
  String get showLess => '收起';

  @override
  String get fieldEvent => '事件';

  @override
  String get fieldStartTime => '开始时间';

  @override
  String get fieldEndTime => '结束时间';

  @override
  String get fieldLocation => '位置';

  @override
  String get fieldDescription => '描述';

  @override
  String get fieldOrganizer => '组织者';

  @override
  String get fieldAttendee => '参与者';

  @override
  String get fieldName => '姓名';

  @override
  String get fieldPhone => '电话';

  @override
  String get fieldEmail => '电子邮件';

  @override
  String get fieldOrganization => '组织';

  @override
  String get fieldTitle => '头衔';

  @override
  String get fieldAddress => '地址';

  @override
  String get fieldNotes => '备注';

  @override
  String get fieldSsid => 'SSID';

  @override
  String get fieldPassword => '密码';

  @override
  String get fieldEncryption => '加密方式';

  @override
  String get fieldUrl => 'URL';

  @override
  String get fieldNickname => '昵称';

  @override
  String get fieldRole => '角色';

  @override
  String get fieldBirthday => '生日';

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
  String get cardCtaTitle => '使用 PlainQR 打开';

  @override
  String get cardSavedToDownloads => '卡片已保存到下载目录';

  @override
  String get cardShareFailed => '无法分享卡片';

  @override
  String get cardSaveFailed => '无法保存卡片';

  @override
  String get shareSubjectQrCode => 'QR 码';

  @override
  String get copiedToClipboard => '已复制到剪贴板';

  @override
  String get sharing => '分享中…';

  @override
  String get openingLink => '正在打开链接';

  @override
  String get invalidUrl => '无效的 URL';

  @override
  String get couldNotOpenLink => '无法打开此链接';

  @override
  String get errorOpeningLink => '打开链接时出错';

  @override
  String get wifiNoSsid => '此 QR 码中未找到 SSID';

  @override
  String wifiConnected(Object ssid) {
    return '已连接到 $ssid';
  }

  @override
  String wifiCouldNotConnect(Object ssid) {
    return '无法连接到 $ssid';
  }

  @override
  String get wifiConnectionFailed => '连接失败';

  @override
  String get contactOpenFailed => '无法打开联系人';

  @override
  String get eventOpenFailed => '无法打开事件';

  @override
  String get confirmOpenExternalTitle => '打开外部内容？';

  @override
  String confirmOpenExternalBody(Object url) {
    return '以下链接的内容可能不安全。请仅在信任来源的情况下继续。\n\n$url\n\n— 如需跳过此提示，请在设置中启用「自动打开危险类型」。';
  }

  @override
  String get autoOpenDialogTitle => '自动打开危险类型？';

  @override
  String get autoOpenDialogContent =>
      '开启此设置后，QR 码中的 URL、电话、短信和邮件将直接打开，不会先向您确认目标。这意味着恶意 QR 码可能在您不知情的情况下拨打电话或引导您访问有害网站。\n\n仅在您了解并接受此风险时启用。';

  @override
  String get autoOpenConfirmButton => '我了解';

  @override
  String purchaseButton(Object price) {
    return '购买 $price';
  }

  @override
  String get storeUnavailable => 'Google Play 商店不可用，无法进行购买。';

  @override
  String get productLoadFailed => '加载商品失败';

  @override
  String get purchaseFailed => '购买失败';

  @override
  String get noErrorsLogged => '（无错误日志）';

  @override
  String get addressLookupTimedOut => '地址查询超时';

  @override
  String get couldNotResolveAddress => '无法解析该地址';

  @override
  String get locationPermissionDenied => '位置权限被拒绝';

  @override
  String get locationLookupTimedOut => '位置查询超时';

  @override
  String get couldNotGetCurrentLocation => '无法获取当前位置';

  @override
  String get contactsPermissionDenied => '通讯录权限被拒绝';

  @override
  String get couldNotAccessContacts => '无法访问通讯录';

  @override
  String get contactImported => '联系人已导入';

  @override
  String get required => '必填';

  @override
  String get resolving => '解析中…';

  @override
  String get getCurrentLocation => '获取当前位置';

  @override
  String get importFromContacts => '从通讯录导入';

  @override
  String get tapToPickDateTime => '点击选择日期和时间';

  @override
  String get formEmailAddress => '电子邮件地址';

  @override
  String get formEmailHint => '例如 user@example.com';

  @override
  String get formEmailRequired => '必填 — 必须包含 @';

  @override
  String get formSubject => '主题';

  @override
  String get formBody => '正文';

  @override
  String get formPhoneNumber => '电话号码';

  @override
  String get formPhoneHint => '例如 +86 138 1234 5678';

  @override
  String get formSmsHelper => '必填 — 消息为可选';

  @override
  String get formMessage => '消息';

  @override
  String get formText => '文本';

  @override
  String get formTextHint => '输入任意文本或消息';

  @override
  String get formUrl => 'URL';

  @override
  String get formUrlHint => 'example.com';

  @override
  String get formUrlHelper => '输入域名 — 如需要可修改 https://';

  @override
  String get formFullName => '全名';

  @override
  String get formVcardHelper => '必填 — 其他字段均为可选';

  @override
  String get formOrganization => '组织';

  @override
  String get formTitle => '头衔';

  @override
  String get formNetworkName => '网络名称 (SSID)';

  @override
  String get formWifiSsidHint => '例如 MyHomeWiFi';

  @override
  String get formSsidAutoDetected => 'SSID 已从当前网络自动检测';

  @override
  String get formWifiPassword => '密码';

  @override
  String get formWifiPasswordHelper => '开放网络请留空';

  @override
  String get formAddress => '地址';

  @override
  String get formAddressHint => '例如：埃菲尔铁塔，巴黎';

  @override
  String get formLatitude => '纬度 (-90 到 90)';

  @override
  String get formLongitude => '经度 (-180 到 180)';

  @override
  String get formStartDate => '开始日期 *';

  @override
  String get formEndDate => '结束日期';

  @override
  String get formEventTitle => '事件标题';

  @override
  String get formLocation => '位置';

  @override
  String get formLocationHint => '例如：某路某号或地点名称';

  @override
  String get updateReadyMessage => '更新已准备好安装';

  @override
  String get updateReadyAction => '重启';
}
