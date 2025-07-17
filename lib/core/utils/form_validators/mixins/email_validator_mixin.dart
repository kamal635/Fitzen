import 'package:fitzen/core/constant/validation_messages.dart';

/// Mixin email validation logic.
mixin EmailValidatorMixin {
  /// Validates email format; returns error message if invalid, else null.
  String? validateEmail(String? email) {
    if (email == null || email.trim().isEmpty) {
      return ValidationMessages.emailEmpty;
    }
    final RegExp emailRegex = RegExp(ValidationConstants.emailRegex);
    if (!emailRegex.hasMatch(email)) {
      return ValidationMessages.invalidEmailFormat;
    }

    final RegExp containsLettersRegex = RegExp(
      ValidationConstants.containsLettersRegex,
    );
    //check before @ contains letters or not
    final String localPart = email.split('@').first;
    if (!containsLettersRegex.hasMatch(localPart)) {
      return ValidationMessages.containsLettersEmail;
    }
    return null; // valid
  }
}
