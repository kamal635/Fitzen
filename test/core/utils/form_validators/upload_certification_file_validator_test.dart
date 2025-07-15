import 'dart:io';

import 'package:fitzen/core/utils/form_validators/trainer_validator.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  late TrainerValidator validator;

  // Create validator instance
  setUp(() {
    validator = TrainerValidator();
  });

  group("validateUploadCertification", () {
    test("should return error if file is null", () {
      expect(validator.validateUploadCertification(null), isNotNull);
    });

    test("should return null if file is provided", () {
      final file = File("path/to/file.pdf");
      expect(validator.validateUploadCertification(file), isNull);
    });
  });
}
