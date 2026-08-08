// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Russian (`ru`).
class AppLocalizationsRu extends AppLocalizations {
  AppLocalizationsRu([String locale = 'ru']) : super(locale);

  @override
  String get appName => 'PlainQR';

  @override
  String get appNameFull => 'PlainQR — Сканирование и генерация';

  @override
  String get drawerScan => 'Сканирование';

  @override
  String get drawerScanFromGallery => 'Сканировать из галереи';

  @override
  String get drawerGenerator => 'Генератор';

  @override
  String get drawerHistory => 'История';

  @override
  String get drawerSettings => 'Настройки';

  @override
  String get scannerUnlockSnack => 'Генераторы разблокированы!';

  @override
  String get scannerUnlockAnnounce => 'Генераторы разблокированы';

  @override
  String scannerFreeTierBanner(Object price) {
    return 'Бесплатный тариф — $price за удаление';
  }

  @override
  String scannerDetectedAnnounce(Object type, Object brief) {
    return 'Обнаружен $type: $brief';
  }

  @override
  String get scannerSavedToHistory => 'Сохранено в историю';

  @override
  String get scannerTooltipDisableFlashlight => 'Выключить фонарик';

  @override
  String get scannerTooltipEnableFlashlight => 'Включить фонарик';

  @override
  String get scannerTooltipGallery => 'Сканировать из галереи';

  @override
  String get scannerZoomIn => 'Приблизить';

  @override
  String get scannerZoomOut => 'Отдалить';

  @override
  String scannerZoomLevel(Object level) {
    return '$level×';
  }

  @override
  String get generatorAppBarTitle => 'Генератор';

  @override
  String generatorFormAppBarTitle(Object typeName) {
    return '$typeName QR';
  }

  @override
  String get generatorCardLabel => 'Название карты (необязательно)';

  @override
  String get generatorCardLabelHint => 'Например, Гостевая WiFi, Мой сайт';

  @override
  String get generatorPreview => 'Предпросмотр';

  @override
  String get generatorStyle => 'Стиль:';

  @override
  String get generatorStyleLight => 'Светлый';

  @override
  String get generatorStyleDark => 'Тёмный';

  @override
  String get generatorStyleSticker => 'Наклейка';

  @override
  String get generatorShareCard => 'Поделиться картой';

  @override
  String get generatorSaveToDevice => 'Сохранить на устройство';

  @override
  String get generatorCopiedSnack => 'Содержимое QR скопировано';

  @override
  String get generatorCopyQrContent => 'Скопировать содержимое QR';

  @override
  String get typeUrl => 'URL';

  @override
  String get typeUrlDescription => 'Ссылка на веб-сайт или онлайн-контент';

  @override
  String get typeUrlHeadline => 'Отсканируйте для перехода';

  @override
  String get typePlainText => 'Простой текст';

  @override
  String get typePlainTextDescription => 'Свободный текст или сообщение';

  @override
  String get typePlainTextHeadline => 'Отсканируйте для чтения';

  @override
  String get typeWifi => 'WiFi';

  @override
  String get typeWifiDescription => 'Поделитесь данными вашей сети';

  @override
  String get typeWifiHeadline => 'Отсканируйте для подключения к WiFi';

  @override
  String get typeVcard => 'vCard';

  @override
  String get typeVcardDescription => 'Поделитесь контактными данными';

  @override
  String get typeVcardHeadline => 'Отсканируйте для сохранения контакта';

  @override
  String get typeCalendar => 'Календарь';

  @override
  String get typeCalendarDescription => 'Добавьте событие в любой календарь';

  @override
  String get typeCalendarHeadline => 'Отсканируйте для добавления в календарь';

  @override
  String get typePhone => 'Телефон';

  @override
  String get typePhoneDescription => 'Номер телефона для звонка';

  @override
  String get typePhoneHeadline => 'Отсканируйте для звонка';

  @override
  String get typeEmail => 'Электронная почта';

