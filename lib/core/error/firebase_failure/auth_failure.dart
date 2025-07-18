import 'package:fitzen/core/error/failure.dart';
import 'package:fitzen/core/error/firebase_strings/auth_failure_strings.dart';
import 'package:flutter/foundation.dart';

@immutable
/// Represents authentication failure with an error message.
class AuthFailure extends Failure {
  const AuthFailure._({required super.message});

  /// Represents an invalid email error.
  const AuthFailure.invalidEmail()
    : this._(message: AuthFailureStrings.invalidEmailMessage);

  /// Represents an error when the email is already in use.
  const AuthFailure.emailAlreadyInUse()
    : this._(message: AuthFailureStrings.emailAlreadyInUseMessage);

  /// Represents an error when the provided password is too weak.
  const AuthFailure.weakPassword()
    : this._(message: AuthFailureStrings.weakPasswordMessage);

  /// Represents an error when the user is not found.
  const AuthFailure.userNotFound()
    : this._(message: AuthFailureStrings.userNotFoundMessage);

  /// Represents an error when the provided password is incorrect.
  const AuthFailure.wrongPassword()
    : this._(message: AuthFailureStrings.wrongPasswordMessage);

  /// Represents an error when the authentication credential is invalid.
  const AuthFailure.invalidCredential()
    : this._(message: AuthFailureStrings.invalidCredentialMessage);

  /// Represents an error when the user account is disabled.
  const AuthFailure.userDisabled()
    : this._(message: AuthFailureStrings.userDisabledMessage);

  /// Represents an error when the operation is not allowed.
  const AuthFailure.operationNotAllowed()
    : this._(message: AuthFailureStrings.operationNotAllowedMessage);

  /// Represents an error when too many requests are made.
  const AuthFailure.tooManyRequests()
    : this._(message: AuthFailureStrings.tooManyRequestsMessage);

  /// Represents an error requiring recent login for sensitive operations.
  const AuthFailure.requiresRecentLogin()
    : this._(message: AuthFailureStrings.requiresRecentLoginMessage);

  /// Represents a network request failure error.
  const AuthFailure.networkError()
    : this._(message: AuthFailureStrings.networkRequestFailedMessage);

  /// Represents an internal error in the authentication process.
  const AuthFailure.internalError()
    : this._(message: AuthFailureStrings.internalErrorMessage);

  /// Represents an unknown error with a specific error code.
  const AuthFailure.unknown(String code)
    : this._(
        message: '${AuthFailureStrings.unknownErrorMessage} (code: $code)',
      );

  /// Creates an [AuthFailure] instance based on the given error [code].
  /// Maps Firebase auth error codes to corresponding failure types.
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
