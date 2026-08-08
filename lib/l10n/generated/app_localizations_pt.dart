// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Portuguese (`pt`).
class AppLocalizationsPt extends AppLocalizations {
  AppLocalizationsPt([String locale = 'pt']) : super(locale);

  @override
  String get appName => 'PlainQR';

  @override
  String get appNameFull => 'PlainQR — Escanear & Gerar';

  @override
  String get drawerScan => 'Escanear';

  @override
  String get drawerScanFromGallery => 'Escanear da Galeria';

  @override
  String get drawerGenerator => 'Gerador';

  @override
  String get drawerHistory => 'Histórico';

  @override
  String get drawerSettings => 'Configurações';

  @override
  String get scannerUnlockSnack => 'Geradores desbloqueados!';

  @override
  String get scannerUnlockAnnounce => 'Geradores desbloqueados';

  @override
  String scannerFreeTierBanner(Object price) {
    return 'Gratuito — $price para remover';
  }

  @override
  String scannerDetectedAnnounce(Object type, Object brief) {
    return 'Detectado $type: $brief';
  }

  @override
  String get scannerSavedToHistory => 'Salvo no histórico';

  @override
  String get scannerTooltipDisableFlashlight => 'Desativar lanterna';

  @override
  String get scannerTooltipEnableFlashlight => 'Ativar lanterna';

  @override
  String get scannerTooltipGallery => 'Escanear da galeria';

  @override
  String get scannerZoomIn => 'Ampliar';

  @override
  String get scannerZoomOut => 'Reduzir';

  @override
  String scannerZoomLevel(Object level) {
    return '$level×';
  }

  @override
  String get generatorAppBarTitle => 'Gerador';

  @override
  String generatorFormAppBarTitle(Object typeName) {
    return 'QR de $typeName';
  }

  @override
  String get generatorCardLabel => 'Etiqueta do cartão (opcional)';

  @override
  String get generatorCardLabelHint => 'ex.: WiFi do Convidado, Meu Site';

  @override
  String get generatorPreview => 'Pré-visualização';

  @override
  String get generatorStyle => 'Estilo:';

  @override
  String get generatorStyleLight => 'Claro';

  @override
  String get generatorStyleDark => 'Escuro';

  @override
  String get generatorStyleSticker => 'Adesivo';

  @override
  String get generatorShareCard => 'Compartilhar Cartão';

  @override
  String get generatorSaveToDevice => 'Salvar no Dispositivo';

  @override
  String get generatorCopiedSnack => 'Conteúdo do QR copiado';

  @override
  String get generatorCopyQrContent => 'Copiar Conteúdo do QR';

  @override
  String get typeUrl => 'URL';

  @override
  String get typeUrlDescription => 'Link para um site ou conteúdo online';

  @override
  String get typeUrlHeadline => 'Escanear para acessar';

  @override
  String get typePlainText => 'Texto simples';

  @override
  String get typePlainTextDescription => 'Texto livre ou mensagem';

  @override
  String get typePlainTextHeadline => 'Escanear para ler';

  @override
  String get typeWifi => 'WiFi';

  @override
  String get typeWifiDescription => 'Compartilhe suas credenciais de rede';

  @override
  String get typeWifiHeadline => 'Escanear para conectar ao WiFi';

  @override
  String get typeVcard => 'vCard';

  @override
  String get typeVcardDescription => 'Compartilhe dados de contato';

  @override
  String get typeVcardHeadline => 'Escanear para salvar contato';

  @override
  String get typeCalendar => 'Agenda';

  @override
  String get typeCalendarDescription => 'Adicione um evento em qualquer agenda';

  @override
  String get typeCalendarHeadline => 'Escanear para adicionar à agenda';

  @override
  String get typePhone => 'Telefone';

  @override
  String get typePhoneDescription => 'Número de telefone para ligar';

  @override
  String get typePhoneHeadline => 'Escanear para ligar';

  @override
  String get typeEmail => 'Email';

