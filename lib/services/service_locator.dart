import 'error_logger.dart';
import 'purchase_service.dart';

/// Global service locator for app-wide singletons.
/// Keeps main.dart clean and avoids circular imports.
PurchaseService get purchaseService => _purchaseService;
final PurchaseService _purchaseService = PurchaseService();

/// Non-PII error logger — logs are attachable to feedback submissions.
ErrorLogger get errorLogger => _errorLogger;
final ErrorLogger _errorLogger = ErrorLogger.instance;
