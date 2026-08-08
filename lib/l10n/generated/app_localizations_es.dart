// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Spanish Castilian (`es`).
class AppLocalizationsEs extends AppLocalizations {
  AppLocalizationsEs([String locale = 'es']) : super(locale);

  @override
  String get appName => 'PlainQR';

  @override
  String get appNameFull => 'PlainQR — Escanear y Generar';

  @override
  String get drawerScan => 'Escanear';

  @override
  String get drawerScanFromGallery => 'Escanear desde Galería';

  @override
  String get drawerGenerator => 'Generador';

  @override
  String get drawerHistory => 'Historial';

  @override
  String get drawerSettings => 'Ajustes';

  @override
  String get scannerUnlockSnack => '¡Generadores desbloqueados!';

  @override
  String get scannerUnlockAnnounce => 'Generadores desbloqueados';

  @override
  String scannerFreeTierBanner(Object price) {
    return 'Gratis — $price para quitar el anuncio';
  }

  @override
  String scannerDetectedAnnounce(Object type, Object brief) {
    return 'Detectado $type: $brief';
  }

  @override
  String get scannerSavedToHistory => 'Guardado en el historial';

  @override
  String get scannerTooltipDisableFlashlight => 'Desactivar linterna';

  @override
  String get scannerTooltipEnableFlashlight => 'Activar linterna';

  @override
  String get scannerTooltipGallery => 'Escanear desde galería';

  @override
  String get scannerZoomIn => 'Ampliar';

  @override
  String get scannerZoomOut => 'Reducir';

  @override
  String scannerZoomLevel(Object level) {
    return '$level×';
  }

  @override
  String get generatorAppBarTitle => 'Generador';

  @override
  String generatorFormAppBarTitle(Object typeName) {
    return 'QR de $typeName';
  }

  @override
  String get generatorCardLabel => 'Etiqueta de tarjeta (opcional)';

  @override
  String get generatorCardLabelHint => 'ej. WiFi de invitados, Mi sitio web';

  @override
  String get generatorPreview => 'Vista previa';

  @override
  String get generatorStyle => 'Estilo:';

  @override
  String get generatorStyleLight => 'Claro';

  @override
  String get generatorStyleDark => 'Oscuro';

  @override
  String get generatorStyleSticker => 'Calcomanía';

  @override
  String get generatorShareCard => 'Compartir Tarjeta';

  @override
  String get generatorSaveToDevice => 'Guardar en el Dispositivo';

  @override
  String get generatorCopiedSnack => 'Contenido del QR copiado';

  @override
  String get generatorCopyQrContent => 'Copiar Contenido del QR';

  @override
  String get typeUrl => 'URL';

  @override
  String get typeUrlDescription => 'Enlace a un sitio web o contenido en línea';

  @override
  String get typeUrlHeadline => 'Escanear para visitar';

  @override
  String get typePlainText => 'Texto plano';

  @override
  String get typePlainTextDescription => 'Texto libre o mensaje';

  @override
  String get typePlainTextHeadline => 'Escanear para leer';

  @override
  String get typeWifi => 'WiFi';

  @override
  String get typeWifiDescription => 'Comparte las credenciales de tu red';

  @override
  String get typeWifiHeadline => 'Escanear para conectarse a WiFi';

  @override
  String get typeVcard => 'vCard';

  @override
  String get typeVcardDescription => 'Compartir datos de contacto';

  @override
  String get typeVcardHeadline => 'Escanear para guardar contacto';

  @override
  String get typeCalendar => 'Calendario';

  @override
  String get typeCalendarDescription =>
      'Agregar un evento a cualquier calendario';

  @override
  String get typeCalendarHeadline => 'Escanear para agregar al calendario';

  @override
  String get typePhone => 'Teléfono';

  @override
  String get typePhoneDescription => 'Un número de teléfono para llamar';

  @override
  String get typePhoneHeadline => 'Escanear para llamar';

  @override
  String get typeEmail => 'Correo electrónico';

