abstract class StorageFailureStrings {
  //===== code ======//
  static const objectNotFoundCode = 'object-not-found';
  static const unauthorizedCode = 'unauthorized';
  static const quotaExceededCode = 'quota-exceeded';
  static const retryLimitExceededCode = 'retry-limit-exceeded';
  static const canceledCode = 'canceled';
  static const unknownCode = 'unknown-storage';

  //===== message ======//
  static const objectNotFoundMessage =
      'File/object not found in Firebase Storage.';
  static const unauthorizedMessage = 'Unauthorized access to Firebase Storage.';
  static const quotaExceededMessage = 'Firebase Storage quota exceeded.';
  static const retryLimitExceededMessage =
      'Retry limit exceeded in Firebase Storage.';
  static const canceledMessage = 'Operation canceled in Firebase Storage.';
  static const unknownMessage = 'An unknown Firebase Storage error occurred.';
  static const certificateMissing = 'Certificate missing in storage';
  static const certificateUploadFailed = 'Certificate upload failed';
}
