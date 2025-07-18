/// Validation error messages used across the app.
abstract class ValidationMessages {
  /// Email field is empty.
  static const String emailEmpty = "Email can't be empty";

  /// Email format is invalid.
  static const String invalidEmailFormat = 'Invalid email format';

  /// Email must contain at least one letter.
  static const String containsLettersEmail =
      'Email must include at least one letter.';

  /// Password field is empty.
  static const String passwordEmpty = "Password can't be empty";

  /// Password is too short (less than 6 characters).
  static const String passwordTooShort =
      'Password must be at least 6 characters';

  /// Confirm password field is empty.
  static const String confirmPasswordEmpty = "Confirm password can't be empty";

  /// Passwords do not match.
  static const String passwordDoNotMatch = 'Passwords do not match';

  /// Name field is empty. Uses {fieldName} placeholder.
  static const String nameEmpty = "{fieldName} can't be empty";

  /// Name is too short. Uses {fieldName} placeholder.
  static const String nameTooShort =
      '{fieldName} must be at least 2 characters';

  /// Name must include at least one letter.
  static const String containsLettersName =
      'Name must include at least one letter.';

  /// Phone number field is empty.
  static const String phoneEmpty = "Phone number can't be empty";

  /// Phone number format is invalid.
  static const String invalidPhoneNumber = 'Invalid phone number';

  /// Phone number must contain digits only.
  static const String digits = 'Phone number must contain digits only';

  /// Experience field is empty.
  static const String yearsOfExperienceEmpty =
      "Years of experience can't be empty";

  /// Experience input must be a number.
  static const String yearsOfExperienceNotNumber =
      'Years of experience must be a number';

  /// Experience input must be zero or positive.
  static const String yearsOfExperienceNegative =
      "Years of experience can't be negative";

  /// Experience exceeds the allowed maximum. Uses {max} placeholder.
  static const String yearsOfExperienceTooHigh =
      "Years of experience can't be more than {max}";

  /// At least one specialization must be added.
  static const String specializationMustAddOne =
      'You must add at least one specialization.';

  /// Each specialization must have at least 2 characters.
  static const String specializationTooShort =
      'Each specialization must be at least 2 characters long.';

  /// Each specialization must be under 50 characters.
  static const String specializationTooHigh =
      'Each specialization must be less than 50 characters.';

  /// Specialization must contain at least one letter.
  static const String containsLettersSpecialization =
      'Specialization must include at least one letter.';

  /// Certification name is too short.
  static const String certificationTooShort =
      'Certification Name must be at least 2 characters long.';

  /// Certification name is too long.
  static const String certificationTooHigh =
      'Certification Name must be less than 40 characters.';

  /// Certification must contain at least one letter.
  static const String containsLettersCertification =
      'Certification must include at least one letter.';

  /// A certification file must be selected.
  static const String mustSelectCertificate =
      'Please select a certification file.';

  /// Terms and conditions must be accepted to continue.
  static const String termsAgreement =
      ' You must agree to the terms and conditions to proceed.';
}

///
///-------------------------------------------------------------------
///

/// Common regex patterns and constants used for validation.
abstract class ValidationConstants {
  /// Regex pattern for validating email format.
  static const String emailRegex = r'^[\w-.]+@([\w-]+\.)+[\w-]{2,4}$';

  /// Regex pattern to check if string contains at least one letter.
  static const String containsLettersRegex = '[a-zA-Z]';

  /// Regex pattern for validating phone numbers
  ///  with optional '+' and 7-15 digits.
  static const String phoneRegex = r'^\+?[0-9]{7,15}$';

  /// Regex pattern to split specializations by comma,
  /// space, semicolon, or slash.
  static const String parseSpecializationsRegex = r'[,\s;/]+';

  /// Regex pattern to match digits only.
  static const String digitsRegex = r'^\d+$';

  /// Default label for name fields.
  static const String name = 'Name';

  /// Placeholder for dynamic field names in validation messages.
  static const String fieldName = '{fieldName}';

  /// Placeholder for maximum allowed values in validation messages.
  static const String max = '{max}';

  /// Default maximum length value as string.
  static const String numMax = '50';
}
