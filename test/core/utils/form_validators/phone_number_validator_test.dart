import 'package:fitzen/core/utils/form_validators/trainer_validator.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:intl_phone_field/phone_number.dart';

void main() {
  late TrainerValidator validator;
  late PhoneNumber validPhoneNumber;

  // Create validator instance and a valid phone number before each test
  setUp(() {
    validator = TrainerValidator();
    validPhoneNumber = PhoneNumber(
      countryISOCode: 'US',
      countryCode: '+1',
      number: '9876543210',
    );
  });

  group("validatePhoneNumber", () {
    test("should return error if phone number is null or empty", () {
      expect(validator.validatePhoneNumber(null), isNotNull);

      final emptyNumber = PhoneNumber(
        countryISOCode: 'US',
        countryCode: '+1',
        number: ' ',
      );
      expect(validator.validatePhoneNumber(emptyNumber), isNotNull);
    });

    test("should return error if phone number is invalid", () {
      final invalidNumber = PhoneNumber(
        countryISOCode: 'US',
        countryCode: '+1',
        number: '123',
      );
      expect(validator.validatePhoneNumber(invalidNumber), isNotNull);
    });

    test("should return null if phone number is valid", () {
      expect(validator.validatePhoneNumber(validPhoneNumber), isNull);
    });
  });
}
