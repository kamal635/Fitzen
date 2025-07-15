import 'dart:io';

import 'package:flutter/material.dart';
import 'package:intl_phone_field/phone_number.dart';

@immutable
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
  final PhoneNumber? phoneNumber;
  final String? phoneNumberError;
  final String years;
  final String? yearsOfExperienceError;
  final String rawSpecializationsInput;
  final List<String> specializations;
  final String? specializationsError;
  final String certificationName;
  final String? certificationNameError;
  final File? fileCertification;
  final String? uploadCertificationError;
  final bool obscureTextPassword;
  final bool obscureTextConfirmPassword;
  final String? fileName;
  final bool termsAgreement;
  final String? termsAgreementError;

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
    this.specializations = const [],
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