  @override
  String get typeEmailDescription => 'Compor um email';

  @override
  String get typeEmailHeadline => 'Escanear para enviar email';

  @override
  String get typeSms => 'SMS';

  @override
  String get typeSmsDescription => 'Enviar uma mensagem de texto';

  @override
  String get typeSmsHeadline => 'Escanear para enviar SMS';

  @override
  String get typeLocation => 'Localização';

  @override
  String get typeLocationDescription => 'Um endereço físico ou coordenadas';

  @override
  String get typeLocationHeadline => 'Escanear para ver direções';

  @override
  String get historyAppBarTitle => 'Histórico de Escaneamentos';

  @override
  String get historyClearAllTooltip => 'Limpar tudo';

  @override
  String get historyEmpty => 'Nenhum escaneamento ainda';

  @override
  String get historyJustNow => 'Agora mesmo';

  @override
  String historyMinutesAgo(Object count) {
    return 'há ${count}min';
  }

  @override
  String historyHoursAgo(Object count) {
    return 'há ${count}h';
  }

  @override
  String historyDeletedSnack(Object label) {
    return 'Excluído $label';
  }

  @override
  String get historyUndoButton => 'Desfazer';

  @override
  String get historyClearDialogTitle => 'Limpar Histórico de Escaneamentos?';

  @override
  String get historyClearDialogContent => 'Esta ação não pode ser desfeita.';

  @override
  String get historyClearButton => 'Limpar';

  @override
  String get historySourceGallery => 'Galeria';

  @override
  String get historySourceCamera => 'Câmera';

  @override
  String get galleryNoQrFound => 'Nenhum código QR encontrado na imagem';

  @override
  String get galleryCropTitle => 'Enquadre o código QR';

  @override
  String get galleryCropScan => 'Escanear';

  @override
  String get ratePromptTitle => 'Gosta do PlainQR?';

  @override
  String get ratePromptBody =>
      'Sua avaliação ajuda outros a encontrar um scanner QR privado.';

  @override
  String get ratePromptRate => 'Avalie';

  @override
  String get ratePromptFeedback => 'Feedback';

  @override
  String get tilePromptTitle => 'Escanear de qualquer lugar';

  @override
  String get tilePromptBody =>
      'Adicione um tile do PlainQR às Configurações rápidas.\nDeslize para baixo, toque, escaneie — sem precisar abrir o app.';

  @override
  String get tilePromptAdd => 'Adicionar Tile';

  @override
  String get settingsAppBarTitle => 'Configurações';

  @override
  String get settingsSectionScanning => 'Escaneamento';

  @override
  String get settingsSaveHistory => 'Salvar Histórico de Escaneamentos';

  @override
  String get settingsSaveHistoryOn =>
      'Escaneamentos da câmera salvos automaticamente';

  @override
  String get settingsSaveHistoryOff =>
      'Salvar manualmente a partir do cartão de resultado';

  @override
  String get settingsAutoOpen => 'Abrir automaticamente tipos perigosos';

  @override
  String get settingsAutoOpenOn =>
      'Pular confirmação para URLs, ligações, SMS e emails';

  @override
  String get settingsAutoOpenOff =>
      'Perguntar antes de abrir URLs, fazer ligações, enviar SMS ou compor emails';

  @override
  String get settingsAutoFlashlight => 'Lanterna Automática ao Escanear';

  @override
  String get settingsAutoFlashlightOn =>
      'Lanterna liga ao abrir a tela de escaneamento';

  @override
  String get settingsAutoFlashlightOff => 'Lanterna controlada manualmente';

  @override
  String get settingsEnableGenerators => 'Ativar Geradores';

  @override
  String settingsEnableGeneratorsSubtitle(Object price) {
    return 'Desbloqueie os geradores WiFi, vCard e Agenda para $price';
  }

  @override
  String get settingsPremiumUnlocked => 'Premium Desbloqueado';

