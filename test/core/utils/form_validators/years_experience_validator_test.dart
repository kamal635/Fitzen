import 'package:fitzen/core/utils/form_validators/trainer_validator.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  late TrainerValidator validator;

  // Create validator instance
  setUp(() {
    validator = TrainerValidator();
  });

  group('validateYearsOfExperience', () {
    test('should return error if years is null or empty', () {
      expect(validator.validateYearsOfExperience(null), isNotNull);
      expect(validator.validateYearsOfExperience(''), isNotNull);
    });

    test('should return error if years is not a number', () {
      expect(validator.validateYearsOfExperience('abc'), isNotNull);
    });

    test('should return error if years is negative', () {
      expect(validator.validateYearsOfExperience('-1'), isNotNull);
    });

    test('should return error if years > max allowed', () {
      expect(validator.validateYearsOfExperience('51'), isNotNull);
    });

    test('should return null if years is valid', () {
      expect(validator.validateYearsOfExperience('10'), isNull);
    });
  });
}
