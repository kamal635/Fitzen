import 'package:fitzen/core/utils/form_validators/trainer_validator.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  late TrainerValidator validator;

  // Create validator instance
  setUp(() {
    validator = TrainerValidator();
  });

  group('validateTermsAgreement', () {
    test('should return error if terms not agreed', () {
      expect(validator.validateTermsAgreement(terms: false), isNotNull);
    });

    test('should return null if terms agreed', () {
      expect(validator.validateTermsAgreement(terms: true), isNull);
    });
  });
}
