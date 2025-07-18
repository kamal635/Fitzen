/// Contains constant error message strings related to Storage failures.
abstract class StorageFailureStrings {
  ///
  ///--------------------- code ---------------------------
  ///

  /// Error code when the requested object is not found in storage.
  static const String objectNotFoundCode = 'object-not-found';

  /// Error code when the operation is unauthorized.
  static const String unauthorizedCode = 'unauthorized';

  /// Error code when the storage quota has been exceeded.
  static const String quotaExceededCode = 'quota-exceeded';

  /// Error code when the retry limit for an operation has been exceeded.
  static const String retryLimitExceededCode = 'retry-limit-exceeded';

  /// Error code when an operation has been canceled.
  static const String canceledCode = 'canceled';

  /// Error code for unknown storage errors.
  static const String unknownCode = 'unknown-storage';

  ///
  ///--------------------- message ---------------------------
  ///

  /// Message when a file or object is not found in Firebase Storage.
  static const String objectNotFoundMessage =
      'File/object not found in Firebase Storage.';

  /// Message for unauthorized access to Firebase Storage.
  static const String unauthorizedMessage =
      'Unauthorized access to Firebase Storage.';

  /// Message when Firebase Storage quota is exceeded.
  static const String quotaExceededMessage = 'Firebase Storage quota exceeded.';

  /// Message when retry limit is exceeded during Firebase Storage operations.
  static const String retryLimitExceededMessage =
      'Retry limit exceeded in Firebase Storage.';

  /// Message when an operation is canceled in Firebase Storage.
  static const String canceledMessage =
      'Operation canceled in Firebase Storage.';

  /// Message for unknown errors occurring in Firebase Storage.
  static const String unknownMessage =
      'An unknown Firebase Storage error occurred.';

  /// Message when a required certificate is missing in storage.
  static const String certificateMissing = 'Certificate missing in storage';

  /// Message when certificate upload fails.
  static const String certificateUploadFailed = 'Certificate upload failed';
}
