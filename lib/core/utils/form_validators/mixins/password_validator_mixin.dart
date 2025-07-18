import 'package:fitzen/core/constant/validation_messages.dart';

/// Mixin password validation logic.
mixin PasswordValidatorMixin {
  /// Validates password format; returns error message if invalid, else null.
  String? validatePassword(String? password) {
    if (password == null || password.trim().isEmpty) {
      return ValidationMessages.passwordEmpty;
    }
    if (password.length < 6) {
      return ValidationMessages.passwordTooShort;
    }
    return null; // valid
  }
}

/// Mixin confirmPassword validation logic.
mixin ConfirmPasswordValidatorMixin {
  /// Validates confirmPassword format;
  /// returns error message if invalid, else null.
  String? validateConfirmPassword(String? confirmPassword, String? password) {
    if (confirmPassword == null || confirmPassword.trim().isEmpty) {
      return ValidationMessages.confirmPasswordEmpty;
    }
    if (confirmPassword != password) {
      return ValidationMessages.passwordDoNotMatch;
    }
    return null;
  }
}
