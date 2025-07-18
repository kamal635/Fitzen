import 'package:fitzen/core/error/failure.dart';
import 'package:fitzen/core/error/firebase_strings/storage_failure_strings.dart';
import 'package:flutter/cupertino.dart';

@immutable
/// Represents FireStorage failure with an error message.
class StorageFailure extends Failure {
  const StorageFailure._({required super.message});

  /// Error when the requested storage object is not found.
  const StorageFailure.objectNotFound()
    : this._(message: StorageFailureStrings.objectNotFoundMessage);

  /// Error when unauthorized access to storage occurs.
  const StorageFailure.unauthorized()
    : this._(message: StorageFailureStrings.unauthorizedMessage);

  /// Error when the storage quota is exceeded.
  const StorageFailure.quotaExceeded()
    : this._(message: StorageFailureStrings.quotaExceededMessage);

  /// Error when retry limit for a storage operation is exceeded.
  const StorageFailure.retryLimitExceeded()
    : this._(message: StorageFailureStrings.retryLimitExceededMessage);

  /// Error when the storage operation was canceled.
  const StorageFailure.canceled()
    : this._(message: StorageFailureStrings.canceledMessage);

  /// Error when a required certificate is missing.
  const StorageFailure.certificateMissing()
    : this._(message: StorageFailureStrings.certificateMissing);

  /// Error when uploading a certificate fails.
  const StorageFailure.certificateUploadFailed()
    : this._(message: StorageFailureStrings.certificateUploadFailed);

  /// Unknown storage error with the given error code.
  const StorageFailure.unknown(String code)
    : this._(message: '${StorageFailureStrings.unknownMessage} (code: $code)');

  /// Creates an [StorageFailure] instance based on the given error [code].
  /// Maps FireStorage error codes to corresponding failure types.
  factory StorageFailure.fromStorage(String code) {
    switch (code) {
      case StorageFailureStrings.objectNotFoundCode:
        return const StorageFailure.objectNotFound();
      case StorageFailureStrings.unauthorizedCode:
        return const StorageFailure.unauthorized();
      case StorageFailureStrings.quotaExceededCode:
        return const StorageFailure.quotaExceeded();
      case StorageFailureStrings.retryLimitExceededCode:
        return const StorageFailure.retryLimitExceeded();
      case StorageFailureStrings.certificateMissing:
        return const StorageFailure.certificateMissing();
      case StorageFailureStrings.certificateUploadFailed:
        return const StorageFailure.certificateUploadFailed();
      case StorageFailureStrings.canceledCode:
        return const StorageFailure.canceled();

      default:
        return StorageFailure.unknown(code);
    }
  }
}
