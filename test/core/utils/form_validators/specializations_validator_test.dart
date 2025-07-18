import 'package:fitzen/core/utils/form_validators/trainer_validator.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  late TrainerValidator validator;

  // Create validator instance
  setUp(() {
    validator = TrainerValidator();
  });

  group('validateSpecializations', () {
    test('should return error if list is null or empty', () {
      expect(validator.validateSpecializations(null), isNotNull);
      expect(validator.validateSpecializations(<String>[]), isNotNull);
    });

    test('should return error if specialization too short', () {
      expect(validator.validateSpecializations(<String>['A']), isNotNull);
    });

    test('should return error if specialization too long', () {
      expect(
        validator.validateSpecializations(<String>[
          'A' * 60,
        ]), // simulate a very long string
        isNotNull,
      );
    });

    test('should return null if specializations are valid', () {
      expect(
        validator.validateSpecializations(<String>['Fitness', 'Yoga']),
        isNull,
      );
    });
  });
}
