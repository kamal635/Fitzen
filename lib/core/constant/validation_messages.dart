abstract class ValidationMessages {
  static const String emailEmpty = "Email can't be empty";
  static const String invalidEmailFormat = "Invalid email format";

  static const String passwordEmpty = "Password can't be empty";
  static const String passwordTooShort =
      "Password must be at least 6 characters";

  static const String confirmPasswordEmpty = "Confirm password can't be empty";
  static const String passwordDoNotMatch = "Passwords do not match";

  static const String nameEmpty = "{fieldName} can't be empty";
  static const String nameTooShort =
      "{fieldName} must be at least 2 characters";

  static const String phoneEmpty = "Phone number can't be empty";
  static const String invalidPhoneNumber = "Invalid phone number";

  static const String yearsOfExperienceEmpty =
      "Years of experience can't be empty";
  static const String yearsOfExperienceNotNumber =
      "Years of experience must be a number";
  static const String yearsOfExperienceNegative =
      "Years of experience can't be negative";
  static const String yearsOfExperienceTooHigh =
      "Years of experience can't be more than {max}";

  static const String specializationMustAddOne =
      "You must add at least one specialization.";
  static const String specializationTooShort =
      "Each specialization must be at least 2 characters long.";
  static const String specializationTooHigh =
      "Each specialization must be less than 50 characters.";

  static const String certificationTooShort =
      "Certification Name must be at least 2 characters long.";
  static const String certificationTooHigh =
      "Certification Name must be less than 40 characters.";

  static const String mustSelectCertificate =
      "Please select a certification file.";

  static const String termsAgreement =
      " You must agree to the terms and conditions to proceed.";
}

abstract class ValidationConstants {
  static const String emailRegex = r'^[\w-.]+@([\w-]+\.)+[\w-]{2,4}$';
  static const String phoneRegex = r'^\+?[0-9]{7,15}$';
  static const String parseSpecializationsRegex = r'[,\s;/]+';
  static const String name = 'Name';
  static const String fieldName = '{fieldName}';
  static const String max = '{max}';
  static const String numMax = '50';
}