  @override
  String get typeEmailDescription => 'Redactar un correo electrónico';

  @override
  String get typeEmailHeadline => 'Escanear para enviar correo';

  @override
  String get typeSms => 'SMS';

  @override
  String get typeSmsDescription => 'Enviar un mensaje de texto';

  @override
  String get typeSmsHeadline => 'Escanear para enviar SMS';

  @override
  String get typeLocation => 'Ubicación';

  @override
  String get typeLocationDescription => 'Una dirección física o coordenadas';

  @override
  String get typeLocationHeadline => 'Escanear para ver direcciones';

  @override
  String get historyAppBarTitle => 'Historial de Escaneos';

  @override
  String get historyClearAllTooltip => 'Borrar todo';

  @override
  String get historyEmpty => 'Aún no hay escaneos';

  @override
  String get historyJustNow => 'Ahora mismo';

  @override
  String historyMinutesAgo(Object count) {
    return 'Hace ${count}m';
  }

  @override
  String historyHoursAgo(Object count) {
    return 'Hace ${count}h';
  }

  @override
  String historyDeletedSnack(Object label) {
    return 'Eliminado $label';
  }

  @override
  String get historyUndoButton => 'Deshacer';

  @override
  String get historyClearDialogTitle => '¿Borrar Historial de Escaneos?';

  @override
  String get historyClearDialogContent => 'Esta acción no se puede deshacer.';

  @override
  String get historyClearButton => 'Borrar';

  @override
  String get historySourceGallery => 'Galería';

  @override
  String get historySourceCamera => 'Cámara';

  @override
  String get galleryNoQrFound => 'No se encontró ningún código QR en la imagen';

  @override
  String get galleryCropTitle => 'Encuadra el código QR';

  @override
  String get galleryCropScan => 'Escanear';

  @override
  String get ratePromptTitle => '¿Disfrutas PlainQR?';

  @override
  String get ratePromptBody =>
      'Tu reseña ayuda a otros a encontrar un escáner QR privado.';

  @override
  String get ratePromptRate => 'Califícanos';

  @override
  String get ratePromptFeedback => 'Comentarios';

  @override
  String get tilePromptTitle => 'Escanea desde cualquier lugar';

  @override
  String get tilePromptBody =>
      'Añade un mosaico de PlainQR a los Ajustes rápidos.\nDesliza hacia abajo, toca, escanea — sin abrir la app.';

  @override
  String get tilePromptAdd => 'Añadir mosaico';

  @override
  String get settingsAppBarTitle => 'Ajustes';

  @override
  String get settingsSectionScanning => 'Escaneo';

  @override
  String get settingsSaveHistory => 'Guardar Historial de Escaneos';

  @override
  String get settingsSaveHistoryOn =>
      'Escaneos de cámara guardados automáticamente';

  @override
  String get settingsSaveHistoryOff =>
      'Guardar manualmente desde la tarjeta de resultado';

  @override
  String get settingsAutoOpen => 'Apertura automática de tipos peligrosos';

  @override
  String get settingsAutoOpenOn =>
      'Omitir confirmación para URLs, llamadas, SMS y correos';

  @override
  String get settingsAutoOpenOff =>
      'Preguntar antes de abrir URLs, hacer llamadas, enviar SMS o redactar correos';

  @override
  String get settingsAutoFlashlight => 'Linterna Automática al Escanear';

  @override
  String get settingsAutoFlashlightOn =>
      'La linterna se activa al abrir la pantalla de escaneo';

  @override
  String get settingsAutoFlashlightOff => 'Linterna controlada manualmente';

  @override
  String get settingsEnableGenerators => 'Habilitar Generadores';

  @override
  String settingsEnableGeneratorsSubtitle(Object price) {
    return 'Desbloquea los generadores WiFi, vCard y Calendario para $price';
  }

  @override
  String get settingsPremiumUnlocked => 'Premium Desbloqueado';

