import 'package:fitzen/core/constant/validation_messages.dart';
import 'package:intl_phone_field/countries.dart';
import 'package:intl_phone_field/phone_number.dart';

mixin PhoneNumberMixinValidator {
  String? validatePhoneNumber(PhoneNumber? phoneNumber) {
    if (phoneNumber == null || phoneNumber.number.trim().isEmpty) {
      return ValidationMessages.phoneEmpty;
    }

    final country = countries.firstWhere(
      (c) => c.code == phoneNumber.countryISOCode,
    );

    if (phoneNumber.number.length != country.maxLength) {
      return ValidationMessages.invalidPhoneNumber;
    }

    final isNumeric = RegExp(ValidationConstants.digitsRegex);
    if (!isNumeric.hasMatch(phoneNumber.number)) {
      return ValidationMessages.digits;
    }

    return null;
  }
}
