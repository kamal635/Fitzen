import 'package:fitzen/core/constant/app_strings.dart';
import 'package:fitzen/core/error/failure.dart';
import 'package:flutter/foundation.dart';

@immutable
class AuthFailure extends Failure {
  const AuthFailure._({required super.message});

  const AuthFailure.invalidEmail()
    : this._(message: AppStrings.invalidEmailMessage);
  const AuthFailure.emailAlreadyInUse()
    : this._(message: AppStrings.emailAlreadyInUseMessage);
  const AuthFailure.weakPassword()
    : this._(message: AppStrings.weakPasswordMessage);
  const AuthFailure.userNotFound()
    : this._(message: AppStrings.userNotFoundMessage);
  const AuthFailure.wrongPassword()
    : this._(message: AppStrings.wrongPasswordMessage);
  const AuthFailure.invalidCredential()
    : this._(message: AppStrings.invalidCredentialMessage);
  const AuthFailure.userDisabled()
    : this._(message: AppStrings.userDisabledMessage);
  const AuthFailure.operationNotAllowed()
    : this._(message: AppStrings.operationNotAllowedMessage);
  const AuthFailure.tooManyRequests()
    : this._(message: AppStrings.tooManyRequestsMessage);
  const AuthFailure.requiresRecentLogin()
    : this._(message: AppStrings.requiresRecentLoginMessage);
  const AuthFailure.networkError()
    : this._(message: AppStrings.networkRequestFailedMessage);
  const AuthFailure.internalError()
    : this._(message: AppStrings.internalErrorMessage);
  const AuthFailure.unknown(String code)
    : this._(message: '${AppStrings.unknownErrorMessage} (code: $code)');

  factory AuthFailure.fromCode(String code) {
    switch (code) {
      case AppStrings.invalidEmailCode:
        return const AuthFailure.invalidEmail();
      case AppStrings.emailAlreadyInUseCode:
        return const AuthFailure.emailAlreadyInUse();
      case AppStrings.weakPasswordCode:
        return const AuthFailure.weakPassword();
      case AppStrings.userNotFoundCode:
        return const AuthFailure.userNotFound();
      case AppStrings.wrongPasswordCode:
        return const AuthFailure.wrongPassword();
      case AppStrings.invalidCredentialCode:
        return const AuthFailure.invalidCredential();
      case AppStrings.userDisabledCode:
        return const AuthFailure.userDisabled();
      case AppStrings.operationNotAllowedCode:
        return const AuthFailure.operationNotAllowed();
      case AppStrings.tooManyRequestsCode:
        return const AuthFailure.tooManyRequests();
      case AppStrings.requiresRecentLoginCode:
        return const AuthFailure.requiresRecentLogin();
      case AppStrings.networkRequestFailedCode:
        return const AuthFailure.networkError();
      case AppStrings.internalErrorCode:
        return const AuthFailure.internalError();
      case AppStrings.unknownCode:
        return const AuthFailure.unknown(AppStrings.unknownCode);
      default:
        return AuthFailure.unknown(code);
    }
  }
}
