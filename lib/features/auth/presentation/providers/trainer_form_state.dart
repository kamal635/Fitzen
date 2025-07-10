import 'dart:io';

class TrainerFormState {
  final String firstName;
  final String? firstNameError;
  final String lastName;
  final String? lastNameError;
  final String email;
  final String? emailError;
  final String password;
  final String? passwordError;
  final String confirmPassword;
  final String? confirmPasswordError;
  final String phoneNumber;
  final String? phoneNumberError;

  final String years;
  final String? errorYearsOfExperience;
  final String rawSpecializationsInput;
  final List<String> specializations;
  final String? errorSpecializations;
  final String certificationName;
  final String? errorCertificationName;
  final File? fileCertification;
  final String? errorUploadCertification;

  const TrainerFormState({
    this.firstName = '',
    this.firstNameError,
    this.lastName = '',
    this.lastNameError,
    this.email = '',
    this.emailError,
    this.password = '',
    this.passwordError,
    this.confirmPassword = '',
    this.confirmPasswordError,
    this.phoneNumber = '',
    this.phoneNumberError,
    this.years = '',
    this.errorYearsOfExperience,
    this.rawSpecializationsInput = '',
    this.specializations = const [],
    this.errorSpecializations,
    this.certificationName = '',
    this.errorCertificationName,
    this.fileCertification,
    this.errorUploadCertification,
  });

  TrainerFormState copyWith({
    String? firstName,
    String? firstNameError,
    String? lastName,
    String? lastNameError,
    String? email,
    String? emailError,
    String? password,
    String? passwordError,
    String? confirmPassword,
    String? confirmPasswordError,
    String? phoneNumber,
    String? phoneNumberError,
    String? years,
    String? errorYearsOfExperience,
    String? rawSpecializationsInput,
    List<String>? specializations,
    String? errorSpecializations,
    String? certificationName,
    String? errorCertificationName,
    File? fileCertification,
    String? errorUploadCertification,
  }) {
    return TrainerFormState(
      firstName: firstName ?? this.firstName,
      firstNameError: firstNameError ?? this.firstNameError,
      lastName: lastName ?? this.lastName,
      lastNameError: lastNameError ?? this.lastNameError,
      email: email ?? this.email,
      emailError: emailError ?? this.emailError,
      password: password ?? this.password,
      passwordError: passwordError ?? this.passwordError,
      confirmPassword: confirmPassword ?? this.confirmPassword,
      confirmPasswordError: confirmPasswordError ?? this.confirmPasswordError,
      phoneNumber: phoneNumber ?? this.phoneNumber,
      phoneNumberError: phoneNumberError ?? this.phoneNumberError,
      years: years ?? this.years,
      errorYearsOfExperience:
          errorYearsOfExperience ?? this.errorYearsOfExperience,
      rawSpecializationsInput:
          rawSpecializationsInput ?? this.rawSpecializationsInput,
      specializations: specializations ?? this.specializations,
      errorSpecializations: errorSpecializations ?? this.errorSpecializations,
      certificationName: certificationName ?? this.certificationName,
      errorCertificationName:
          errorCertificationName ?? this.errorCertificationName,
      fileCertification: fileCertification ?? this.fileCertification,
      errorUploadCertification:
          errorUploadCertification ?? this.errorUploadCertification,
    );
  }
}
