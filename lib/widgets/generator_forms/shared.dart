/// Callback signature for generator forms.
/// Reports the current QR content and whether it has enough data to generate.
typedef OnQrChanged = void Function(String qrContent, bool hasContent);