  @override
  String get typeEmailDescription => 'Создайте электронное письмо';

  @override
  String get typeEmailHeadline => 'Отсканируйте для отправки письма';

  @override
  String get typeSms => 'SMS';

  @override
  String get typeSmsDescription => 'Отправьте текстовое сообщение';

  @override
  String get typeSmsHeadline => 'Отсканируйте для отправки SMS';

  @override
  String get typeLocation => 'Местоположение';

  @override
  String get typeLocationDescription => 'Физический адрес или координаты';

  @override
  String get typeLocationHeadline => 'Отсканируйте для маршрута';

  @override
  String get historyAppBarTitle => 'История сканирования';

  @override
  String get historyClearAllTooltip => 'Очистить всё';

  @override
  String get historyEmpty => 'Пока нет сканирований';

  @override
  String get historyJustNow => 'Только что';

  @override
  String historyMinutesAgo(Object count) {
    return '$count мин. назад';
  }

  @override
  String historyHoursAgo(Object count) {
    return '$count ч. назад';
  }

  @override
  String historyDeletedSnack(Object label) {
    return 'Удалено $label';
  }

  @override
  String get historyUndoButton => 'Отменить';

  @override
  String get historyClearDialogTitle => 'Очистить историю сканирования?';

  @override
  String get historyClearDialogContent => 'Это действие нельзя отменить.';

  @override
  String get historyClearButton => 'Очистить';

  @override
  String get historySourceGallery => 'Галерея';

  @override
  String get historySourceCamera => 'Камера';

  @override
  String get galleryNoQrFound => 'QR-код не найден на изображении';

  @override
  String get galleryCropTitle => 'Обрежьте QR-код';

  @override
  String get galleryCropScan => 'Сканировать';

  @override
  String get ratePromptTitle => 'Нравится PlainQR?';

  @override
  String get ratePromptBody =>
      'Ваш отзыв помогает другим найти приватный QR-сканер.';

  @override
  String get ratePromptRate => 'Оценить';

  @override
  String get ratePromptFeedback => 'Отзыв';

  @override
  String get tilePromptTitle => 'Сканируйте отовсюду';

  @override
  String get tilePromptBody =>
      'Добавьте плитку PlainQR в Быстрые настройки.\nСмахните вниз, коснитесь, сканируйте — приложение открывать не нужно.';

  @override
  String get tilePromptAdd => 'Добавить плитку';

  @override
  String get settingsAppBarTitle => 'Настройки';

  @override
  String get settingsSectionScanning => 'Сканирование';

  @override
  String get settingsSaveHistory => 'Сохранять историю сканирования';

  @override
  String get settingsSaveHistoryOn =>
      'Сканирования камеры сохраняются автоматически';

  @override
  String get settingsSaveHistoryOff =>
      'Сохраняйте вручную из карточки результата';

  @override
  String get settingsAutoOpen => 'Автооткрытие опасных типов';

  @override
  String get settingsAutoOpenOn =>
      'Пропускать подтверждение для URL, звонков, SMS и писем';

  @override
  String get settingsAutoOpenOff =>
      'Спрашивать перед открытием URL, совершением звонков, отправкой SMS или созданием писем';

  @override
  String get settingsAutoFlashlight => 'Автофонарик при сканировании';

  @override
  String get settingsAutoFlashlightOn =>
      'Фонарик включается при открытии экрана сканирования';

  @override
  String get settingsAutoFlashlightOff => 'Фонарик управляется вручную';

  @override
  String get settingsEnableGenerators => 'Включить генераторы';

  @override
  String settingsEnableGeneratorsSubtitle(Object price) {
    return 'Разблокируйте генераторы WiFi, vCard и Календарь для $price';
  }

  @override
  String get settingsPremiumUnlocked => 'Премиум разблокирован';

  @override
  String get settingsPremiumUnlockedSubtitle =>
      'Все функции генератора включены';

