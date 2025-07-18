import 'package:fitzen/core/utils/form_validators/trainer_validator.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  late TrainerValidator validator;

  // Create validator instance
  setUp(() {
    validator = TrainerValidator();
  });

  group('validateEmail', () {
    test('should return error if email is null or empty', () {
      expect(validator.validateEmail(null), isNotNull);
      expect(validator.validateEmail(''), isNotNull);
    });

    test('should return error if email has invalid format', () {
      expect(validator.validateEmail('kamal'), isNotNull);
      expect(validator.validateEmail('kamal@asd'), isNotNull);
    });

    test('should return error if email is only numbers', () {
      expect(validator.validateEmail('1234@gmail.com'), isNotNull);
    });

    test('should return null if email is valid', () {
      expect(validator.validateEmail('a123@gmail.com'), isNull);
      expect(validator.validateEmail('kamal@domain.com'), isNull);
    });
  });
}
