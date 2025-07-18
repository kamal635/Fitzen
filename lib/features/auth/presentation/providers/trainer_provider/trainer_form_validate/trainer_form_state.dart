import 'dart:io';

import 'package:flutter/material.dart';
import 'package:intl_phone_field/phone_number.dart';

@immutable
/// Immutable state class representing
/// the trainer form's current data and validation errors.
class TrainerFormState {
  ///
  /// Create [TrainerFormState]
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
    this.phoneNumber,
    this.phoneNumberError,
    this.years = '',
    this.yearsOfExperienceError,
    this.rawSpecializationsInput = '',
    this.specializations = const <String>[],
    this.specializationsError,
    this.certificationName = '',
    this.certificationNameError,
    this.fileCertification,
    this.uploadCertificationError,
    this.obscureTextPassword = true,
    this.obscureTextConfirmPassword = true,
    this.fileName,
    this.termsAgreement = false,
    this.termsAgreementError,
  });

  /// User's first name input.
  final String firstName;

  /// Error message related to first name validation.
  final String? firstNameError;

  /// User's last name input.
  final String lastName;

  /// Error message related to last name validation.
  final String? lastNameError;

  /// User's email input.
  final String email;

  /// Error message related to email validation.
  final String? emailError;

  /// User's password input.
  final String password;

  /// Error message related to password validation.
  final String? passwordError;

  /// User's confirm password input.
  final String confirmPassword;

  /// Error message related to confirm password validation.
  final String? confirmPasswordError;

  /// User's phone number input (nullable).
  final PhoneNumber? phoneNumber;

  /// Error message related to phone number validation.
  final String? phoneNumberError;

  /// User's years of experience input as string.
  final String years;

  /// Error message related to years of experience validation.
  final String? yearsOfExperienceError;

  /// Raw input string of specializations.
  final String rawSpecializationsInput;

  /// List of parsed specializations.
  final List<String> specializations;

  /// Error message related to specializations validation.
  final String? specializationsError;

  /// Name of the certification provided by user.
  final String certificationName;

  /// Error message related to certification name validation.
  final String? certificationNameError;

  /// Uploaded certification file (nullable).
  final File? fileCertification;

  /// Error message related to certification file upload.
  final String? uploadCertificationError;

  /// Controls visibility of password text (obscure or not).
  final bool obscureTextPassword;

  /// Controls visibility of confirm password text (obscure or not).
  final bool obscureTextConfirmPassword;

  /// Name of the uploaded certification file.
  final String? fileName;

  /// Whether the user agreed to terms and conditions.
  final bool termsAgreement;

  /// Error message if terms agreement is not accepted.
  final String? termsAgreementError;

  ///
  /// Creates a copy of the current [TrainerFormState] with updated fields.
  ///
  /// Allows updating one or more fields while keeping the rest unchanged.
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
    PhoneNumber? phoneNumber,
    String? phoneNumberError,
    String? years,
    String? yearsOfExperienceError,
    String? rawSpecializationsInput,
    List<String>? specializations,
    String? specializationsError,
    String? certificationName,
    String? certificationNameError,
    File? fileCertification,
    String? fileName,
    String? uploadCertificationError,
    bool? obscureTextPassword,
    bool? obscureTextConfirmPassword,
    bool? termsAgreement,
    String? termsAgreementError,
  }) {
    return TrainerFormState(
      firstName: firstName ?? this.firstName,
      firstNameError: firstNameError,
      lastName: lastName ?? this.lastName,
      lastNameError: lastNameError,
      email: email ?? this.email,
      emailError: emailError,
      password: password ?? this.password,
      passwordError: passwordError,
      confirmPassword: confirmPassword ?? this.confirmPassword,
      confirmPasswordError: confirmPasswordError,
      phoneNumber: phoneNumber ?? this.phoneNumber,
      phoneNumberError: phoneNumberError,
      years: years ?? this.years,
      yearsOfExperienceError: yearsOfExperienceError,
      rawSpecializationsInput:
          rawSpecializationsInput ?? this.rawSpecializationsInput,
      specializations: specializations ?? this.specializations,
      specializationsError: specializationsError,
      certificationName: certificationName ?? this.certificationName,
      certificationNameError: certificationNameError,
      fileCertification: fileCertification ?? this.fileCertification,
      fileName: fileName ?? this.fileName,
      uploadCertificationError: uploadCertificationError,
      obscureTextPassword: obscureTextPassword ?? this.obscureTextPassword,
      obscureTextConfirmPassword:
          obscureTextConfirmPassword ?? this.obscureTextConfirmPassword,
      termsAgreement: termsAgreement ?? this.termsAgreement,
      termsAgreementError: termsAgreementError,
    );
  }
}
