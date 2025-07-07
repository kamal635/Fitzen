import 'package:fitzen/core/constant/validation_messages.dart';

mixin PhoneNumberMixinValidator {
  String? validatePhoneNumber(String? phone) {
    if (phone == null || phone.trim().isEmpty) {
      return ValidationMessages.phoneEmpty;
    }
    // Simple regex for phone validation
    final phoneRegex = RegExp(ValidationConstants.phoneRegex);
    if (!phoneRegex.hasMatch(phone)) {
      return ValidationMessages.invalidPhoneNumber;
    }
    return null; // valid
  }
}