  @override
  String get settingsPremiumUnlockedSubtitle =>
      'Todos os recursos de geração estão ativados';

  @override
  String get settingsSectionAppearance => 'Aparência';

  @override
  String get settingsThemeSystem => 'Sistema';

  @override
  String get settingsThemeLight => 'Claro';

  @override
  String get settingsThemeDark => 'Escuro';

  @override
  String get settingsSectionLegal => 'Jurídico';

  @override
  String get settingsOpenSourceLicences => 'Licenças de Código Aberto';

  @override
  String get changelog04Item1 =>
      '22 idiomas — PlainQR agora fala a sua língua. Escolha-a nas configurações do sistema.';

  @override
  String get changelog04Item2 =>
      'Tema do sistema — claro, escuro ou seguindo automaticamente o seu dispositivo.';

  @override
  String get changelog04Item3 =>
      'Avalie-nos — toque na estrela no menu para deixar uma avaliação na Play Store.';

  @override
  String get changelog04Item4 => 'Novidades — você está lendo agora.';

  @override
  String get changelog04Item5 =>
      'Ver feedback no GitHub — toque em uma submissão para ver o status da issue.';

  @override
  String get unlockAppBarTitle => 'Ativar Geradores';

  @override
  String get unlockTitle => 'Ative os geradores de WiFi,\nContato & Agenda';

  @override
  String unlockDescription(Object price) {
    return 'Gere QR codes para redes WiFi, cartões de contato\ne eventos de agenda.\n$price uma vez. Sem assinatura.';
  }

  @override
  String unlockEnableButton(Object price) {
    return 'Ativar — $price';
  }

  @override
  String get unlockRestoreButton => 'Restaurar compra anterior';

  @override
  String get unlockDialogTitle => 'Desbloquear Geradores';

  @override
  String unlockDialogContent(Object price) {
    return 'Desbloqueie os geradores WiFi, vCard e Agenda com uma compra única de $price. Os outros seis tipos de geradores são sempre gratuitos.';
  }

  @override
  String get actionOpen => 'Abrir';

  @override
  String get actionCopy => 'Copiar';

  @override
  String get actionGenerate => 'Gerar';

  @override
  String get actionShare => 'Compartilhar';

  @override
  String get actionEmail => 'Email';

  @override
  String get actionCall => 'Ligar';

  @override
  String get actionSendSms => 'Enviar SMS';

  @override
  String get actionConnect => 'Conectar';

  @override
  String get actionCopySsid => 'Copiar SSID';

  @override
  String get actionCopyPassword => 'Copiar Senha';

  @override
  String get actionOpenMaps => 'Abrir Mapas';

  @override
  String get actionOpenInWhatsApp => 'Abrir no WhatsApp';

  @override
  String get actionOpenInTelegram => 'Abrir no Telegram';

  @override
  String get actionOpenInSignal => 'Abrir no Signal';

  @override
  String get actionOpenInTwitter => 'Abrir no Twitter';

  @override
  String get actionFaceTimeCall => 'Chamada FaceTime';

  @override
  String get actionOpenInSkype => 'Abrir no Skype';

  @override
  String get actionOpenInWallet => 'Abrir na Carteira';

  @override
  String get actionCopyAddress => 'Copiar Endereço';

  @override
  String get actionOpenInPayPal => 'Abrir no PayPal';

  @override
  String get actionOpenStore => 'Abrir Loja';

  @override
  String get actionAddContact => 'Adicionar Contato';

  @override
  String get actionAddToCalendar => 'Adicionar à Agenda';

  @override
  String get actionSave => 'Salvar';

  @override
  String get actionCancel => 'Cancelar';

  @override
  String showMoreRows(Object hiddenRows, Object rowWord) {
    return 'Mostrar mais $hiddenRows $rowWord';
  }

  @override
  String showMoreFields(Object hiddenRows) {
    return 'Mostrar mais $hiddenRows';
  }

  @override
  String get showLess => 'Mostrar menos';

  @override
  String get fieldEvent => 'Evento';

