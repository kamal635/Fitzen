import 'package:fitzen/core/utils/form_validators/trainer_validator.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  late TrainerValidator validator;

  // Create validator instance
  setUp(() {
    validator = TrainerValidator();
  });

  group("validateCertificationName", () {
    test("should return error if name is null or empty", () {
      expect(validator.validateCertificationName(null), isNotNull);
      expect(validator.validateCertificationName(""), isNotNull);
    });

    test("should return error if name is too short", () {
      expect(validator.validateCertificationName("A"), isNotNull);
    });

    test("should return error if name is too long", () {
      expect(validator.validateCertificationName("A" * 100), isNotNull);
    });

    test("should return null if certification name is valid", () {
      expect(
        validator.validateCertificationName("Personal Trainer Cert"),
        isNull,
      );
    });
  });
}
