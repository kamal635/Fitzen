import 'package:fitzen/core/error/failure.dart';
import 'package:fitzen/core/error/firebase_strings/storage_failure_strings.dart';
import 'package:flutter/cupertino.dart';

@immutable
class StorageFailure extends Failure {
  const StorageFailure._({required super.message});

  const StorageFailure.objectNotFound()
    : this._(message: StorageFailureStrings.objectNotFoundMessage);
  const StorageFailure.unauthorized()
    : this._(message: StorageFailureStrings.unauthorizedMessage);
  const StorageFailure.quotaExceeded()
    : this._(message: StorageFailureStrings.quotaExceededMessage);
  const StorageFailure.retryLimitExceeded()
    : this._(message: StorageFailureStrings.retryLimitExceededMessage);
  const StorageFailure.canceled()
    : this._(message: StorageFailureStrings.canceledMessage);
  const StorageFailure.certificateMissing()
    : this._(message: StorageFailureStrings.certificateMissing);
  const StorageFailure.certificateUploadFailed()
    : this._(message: StorageFailureStrings.certificateUploadFailed);
  const StorageFailure.unknown(String code)
    : this._(message: '${StorageFailureStrings.unknownMessage} (code: $code)');

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
