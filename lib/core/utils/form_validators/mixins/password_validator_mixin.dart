import 'package:fitzen/core/constant/validation_messages.dart';

mixin PasswordValidatorMixin {
  String? validatePassword(String? password) {
    if (password == null || password.isEmpty) {
      return ValidationMessages.passwordEmpty;
    }
    if (password.length < 6) {
      return ValidationMessages.passwordTooShort;
    }
    return null; // valid
  }
}

mixin ConfirmPasswordValidatorMixin {
  String? validateConfirmPassword(String? confirmPassword, String? password) {
    if (confirmPassword == null || confirmPassword.isEmpty) {
      return ValidationMessages.confirmPasswordEmpty;
    }
    if (confirmPassword != password) {
      return ValidationMessages.passwordDoNotMatch;
    }
    return null;
  }
}
