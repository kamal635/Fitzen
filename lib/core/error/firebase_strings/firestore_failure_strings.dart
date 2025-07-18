/// Contains error message constants for Firestore failures.
abstract class FirestoreFailureStrings {
  ///
  ///--------------------- code ---------------------------
  ///

  /// Indicates the user does not have permission
  /// to perform the requested action.
  static const String permissionDeniedCode = 'permission-denied';

  /// Indicates that the Firestore service is currently unavailable.
  static const String unavailableCode = 'unavailable';

  /// Indicates the requested document or resource was not found.
  static const String notFoundCode = 'not-found';

  /// Indicates the document or resource already exists.
  static const String alreadyExistsCode = 'already-exists';

  /// Indicates that resource limits (like quota) have been exceeded.
  static const String resourceExhaustedCode = 'resource-exhausted';

  /// Indicates the operation took longer than the allowed time.
  static const String deadlineExceededCode = 'deadline-exceeded';

  /// Indicates the operation was cancelled by the user or system.
  static const String cancelledCode = 'cancelled';

  /// Indicates unrecoverable data loss occurred.
  static const String dataLossCode = 'data-loss';

  /// Indicates the operation was aborted, typically due to concurrency issues.
  static const String abortedCode = 'aborted';

  /// Indicates an invalid argument was provided to the operation.
  static const String invalidArgumentCode = 'invalid-argument';

  /// Indicates an internal error occurred in Firestore.
  static const String internalCode = 'internal';

  /// Indicates an unknown Firestore error.
  static const String unknownCode = 'unknown-firestore';

  ///
  ///--------------------- message ---------------------------
  ///

  /// User doesn’t have permission to access Firestore data.
  static const String permissionDeniedMessage =
      'Permission denied to access Firestore.';

  /// Firestore service is temporarily down or unreachable.
  static const String unavailableMessage =
      'Firestore service is currently unavailable.';

  /// The specific document or resource could not be found.
  static const String notFoundMessage = 'Requested document was not found.';

  /// Trying to create a document that already exists.
  static const String alreadyExistsMessage =
      'Document already exists in Firestore.';

  /// Firestore resource limits (e.g., quota) exceeded.
  static const String resourceExhaustedMessage =
      'Resource quota has been exhausted.';

  /// Operation took longer than the allowed time.
  static const String deadlineExceededMessage = 'Operation deadline exceeded.';

  /// Operation was cancelled by user or system.
  static const String cancelledMessage = 'Operation was cancelled.';

  /// A serious error causing data loss.
  static const String dataLossMessage = 'Unrecoverable data loss occurred.';

  /// Operation stopped due to a conflict, often from concurrent edits.
  static const String abortedMessage =
      'Operation aborted due to concurrency conflict.';

  /// A wrong or malformed argument was passed.
  static const String invalidArgumentMessage =
      'Invalid argument provided to Firestore.';

  /// Unexpected internal error in Firestore.
  static const String internalMessage = 'Internal Firestore error occurred.';

  /// Firestore error that couldn’t be classified.
  static const String unknownMessage = 'An unknown Firestore error occurred.';

  /// Specific data (trainer) expected in Firestore is missing.
  static const String dataMissing = 'Trainer data missing in Firestore';
}