  @override
  String get settingsPremiumUnlockedSubtitle =>
      'Todas las funciones del generador están habilitadas';

  @override
  String get settingsSectionAppearance => 'Apariencia';

  @override
  String get settingsThemeSystem => 'Sistema';

  @override
  String get settingsThemeLight => 'Claro';

  @override
  String get settingsThemeDark => 'Oscuro';

  @override
  String get settingsSectionLegal => 'Legal';

  @override
  String get settingsOpenSourceLicences => 'Licencias de Código Abierto';

  @override
  String get changelog04Item1 =>
      '22 idiomas — PlainQR ahora habla tu idioma. Elígelo en la configuración del sistema.';

  @override
  String get changelog04Item2 =>
      'Tema del sistema — claro, oscuro o siguiendo automáticamente tu dispositivo.';

  @override
  String get changelog04Item3 =>
      'Valóranos — toca la estrella en el menú para dejar una reseña en Play Store.';

  @override
  String get changelog04Item4 => 'Novedades — las estás leyendo.';

  @override
  String get changelog04Item5 =>
      'Ver comentarios en GitHub — toca una publicación para ver el estado del issue.';

  @override
  String get unlockAppBarTitle => 'Habilitar Generadores';

  @override
  String get unlockTitle =>
      'Habilita generadores de WiFi, Contactos\ny Calendario';

  @override
  String unlockDescription(Object price) {
    return 'Genera códigos QR para redes WiFi, tarjetas de contacto\ny eventos de calendario.\n$price una vez. Sin suscripción.';
  }

  @override
  String unlockEnableButton(Object price) {
    return 'Habilitar — $price';
  }

  @override
  String get unlockRestoreButton => 'Restaurar compra anterior';

  @override
  String get unlockDialogTitle => 'Desbloquear Generadores';

  @override
  String unlockDialogContent(Object price) {
    return 'Desbloquea los generadores WiFi, vCard y Calendario con una compra única de $price. Los otros seis tipos de generadores son siempre gratuitos.';
  }

  @override
  String get actionOpen => 'Abrir';

  @override
  String get actionCopy => 'Copiar';

  @override
  String get actionGenerate => 'Generar';

  @override
  String get actionShare => 'Compartir';

  @override
  String get actionEmail => 'Correo';

  @override
  String get actionCall => 'Llamar';

  @override
  String get actionSendSms => 'Enviar SMS';

  @override
  String get actionConnect => 'Conectar';

  @override
  String get actionCopySsid => 'Copiar SSID';

  @override
  String get actionCopyPassword => 'Copiar Contraseña';

  @override
  String get actionOpenMaps => 'Abrir Mapas';

  @override
  String get actionOpenInWhatsApp => 'Abrir en WhatsApp';

  @override
  String get actionOpenInTelegram => 'Abrir en Telegram';

  @override
  String get actionOpenInSignal => 'Abrir en Signal';

  @override
  String get actionOpenInTwitter => 'Abrir en Twitter';

  @override
  String get actionFaceTimeCall => 'Llamada FaceTime';

  @override
  String get actionOpenInSkype => 'Abrir en Skype';

  @override
  String get actionOpenInWallet => 'Abrir en Wallet';

  @override
  String get actionCopyAddress => 'Copiar Dirección';

  @override
  String get actionOpenInPayPal => 'Abrir en PayPal';

  @override
  String get actionOpenStore => 'Abrir Tienda';

  @override
  String get actionAddContact => 'Agregar Contacto';

  @override
  String get actionAddToCalendar => 'Agregar al Calendario';

  @override
  String get actionSave => 'Guardar';

  @override
  String get actionCancel => 'Cancelar';

  @override
  String showMoreRows(Object hiddenRows, Object rowWord) {
    return 'Mostrar $hiddenRows $rowWord más';
  }

  @override
  String showMoreFields(Object hiddenRows) {
    return 'Mostrar $hiddenRows más';
  }

  @override
  String get showLess => 'Mostrar menos';

  @override
  String get fieldEvent => 'Evento';

