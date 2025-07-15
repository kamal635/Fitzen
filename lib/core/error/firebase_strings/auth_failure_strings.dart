abstract class AuthFailureStrings {
  //===== code ======//
  static const invalidEmailCode = 'invalid-email';
  static const emailAlreadyInUseCode = 'email-already-in-use';
  static const weakPasswordCode = 'weak-password';
  static const userNotFoundCode = 'user-not-found';
  static const wrongPasswordCode = 'wrong-password';
  static const invalidCredentialCode = 'invalid-credential';
  static const userDisabledCode = 'user-disabled';
  static const operationNotAllowedCode = 'operation-not-allowed';
  static const tooManyRequestsCode = 'too-many-requests';
  static const requiresRecentLoginCode = 'requires-recent-login';
  static const networkRequestFailedCode = 'network-request-failed';
  static const internalErrorCode = 'internal-error';
  static const unknownCode = 'unknown';

  //===== message ======//
  static const invalidEmailMessage = 'The email address is not valid.';
  static const emailAlreadyInUseMessage = 'This email is already in use.';
  static const weakPasswordMessage =
      'The password is too weak. Please choose a stronger one.';
  static const userNotFoundMessage = 'No account found with this email.';
  static const wrongPasswordMessage = 'The password you entered is incorrect.';
  static const invalidCredentialMessage =
      'The provided credentials are invalid. Please try again.';
  static const userDisabledMessage =
      'This account has been disabled. Please contact support.';
  static const operationNotAllowedMessage =
      'This sign-in method is not allowed.';
  static const tooManyRequestsMessage =
      'Too many requests. Please try again later.';
  static const requiresRecentLoginMessage =
      'Please log in again before performing this action.';
  static const networkRequestFailedMessage =
      'Network error. Please check your internet connection.';
  static const internalErrorMessage =
      'An internal error occurred. Please try again later.';
  static const unknownErrorMessage = 'An unknown error occurred.';
}
