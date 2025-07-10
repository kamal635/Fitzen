import 'package:fitzen/core/error/failure.dart';
import 'package:fitzen/core/error/firebase_strings/firestore_failure_strings.dart';
import 'package:flutter/cupertino.dart';

@immutable
class FirestoreFailure extends Failure {
  const FirestoreFailure._({required super.message});

  const FirestoreFailure.permissionDenied()
    : this._(message: FirestoreFailureStrings.permissionDeniedMessage);
  const FirestoreFailure.unavailable()
    : this._(message: FirestoreFailureStrings.unavailableMessage);
  const FirestoreFailure.notFound()
    : this._(message: FirestoreFailureStrings.notFoundMessage);
  const FirestoreFailure.alreadyExists()
    : this._(message: FirestoreFailureStrings.alreadyExistsMessage);
  const FirestoreFailure.resourceExhausted()
    : this._(message: FirestoreFailureStrings.resourceExhaustedMessage);
  const FirestoreFailure.deadlineExceeded()
    : this._(message: FirestoreFailureStrings.deadlineExceededMessage);
  const FirestoreFailure.cancelled()
    : this._(message: FirestoreFailureStrings.cancelledMessage);
  const FirestoreFailure.dataLoss()
    : this._(message: FirestoreFailureStrings.dataLossMessage);
  const FirestoreFailure.aborted()
    : this._(message: FirestoreFailureStrings.abortedMessage);
  const FirestoreFailure.invalidArgument()
    : this._(message: FirestoreFailureStrings.invalidArgumentMessage);
  const FirestoreFailure.dataMissing()
    : this._(message: FirestoreFailureStrings.dataMissing);

  const FirestoreFailure.internal()
    : this._(message: FirestoreFailureStrings.internalMessage);
  const FirestoreFailure.unknownFirestore(String code)
    : this._(
        message: '${FirestoreFailureStrings.unknownMessage} (code: $code)',
      );

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
