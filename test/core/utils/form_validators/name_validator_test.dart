import 'package:fitzen/core/utils/form_validators/trainer_validator.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  late TrainerValidator validator;

  // Create validator instance
  setUp(() {
    validator = TrainerValidator();
  });

  group("validateName", () {
    test("should return error if name is null or empty", () {
      expect(validator.validateName(null, fieldName: "First name"), isNotNull);
      expect(validator.validateName("", fieldName: "Last name"), isNotNull);
    });

    test("should return error if name has less than 2 chars", () {
      expect(validator.validateName("A", fieldName: "First name"), isNotNull);
    });

    test("should return error if name is only numbers", () {
      expect(
        validator.validateName("12345", fieldName: "First name"),
        isNotNull,
      );
    });

    test("should return null if name is valid", () {
      expect(validator.validateName("Kamal"), isNull);
      expect(validator.validateName("12Kamal"), isNull);
    });
  });
}