  @override
  String get fieldStartTime => 'Hora de Inicio';

  @override
  String get fieldEndTime => 'Hora de Fin';

  @override
  String get fieldLocation => 'Ubicación';

  @override
  String get fieldDescription => 'Descripción';

  @override
  String get fieldOrganizer => 'Organizador';

  @override
  String get fieldAttendee => 'Asistente';

  @override
  String get fieldName => 'Nombre';

  @override
  String get fieldPhone => 'Teléfono';

  @override
  String get fieldEmail => 'Correo';

  @override
  String get fieldOrganization => 'Organización';

  @override
  String get fieldTitle => 'Título';

  @override
  String get fieldAddress => 'Dirección';

  @override
  String get fieldNotes => 'Notas';

  @override
  String get fieldSsid => 'SSID';

  @override
  String get fieldPassword => 'Contraseña';

  @override
  String get fieldEncryption => 'Cifrado';

  @override
  String get fieldUrl => 'URL';

  @override
  String get fieldNickname => 'Apodo';

  @override
  String get fieldRole => 'Rol';

  @override
  String get fieldBirthday => 'Cumpleaños';

  @override
  String get row => 'fila';

  @override
  String get rows => 'filas';

  @override
  String get monthJan => 'Ene';

  @override
  String get monthFeb => 'Feb';

  @override
  String get monthMar => 'Mar';

  @override
  String get monthApr => 'Abr';

  @override
  String get monthMay => 'May';

  @override
  String get monthJun => 'Jun';

  @override
  String get monthJul => 'Jul';

  @override
  String get monthAug => 'Ago';

  @override
  String get monthSep => 'Sep';

  @override
  String get monthOct => 'Oct';

  @override
  String get monthNov => 'Nov';

  @override
  String get monthDec => 'Dic';

  @override
  String get cardCtaTitle => 'Abrir con PlainQR';

  @override
  String get cardSavedToDownloads => 'Tarjeta guardada en Descargas';

  @override
  String get cardShareFailed => 'No se pudo compartir la tarjeta';

  @override
  String get cardSaveFailed => 'No se pudo guardar la tarjeta';

  @override
  String get shareSubjectQrCode => 'Código QR';

  @override
  String get copiedToClipboard => 'Copiado al portapapeles';

  @override
  String get sharing => 'Compartiendo…';

  @override
  String get openingLink => 'Abriendo enlace';

  @override
  String get invalidUrl => 'URL no válida';

  @override
  String get couldNotOpenLink => 'No se pudo abrir este enlace';

  @override
  String get errorOpeningLink => 'Error al abrir el enlace';

  @override
  String get wifiNoSsid => 'No se encontró SSID en este código QR';

  @override
  String wifiConnected(Object ssid) {
    return 'Conectado a $ssid';
  }

  @override
  String wifiCouldNotConnect(Object ssid) {
    return 'No se pudo conectar a $ssid';
  }

  @override
  String get wifiConnectionFailed => 'Error de conexión';

  @override
  String get contactOpenFailed => 'No se pudo abrir el contacto';

  @override
  String get eventOpenFailed => 'No se pudo abrir el evento';

  @override
  String get confirmOpenExternalTitle => '¿Abrir Contenido Externo?';

  @override
  String confirmOpenExternalBody(Object url) {
    return 'El contenido del enlace a continuación podría no ser seguro. Solo continúes si confías en la fuente.\n\n$url\n\n— Para omitir este diálogo en el futuro, activa \"Abrir automáticamente tipos peligrosos\" en Ajustes.';
  }

  @override
  String get autoOpenDialogTitle => '¿Abrir Automáticamente Tipos Peligrosos?';

  @override
  String get autoOpenDialogContent =>
      'Con esta opción activada, las URLs, llamadas telefónicas, SMS y correos de los códigos QR se abrirán inmediatamente sin mostrarte primero el destino. Esto significa que un código QR malicioso podría realizar una llamada o llevarte a un sitio dañino sin tu conocimiento.\n\nSolo activa esto si comprendes y aceptas este riesgo.';