  @override
  String get settingsSectionAppearance => 'Внешний вид';

  @override
  String get settingsThemeSystem => 'Системная';

  @override
  String get settingsThemeLight => 'Светлая';

  @override
  String get settingsThemeDark => 'Тёмная';

  @override
  String get settingsSectionLegal => 'Правовая информация';

  @override
  String get settingsOpenSourceLicences => 'Лицензии открытого ПО';

  @override
  String get changelog04Item1 =>
      '22 языка — PlainQR теперь говорит на вашем языке. Выберите его в настройках системы.';

  @override
  String get changelog04Item2 =>
      'Системная тема — светлая, тёмная или автоматическое следование за устройством.';

  @override
  String get changelog04Item3 =>
      'Оцените нас — нажмите на звезду в меню, чтобы оставить отзыв в Play Store.';

  @override
  String get changelog04Item4 => 'Что нового — вы это читаете.';

  @override
  String get changelog04Item5 =>
      'Посмотреть отзывы на GitHub — нажмите на отправку, чтобы увидеть статус проблемы.';

  @override
  String get unlockAppBarTitle => 'Включить генераторы';

  @override
  String get unlockTitle => 'Включите генераторы WiFi, контактов\nи календаря';

  @override
  String unlockDescription(Object price) {
    return 'Генерируйте QR-коды для WiFi сетей, визитных карт\nи событий календаря.\n$price единоразово. Без подписки.';
  }

  @override
  String unlockEnableButton(Object price) {
    return 'Включить — $price';
  }

  @override
  String get unlockRestoreButton => 'Восстановить предыдущую покупку';

  @override
  String get unlockDialogTitle => 'Разблокировать генераторы';

  @override
  String unlockDialogContent(Object price) {
    return 'Разблокируйте генераторы WiFi, vCard и Календарь, совершив единоразовую покупку $price. Остальные шесть типов генераторов всегда бесплатны.';
  }

  @override
  String get actionOpen => 'Открыть';

  @override
  String get actionCopy => 'Копировать';

  @override
  String get actionGenerate => 'Генерировать';

  @override
  String get actionShare => 'Поделиться';

  @override
  String get actionEmail => 'Письмо';

  @override
  String get actionCall => 'Позвонить';

  @override
  String get actionSendSms => 'Отправить SMS';

  @override
  String get actionConnect => 'Подключиться';

  @override
  String get actionCopySsid => 'Копировать SSID';

  @override
  String get actionCopyPassword => 'Копировать пароль';

  @override
  String get actionOpenMaps => 'Открыть карты';

  @override
  String get actionOpenInWhatsApp => 'Открыть в WhatsApp';

  @override
  String get actionOpenInTelegram => 'Открыть в Telegram';

  @override
  String get actionOpenInSignal => 'Открыть в Signal';

  @override
  String get actionOpenInTwitter => 'Открыть в Twitter';

  @override
  String get actionFaceTimeCall => 'Звонок FaceTime';

  @override
  String get actionOpenInSkype => 'Открыть в Skype';

  @override
  String get actionOpenInWallet => 'Открыть в кошельке';

  @override
  String get actionCopyAddress => 'Копировать адрес';

  @override
  String get actionOpenInPayPal => 'Открыть в PayPal';

  @override
  String get actionOpenStore => 'Открыть магазин';

  @override
  String get actionAddContact => 'Добавить контакт';

  @override
  String get actionAddToCalendar => 'Добавить в календарь';

  @override
  String get actionSave => 'Сохранить';

  @override
  String get actionCancel => 'Отмена';

  @override
  String showMoreRows(Object hiddenRows, Object rowWord) {
    return 'Показать ещё $hiddenRows $rowWord';
  }

  @override
  String showMoreFields(Object hiddenRows) {
    return 'Показать ещё $hiddenRows';
  }

  @override
  String get showLess => 'Показать меньше';

