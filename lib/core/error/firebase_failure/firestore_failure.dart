import 'package:fitzen/core/error/failure.dart';
import 'package:fitzen/core/error/firebase_strings/firestore_failure_strings.dart';
import 'package:flutter/cupertino.dart';

@immutable
/// Represents Firestore failure with an error message.
class FirestoreFailure extends Failure {
  const FirestoreFailure._({required super.message});

  /// Error when permission to access Firestore resource is denied.
  const FirestoreFailure.permissionDenied()
    : this._(message: FirestoreFailureStrings.permissionDeniedMessage);

  /// Error when Firestore service is temporarily unavailable.
  const FirestoreFailure.unavailable()
    : this._(message: FirestoreFailureStrings.unavailableMessage);

  /// Error when requested Firestore document or resource is not found.
  const FirestoreFailure.notFound()
    : this._(message: FirestoreFailureStrings.notFoundMessage);

  /// Error when trying to create a resource that already exists.
  const FirestoreFailure.alreadyExists()
    : this._(message: FirestoreFailureStrings.alreadyExistsMessage);

  /// Error indicating resource usage limit has been exceeded.
  const FirestoreFailure.resourceExhausted()
    : this._(message: FirestoreFailureStrings.resourceExhaustedMessage);

  /// Error when operation deadline has been exceeded.
  const FirestoreFailure.deadlineExceeded()
    : this._(message: FirestoreFailureStrings.deadlineExceededMessage);

  /// Error when Firestore operation was cancelled.
  const FirestoreFailure.cancelled()
    : this._(message: FirestoreFailureStrings.cancelledMessage);

  /// Error indicating data loss in Firestore operation.
  const FirestoreFailure.dataLoss()
    : this._(message: FirestoreFailureStrings.dataLossMessage);

  /// Error when Firestore operation was aborted.
  const FirestoreFailure.aborted()
    : this._(message: FirestoreFailureStrings.abortedMessage);

  /// Error due to invalid argument passed to Firestore operation.
  const FirestoreFailure.invalidArgument()
    : this._(message: FirestoreFailureStrings.invalidArgumentMessage);

  /// Error when expected data is missing in Firestore operation.
  const FirestoreFailure.dataMissing()
    : this._(message: FirestoreFailureStrings.dataMissing);

  /// Internal Firestore error occurred.
  const FirestoreFailure.internal()
    : this._(message: FirestoreFailureStrings.internalMessage);

  /// Unknown Firestore error with the given error code.
  const FirestoreFailure.unknownFirestore(String code)
    : this._(
        message: '${FirestoreFailureStrings.unknownMessage} (code: $code)',
      );

  /// Creates an [FirestoreFailure] instance based on the given error [code].
  /// Maps Firestore error codes to corresponding failure types.
  factory FirestoreFailure.fromFirestore(String code) {
    switch (code) {
      case FirestoreFailureStrings.permissionDeniedCode:
        return const FirestoreFailure.permissionDenied();
      case FirestoreFailureStrings.unavailableCode:
        return const FirestoreFailure.unavailable();
      case FirestoreFailureStrings.notFoundCode:
        return const FirestoreFailure.notFound();
      case FirestoreFailureStrings.alreadyExistsCode:
        return const FirestoreFailure.alreadyExists();
      case FirestoreFailureStrings.resourceExhaustedCode:
        return const FirestoreFailure.resourceExhausted();
      case FirestoreFailureStrings.deadlineExceededCode:
        return const FirestoreFailure.deadlineExceeded();
      case FirestoreFailureStrings.cancelledCode:
        return const FirestoreFailure.cancelled();
      case FirestoreFailureStrings.dataLossCode:
        return const FirestoreFailure.dataLoss();
      case FirestoreFailureStrings.abortedCode:
        return const FirestoreFailure.aborted();
      case FirestoreFailureStrings.invalidArgumentCode:
        return const FirestoreFailure.invalidArgument();
      case FirestoreFailureStrings.dataMissing:
        return const FirestoreFailure.dataMissing();
      case FirestoreFailureStrings.internalCode:
        return const FirestoreFailure.internal();

      default:
        return FirestoreFailure.unknownFirestore(code);
    }
  }
}