  @override
  String get autoOpenConfirmButton => 'Entendido';

  @override
  String purchaseButton(Object price) {
    return 'Comprar por $price';
  }

  @override
  String get storeUnavailable =>
      'Google Play Store no está disponible. No se pueden realizar compras.';

  @override
  String get productLoadFailed => 'Error al cargar el producto';

  @override
  String get purchaseFailed => 'Error en la compra';

  @override
  String get noErrorsLogged => '(no se registraron errores)';

  @override
  String get addressLookupTimedOut => 'La búsqueda de dirección expiró';

  @override
  String get couldNotResolveAddress => 'No se pudo resolver esa dirección';

  @override
  String get locationPermissionDenied => 'Permiso de ubicación denegado';

  @override
  String get locationLookupTimedOut => 'La búsqueda de ubicación expiró';

  @override
  String get couldNotGetCurrentLocation =>
      'No se pudo obtener la ubicación actual';

  @override
  String get contactsPermissionDenied => 'Permiso de contactos denegado';

  @override
  String get couldNotAccessContacts => 'No se pudo acceder a los contactos';

  @override
  String get contactImported => 'Contacto importado';

  @override
  String get required => 'Obligatorio';

  @override
  String get resolving => 'Resolviendo…';

  @override
  String get getCurrentLocation => 'Obtener Ubicación Actual';

  @override
  String get importFromContacts => 'Importar desde contactos';

  @override
  String get tapToPickDateTime => 'Toca para elegir fecha y hora';

  @override
  String get formEmailAddress => 'Correo electrónico';

  @override
  String get formEmailHint => 'ej. usuario@ejemplo.com';

  @override
  String get formEmailRequired => 'Obligatorio — debe contener @';

  @override
  String get formSubject => 'Asunto';

  @override
  String get formBody => 'Cuerpo';

  @override
  String get formPhoneNumber => 'Número de teléfono';

  @override
  String get formPhoneHint => 'ej. +1 555 123 4567';

  @override
  String get formSmsHelper => 'Obligatorio — el mensaje es opcional';

  @override
  String get formMessage => 'Mensaje';

  @override
  String get formText => 'Texto';

  @override
  String get formTextHint => 'Escribe cualquier texto o mensaje';

  @override
  String get formUrl => 'URL';

  @override
  String get formUrlHint => 'ejemplo.com';

  @override
  String get formUrlHelper =>
      'Escribe un dominio — puedes cambiar https:// si es necesario';

  @override
  String get formFullName => 'Nombre completo';

  @override
  String get formVcardHelper => 'Obligatorio — los demás campos son opcionales';

  @override
  String get formOrganization => 'Organización';

  @override
  String get formTitle => 'Título';

  @override
  String get formNetworkName => 'Nombre de red (SSID)';

  @override
  String get formWifiSsidHint => 'ej. MiWiFiHogar';

  @override
  String get formSsidAutoDetected =>
      'SSID detectado automáticamente de tu red actual';

  @override
  String get formWifiPassword => 'Contraseña';

  @override
  String get formWifiPasswordHelper => 'Dejar vacío para redes abiertas';

  @override
  String get formAddress => 'Dirección';

  @override
  String get formAddressHint => 'ej. Torre Eiffel, París';

  @override
  String get formLatitude => 'Latitud (-90 a 90)';

  @override
  String get formLongitude => 'Longitud (-180 a 180)';

  @override
  String get formStartDate => 'Fecha de inicio *';

  @override
  String get formEndDate => 'Fecha de fin';

  @override
  String get formEventTitle => 'Título del evento';

  @override
  String get formLocation => 'Ubicación';

  @override
  String get formLocationHint => 'ej. Calle Principal 123 o nombre del lugar';

  @override
  String get updateReadyMessage => 'Actualización lista para instalar';

  @override
  String get updateReadyAction => 'Reiniciar';
}
