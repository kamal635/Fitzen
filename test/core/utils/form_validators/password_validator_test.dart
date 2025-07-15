import 'package:fitzen/core/utils/form_validators/trainer_validator.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  late TrainerValidator validator;

  // Create validator instance
  setUp(() {
    validator = TrainerValidator();
  });

  setUp(() {});

  //
  //---------------------- validatePassword ----------------------
  //
  group("validatePassword", () {
    test("should return error if password is null or empty", () {
      expect(validator.validatePassword(null), isNotNull);
      expect(validator.validatePassword(""), isNotNull);
    });

    test("should return error if password is too short", () {
      expect(validator.validatePassword("123"), isNotNull);
    });

    test("should return null if password is valid", () {
      expect(validator.validatePassword("123456"), isNull);
      expect(validator.validatePassword("abc@123"), isNull);
    });
  });

  //
  //---------------------- validateConfirmPassword ----------------------
  //
  group("validateConfirmPassword", () {
    test("should return error if confirm password is null or empty", () {
      expect(validator.validateConfirmPassword(null, null), isNotNull);
      expect(validator.validateConfirmPassword("", ""), isNotNull);
    });

    test("should return error if passwords do not match", () {
      expect(validator.validateConfirmPassword("123456", "654321"), isNotNull);
    });

    test("should return null if passwords match", () {
      expect(validator.validateConfirmPassword("pass123", "pass123"), isNull);
    });
  });
}