  @override
  String get fieldStartTime => 'Horário de Início';

  @override
  String get fieldEndTime => 'Horário de Término';

  @override
  String get fieldLocation => 'Localização';

  @override
  String get fieldDescription => 'Descrição';

  @override
  String get fieldOrganizer => 'Organizador';

  @override
  String get fieldAttendee => 'Participante';

  @override
  String get fieldName => 'Nome';

  @override
  String get fieldPhone => 'Telefone';

  @override
  String get fieldEmail => 'Email';

  @override
  String get fieldOrganization => 'Organização';

  @override
  String get fieldTitle => 'Cargo';

  @override
  String get fieldAddress => 'Endereço';

  @override
  String get fieldNotes => 'Observações';

  @override
  String get fieldSsid => 'SSID';

  @override
  String get fieldPassword => 'Senha';

  @override
  String get fieldEncryption => 'Criptografia';

  @override
  String get fieldUrl => 'URL';

  @override
  String get fieldNickname => 'Apelido';

  @override
  String get fieldRole => 'Função';

  @override
  String get fieldBirthday => 'Data de Nascimento';

  @override
  String get row => 'linha';

  @override
  String get rows => 'linhas';

  @override
  String get monthJan => 'Jan';

  @override
  String get monthFeb => 'Fev';

  @override
  String get monthMar => 'Mar';

  @override
  String get monthApr => 'Abr';

  @override
  String get monthMay => 'Mai';

  @override
  String get monthJun => 'Jun';

  @override
  String get monthJul => 'Jul';

  @override
  String get monthAug => 'Ago';

  @override
  String get monthSep => 'Set';

  @override
  String get monthOct => 'Out';

  @override
  String get monthNov => 'Nov';

  @override
  String get monthDec => 'Dez';

  @override
  String get cardCtaTitle => 'Abrir com PlainQR';

  @override
  String get cardSavedToDownloads => 'Cartão salvo em Downloads';

  @override
  String get cardShareFailed => 'Não foi possível compartilhar o cartão';

  @override
  String get cardSaveFailed => 'Não foi possível salvar o cartão';

  @override
  String get shareSubjectQrCode => 'Código QR';

  @override
  String get copiedToClipboard => 'Copiado para a área de transferência';

  @override
  String get sharing => 'Compartilhando…';

  @override
  String get openingLink => 'Abrindo link';

  @override
  String get invalidUrl => 'URL inválida';

  @override
  String get couldNotOpenLink => 'Não foi possível abrir este link';

  @override
  String get errorOpeningLink => 'Erro ao abrir link';

  @override
  String get wifiNoSsid => 'Nenhum SSID encontrado neste QR code';

  @override
  String wifiConnected(Object ssid) {
    return 'Conectado a $ssid';
  }

  @override
  String wifiCouldNotConnect(Object ssid) {
    return 'Não foi possível conectar a $ssid';
  }

  @override
  String get wifiConnectionFailed => 'Falha na conexão';

  @override
  String get contactOpenFailed => 'Não foi possível abrir o contato';

  @override
  String get eventOpenFailed => 'Não foi possível abrir o evento';

  @override
  String get confirmOpenExternalTitle => 'Abrir Conteúdo Externo?';

  @override
  String confirmOpenExternalBody(Object url) {
    return 'O conteúdo no link abaixo pode não ser seguro. Prossiga apenas se confiar na fonte.\n\n$url\n\n— Para pular esta janela no futuro, ative \"Abrir automaticamente tipos perigosos\" nas Configurações.';
  }

  @override
  String get autoOpenDialogTitle => 'Abrir Automaticamente Tipos Perigosos?';

  @override
  String get autoOpenDialogContent =>
      'Com esta configuração ATIVADA, URLs, ligações telefônicas, SMS e emails de QR codes serão abertos imediatamente sem mostrar o destino primeiro. Isso significa que um QR code malicioso pode fazer uma ligação ou redirecioná-lo a um site prejudicial sem o seu conhecimento.\n\nAtive apenas se compreender e aceitar este risco.';

