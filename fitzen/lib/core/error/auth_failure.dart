import 'package:fitzen/core/error/failure.dart';
import 'package:fitzen/core/error/firebase_strings/auth_failure_strings.dart';
import 'package:flutter/foundation.dart';

@immutable
class AuthFailure extends Failure {
  const AuthFailure._({required super.message});

  const AuthFailure.invalidEmail()
    : this._(message: AuthFailureStrings.invalidEmailMessage);
  const AuthFailure.emailAlreadyInUse()
    : this._(message: AuthFailureStrings.emailAlreadyInUseMessage);
  const AuthFailure.weakPassword()
    : this._(message: AuthFailureStrings.weakPasswordMessage);
  const AuthFailure.userNotFound()
    : this._(message: AuthFailureStrings.userNotFoundMessage);
  const AuthFailure.wrongPassword()
    : this._(message: AuthFailureStrings.wrongPasswordMessage);
  const AuthFailure.invalidCredential()
    : this._(message: AuthFailureStrings.invalidCredentialMessage);
  const AuthFailure.userDisabled()
    : this._(message: AuthFailureStrings.userDisabledMessage);
  const AuthFailure.operationNotAllowed()
    : this._(message: AuthFailureStrings.operationNotAllowedMessage);
  const AuthFailure.tooManyRequests()
    : this._(message: AuthFailureStrings.tooManyRequestsMessage);
  const AuthFailure.requiresRecentLogin()
    : this._(message: AuthFailureStrings.requiresRecentLoginMessage);
  const AuthFailure.networkError()
    : this._(message: AuthFailureStrings.networkRequestFailedMessage);
  const AuthFailure.internalError()
    : this._(message: AuthFailureStrings.internalErrorMessage);
  const AuthFailure.unknown(String code)
    : this._(
        message: '${AuthFailureStrings.unknownErrorMessage} (code: $code)',
      );

  factory AuthFailure.fromCode(String code) {
    switch (code) {
      case AuthFailureStrings.invalidEmailCode:
        return const AuthFailure.invalidEmail();
      case AuthFailureStrings.emailAlreadyInUseCode:
        return const AuthFailure.emailAlreadyInUse();
      case AuthFailureStrings.weakPasswordCode:
        return const AuthFailure.weakPassword();
      case AuthFailureStrings.userNotFoundCode:
        return const AuthFailure.userNotFound();
      case AuthFailureStrings.wrongPasswordCode:
        return const AuthFailure.wrongPassword();
      case AuthFailureStrings.invalidCredentialCode:
        return const AuthFailure.invalidCredential();
      case AuthFailureStrings.userDisabledCode:
        return const AuthFailure.userDisabled();
      case AuthFailureStrings.operationNotAllowedCode:
        return const AuthFailure.operationNotAllowed();
      case AuthFailureStrings.tooManyRequestsCode:
        return const AuthFailure.tooManyRequests();
      case AuthFailureStrings.requiresRecentLoginCode:
        return const AuthFailure.requiresRecentLogin();
      case AuthFailureStrings.networkRequestFailedCode:
        return const AuthFailure.networkError();
      case AuthFailureStrings.internalErrorCode:
        return const AuthFailure.internalError();

      default:
        return AuthFailure.unknown(code);
    }
  }
}
