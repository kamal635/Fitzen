abstract class FirestoreFailureStrings {
  //===== code ======//
  static const permissionDeniedCode = 'permission-denied';
  static const unavailableCode = 'unavailable';
  static const notFoundCode = 'not-found';
  static const alreadyExistsCode = 'already-exists';
  static const resourceExhaustedCode = 'resource-exhausted';
  static const deadlineExceededCode = 'deadline-exceeded';
  static const cancelledCode = 'cancelled';
  static const dataLossCode = 'data-loss';
  static const abortedCode = 'aborted';
  static const invalidArgumentCode = 'invalid-argument';
  static const internalCode = 'internal';
  static const unknownCode = 'unknown-firestore';

  //===== message ======//
  static const permissionDeniedMessage =
      'Permission denied to access Firestore.';
  static const unavailableMessage =
      'Firestore service is currently unavailable.';
  static const notFoundMessage = 'Requested document was not found.';
  static const alreadyExistsMessage = 'Document already exists in Firestore.';
  static const resourceExhaustedMessage = 'Resource quota has been exhausted.';
  static const deadlineExceededMessage = 'Operation deadline exceeded.';
  static const cancelledMessage = 'Operation was cancelled.';
  static const dataLossMessage = 'Unrecoverable data loss occurred.';
  static const abortedMessage =
      'Operation aborted due to concurrency conflict.';
  static const invalidArgumentMessage =
      'Invalid argument provided to Firestore.';
  static const internalMessage = 'Internal Firestore error occurred.';
  static const unknownMessage = 'An unknown Firestore error occurred.';
  static const dataMissing = 'Trainer data missing in Firestore';
}