  @override
  String get autoOpenConfirmButton => 'Eu Entendo';

  @override
  String purchaseButton(Object price) {
    return 'Comprar por $price';
  }

  @override
  String get storeUnavailable =>
      'Google Play Store não disponível. Não é possível realizar compras.';

  @override
  String get productLoadFailed => 'Falha ao carregar produto';

  @override
  String get purchaseFailed => 'Falha na compra';

  @override
  String get noErrorsLogged => '(nenhum erro registrado)';

  @override
  String get addressLookupTimedOut => 'Tempo esgotado na busca de endereço';

  @override
  String get couldNotResolveAddress =>
      'Não foi possível resolver este endereço';

  @override
  String get locationPermissionDenied => 'Permissão de localização negada';

  @override
  String get locationLookupTimedOut => 'Tempo esgotado na busca de localização';

  @override
  String get couldNotGetCurrentLocation =>
      'Não foi possível obter a localização atual';

  @override
  String get contactsPermissionDenied => 'Permissão de contatos negada';

  @override
  String get couldNotAccessContacts => 'Não foi possível acessar os contatos';

  @override
  String get contactImported => 'Contato importado';

  @override
  String get required => 'Obrigatório';

  @override
  String get resolving => 'Resolvendo…';

  @override
  String get getCurrentLocation => 'Obter Localização Atual';

  @override
  String get importFromContacts => 'Importar dos contatos';

  @override
  String get tapToPickDateTime => 'Toque para escolher data e hora';

  @override
  String get formEmailAddress => 'Endereço de email';

  @override
  String get formEmailHint => 'ex.: usuario@exemplo.com';

  @override
  String get formEmailRequired => 'Obrigatório — deve conter @';

  @override
  String get formSubject => 'Assunto';

  @override
  String get formBody => 'Corpo';

  @override
  String get formPhoneNumber => 'Número de telefone';

  @override
  String get formPhoneHint => 'ex.: +55 11 99999-0000';

  @override
  String get formSmsHelper => 'Obrigatório — mensagem é opcional';

  @override
  String get formMessage => 'Mensagem';

  @override
  String get formText => 'Texto';

  @override
  String get formTextHint => 'Digite qualquer texto ou mensagem';

  @override
  String get formUrl => 'URL';

  @override
  String get formUrlHint => 'exemplo.com';

  @override
  String get formUrlHelper =>
      'Digite um domínio — você pode alterar o https:// se necessário';

  @override
  String get formFullName => 'Nome completo';

  @override
  String get formVcardHelper =>
      'Obrigatório — todos os outros campos são opcionais';

  @override
  String get formOrganization => 'Organização';

  @override
  String get formTitle => 'Cargo';

  @override
  String get formNetworkName => 'Nome da rede (SSID)';

  @override
  String get formWifiSsidHint => 'ex.: MinhaWiFi';

  @override
  String get formSsidAutoDetected =>
      'SSID detectado automaticamente da sua rede atual';

  @override
  String get formWifiPassword => 'Senha';

  @override
  String get formWifiPasswordHelper => 'Deixe vazio para redes abertas';

  @override
  String get formAddress => 'Endereço';

  @override
  String get formAddressHint => 'ex.: Torre Eiffel, Paris';

  @override
  String get formLatitude => 'Latitude (-90 a 90)';

  @override
  String get formLongitude => 'Longitude (-180 a 180)';

  @override
  String get formStartDate => 'Data de início *';

  @override
  String get formEndDate => 'Data de término';

  @override
  String get formEventTitle => 'Título do evento';

  @override
  String get formLocation => 'Localização';

  @override
  String get formLocationHint => 'ex.: Rua Example, 123 ou nome do local';

  @override
  String get updateReadyMessage => 'Atualização pronta para instalar';

  @override
  String get updateReadyAction => 'Reiniciar';
}
