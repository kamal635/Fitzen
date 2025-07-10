import 'package:fitzen/core/constant/validation_messages.dart';

/// Mixin for validating name fields (first name / last name).
mixin NameValidatorMixin {
  String? validateName(
    String? name, {
    String fieldName = ValidationConstants.name,
  }) {
    if (name == null || name.trim().isEmpty) {
      return ValidationMessages.nameEmpty.replaceAll(
        ValidationConstants.fieldName,
        fieldName,
      );
    }
    if (name.length < 2) {
      return ValidationMessages.nameTooShort.replaceAll(
        ValidationConstants.fieldName,
        fieldName,
      );
    }
    return null; // valid
  }
}