  @override
  String get fieldEvent => 'Событие';

  @override
  String get fieldStartTime => 'Время начала';

  @override
  String get fieldEndTime => 'Время окончания';

  @override
  String get fieldLocation => 'Местоположение';

  @override
  String get fieldDescription => 'Описание';

  @override
  String get fieldOrganizer => 'Организатор';

  @override
  String get fieldAttendee => 'Участник';

  @override
  String get fieldName => 'Имя';

  @override
  String get fieldPhone => 'Телефон';

  @override
  String get fieldEmail => 'Электронная почта';

  @override
  String get fieldOrganization => 'Организация';

  @override
  String get fieldTitle => 'Заголовок';

  @override
  String get fieldAddress => 'Адрес';

  @override
  String get fieldNotes => 'Заметки';

  @override
  String get fieldSsid => 'SSID';

  @override
  String get fieldPassword => 'Пароль';

  @override
  String get fieldEncryption => 'Шифрование';

  @override
  String get fieldUrl => 'URL';

  @override
  String get fieldNickname => 'Псевдоним';

  @override
  String get fieldRole => 'Роль';

  @override
  String get fieldBirthday => 'День рождения';

  @override
  String get row => 'строка';

  @override
  String get rows => 'строк';

  @override
  String get monthJan => 'Янв';

  @override
  String get monthFeb => 'Фев';

  @override
  String get monthMar => 'Мар';

  @override
  String get monthApr => 'Апр';

  @override
  String get monthMay => 'Май';

  @override
  String get monthJun => 'Июн';

  @override
  String get monthJul => 'Июл';

  @override
  String get monthAug => 'Авг';

  @override
  String get monthSep => 'Сен';

  @override
  String get monthOct => 'Окт';

  @override
  String get monthNov => 'Ноя';

  @override
  String get monthDec => 'Дек';

  @override
  String get cardCtaTitle => 'Открыть с помощью PlainQR';

  @override
  String get cardSavedToDownloads => 'Карта сохранена в загрузки';

  @override
  String get cardShareFailed => 'Не удалось поделиться картой';

  @override
  String get cardSaveFailed => 'Не удалось сохранить карту';

  @override
  String get shareSubjectQrCode => 'QR-код';

  @override
  String get copiedToClipboard => 'Скопировано в буфер обмена';

  @override
  String get sharing => 'Отправка…';

  @override
  String get openingLink => 'Открытие ссылки';

  @override
  String get invalidUrl => 'Неверный URL';

  @override
  String get couldNotOpenLink => 'Не удалось открыть эту ссылку';

  @override
  String get errorOpeningLink => 'Ошибка при открытии ссылки';

  @override
  String get wifiNoSsid => 'SSID не найден в этом QR-коде';

  @override
  String wifiConnected(Object ssid) {
    return 'Подключено к $ssid';
  }

  @override
  String wifiCouldNotConnect(Object ssid) {
    return 'Не удалось подключиться к $ssid';
  }

  @override
  String get wifiConnectionFailed => 'Ошибка подключения';

  @override
  String get contactOpenFailed => 'Не удалось открыть контакт';

  @override
  String get eventOpenFailed => 'Не удалось открыть событие';

  @override
  String get confirmOpenExternalTitle => 'Открыть внешний контент?';

  @override
  String confirmOpenExternalBody(Object url) {
    return 'Содержимое по ссылке ниже может быть небезопасным. Продолжайте только если вы доверяете источнику.\n\n$url\n\n— Чтобы пропускать этот диалог в будущем, включите «Автооткрытие опасных типов» в настройках.';
  }

  @override
  String get autoOpenDialogTitle => 'Автооткрытие опасных типов?';

  @override
  String get autoOpenDialogContent =>
      'При включённой настройке URL, телефонные звонки, SMS и письма из QR-кодов будут открываться немедленно без показа назначения. Это означает, что вредоносный QR-код может совершить звонок или перенаправить вас на опасный сайт без вашего ведома.\n\nВключайте это только если вы понимаете и принимаете этот риск.';

