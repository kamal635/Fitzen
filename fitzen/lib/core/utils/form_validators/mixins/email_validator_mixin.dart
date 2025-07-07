import 'package:fitzen/core/constant/validation_messages.dart';

mixin EmailValidatorMixin {
  String? validateEmail(String? email) {
    if (email == null || email.isEmpty) {
      return ValidationMessages.emailEmpty;
    }
    final emailRegex = RegExp(ValidationConstants.emailRegex);
    if (!emailRegex.hasMatch(email)) {
      return ValidationMessages.invalidEmailFormat;
    }
    return null; // valid
  }
}
