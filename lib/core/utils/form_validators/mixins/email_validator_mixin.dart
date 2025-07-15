import 'package:fitzen/core/constant/validation_messages.dart';

mixin EmailValidatorMixin {
  String? validateEmail(String? email) {
    if (email == null || email.trim().isEmpty) {
      return ValidationMessages.emailEmpty;
    }
    final emailRegex = RegExp(ValidationConstants.emailRegex);
    if (!emailRegex.hasMatch(email)) {
      return ValidationMessages.invalidEmailFormat;
    }

    final containsLettersRegex = RegExp(
      ValidationConstants.containsLettersRegex,
    );
    //check before @ contains letters or not
    final localPart = email.split('@').first;
    if (!containsLettersRegex.hasMatch(localPart)) {
      return ValidationMessages.containsLettersEmail;
    }
    return null; // valid
  }
}