  @override
  String get autoOpenConfirmButton => 'Я понимаю';

  @override
  String purchaseButton(Object price) {
    return 'Купить за $price';
  }

  @override
  String get storeUnavailable =>
      'Google Play Store недоступен. Невозможно совершить покупку.';

  @override
  String get productLoadFailed => 'Не удалось загрузить продукт';

  @override
  String get purchaseFailed => 'Покупка не удалась';

  @override
  String get noErrorsLogged => '(ошибки не зарегистрированы)';

  @override
  String get addressLookupTimedOut => 'Время поиска адреса истекло';

  @override
  String get couldNotResolveAddress => 'Не удалось определить этот адрес';

  @override
  String get locationPermissionDenied => 'Доступ к местоположению запрещён';

  @override
  String get locationLookupTimedOut => 'Время поиска местоположения истекло';

  @override
  String get couldNotGetCurrentLocation =>
      'Не удалось получить текущее местоположение';

  @override
  String get contactsPermissionDenied => 'Доступ к контактам запрещён';

  @override
  String get couldNotAccessContacts => 'Не удалось получить доступ к контактам';

  @override
  String get contactImported => 'Контакт импортирован';

  @override
  String get required => 'Обязательно';

  @override
  String get resolving => 'Определение…';

  @override
  String get getCurrentLocation => 'Получить текущее местоположение';

  @override
  String get importFromContacts => 'Импорт из контактов';

  @override
  String get tapToPickDateTime => 'Нажмите, чтобы выбрать дату и время';

  @override
  String get formEmailAddress => 'Адрес электронной почты';

  @override
  String get formEmailHint => 'Например, user@example.com';

  @override
  String get formEmailRequired => 'Обязательно — должен содержать @';

  @override
  String get formSubject => 'Тема';

  @override
  String get formBody => 'Текст';

  @override
  String get formPhoneNumber => 'Номер телефона';

  @override
  String get formPhoneHint => 'Например, +7 999 123 4567';

  @override
  String get formSmsHelper => 'Обязательно — сообщение необязательно';

  @override
  String get formMessage => 'Сообщение';

  @override
  String get formText => 'Текст';

  @override
  String get formTextHint => 'Введите любой текст или сообщение';

  @override
  String get formUrl => 'URL';

  @override
  String get formUrlHint => 'example.com';

  @override
  String get formUrlHelper =>
      'Введите домен — при необходимости можно изменить https://';

  @override
  String get formFullName => 'Полное имя';

  @override
  String get formVcardHelper => 'Обязательно — остальные поля необязательны';

  @override
  String get formOrganization => 'Организация';

  @override
  String get formTitle => 'Заголовок';

  @override
  String get formNetworkName => 'Название сети (SSID)';

  @override
  String get formWifiSsidHint => 'Например, MyHomeWiFi';

  @override
  String get formSsidAutoDetected =>
      'SSID автоматически определён из вашей текущей сети';

  @override
  String get formWifiPassword => 'Пароль';

  @override
  String get formWifiPasswordHelper => 'Оставьте пустым для открытых сетей';

  @override
  String get formAddress => 'Адрес';

  @override
  String get formAddressHint => 'Например, Эйфелева башня, Париж';

  @override
  String get formLatitude => 'Широта (-90 до 90)';

  @override
  String get formLongitude => 'Долгота (-180 до 180)';

  @override
  String get formStartDate => 'Дата начала *';

  @override
  String get formEndDate => 'Дата окончания';

  @override
  String get formEventTitle => 'Название события';

  @override
  String get formLocation => 'Местоположение';

  @override
  String get formLocationHint =>
      'Например, ул. Примерная, 123 или название места';

  @override
  String get updateReadyMessage => 'Обновление готово к установке';

  @override
  String get updateReadyAction => 'Перезапустить';
}
