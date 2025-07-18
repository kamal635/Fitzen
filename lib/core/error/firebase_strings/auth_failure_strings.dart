/// Contains constant error messages related to authentication failures.
abstract class AuthFailureStrings {
  ///
  ///---------------- code ---------------------------
  ///

  /// Error code for invalid email format.
  static const String invalidEmailCode = 'invalid-email';

  /// Error code indicating email is already registered.
  static const String emailAlreadyInUseCode = 'email-already-in-use';

  /// Error code for weak password strength.
  static const String weakPasswordCode = 'weak-password';

  /// Error code when user is not found.
  static const String userNotFoundCode = 'user-not-found';

  /// Error code for incorrect password.
  static const String wrongPasswordCode = 'wrong-password';

  /// Error code for invalid authentication credentials.
  static const String invalidCredentialCode = 'invalid-credential';

  /// Error code when user account is disabled.
  static const String userDisabledCode = 'user-disabled';

  /// Error code for disallowed operations.
  static const String operationNotAllowedCode = 'operation-not-allowed';

  /// Error code for too many requests made to the server.
  static const String tooManyRequestsCode = 'too-many-requests';

  /// Error code requiring recent login to perform action.
  static const String requiresRecentLoginCode = 'requires-recent-login';

  /// Error code for network request failure.
  static const String networkRequestFailedCode = 'network-request-failed';

  /// Error code for internal errors.
  static const String internalErrorCode = 'internal-error';

  /// Error code for unknown authentication errors.
  static const String unknownCode = 'unknown';

  ///
  ///-------------------- Message ----------------------------
  ///

  /// Message shown when the email format is invalid.
  static const String invalidEmailMessage = 'The email address is not valid.';

  /// Message shown when the email is already registered.
  static const String emailAlreadyInUseMessage =
      'This email is already in use.';

  /// Message shown when the password strength is too weak.
  static const String weakPasswordMessage =
      'The password is too weak. Please choose a stronger one.';

  /// Message shown when no user account is found for the email.
  static const String userNotFoundMessage = 'No account found with this email.';

  /// Message shown when the entered password is incorrect.
  static const String wrongPasswordMessage =
      'The password you entered is incorrect.';

  /// Message shown when the provided authentication credentials are invalid.
  static const String invalidCredentialMessage =
      'The provided credentials are invalid. Please try again.';

  /// Message shown when the user account has been disabled.
  static const String userDisabledMessage =
      'This account has been disabled. Please contact support.';

  /// Message shown when the sign-in method is not allowed.
  static const String operationNotAllowedMessage =
      'This sign-in method is not allowed.';

  /// Message shown when too many requests have been made in a short time.
  static const String tooManyRequestsMessage =
      'Too many requests. Please try again later.';

  /// Message shown when a recent login is required to proceed.
  static const String requiresRecentLoginMessage =
      'Please log in again before performing this action.';

  /// Message shown when there is a network connectivity issue.
  static const String networkRequestFailedMessage =
      'Network error. Please check your internet connection.';

  /// Message shown when an internal error has occurred.
  static const String internalErrorMessage =
      'An internal error occurred. Please try again later.';

  /// Message shown for unknown authentication errors.
  static const String unknownErrorMessage = 'An unknown error occurred.';
}
