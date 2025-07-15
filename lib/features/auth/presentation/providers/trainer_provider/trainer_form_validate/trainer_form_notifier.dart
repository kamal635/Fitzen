import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:fitzen/core/constant/app_strings.dart';
import 'package:fitzen/core/utils/form_validators/trainer_validator.dart';
import 'package:fitzen/core/utils/helpers/parse_specializations.dart';
import 'package:fitzen/features/auth/presentation/providers/trainer_provider/trainer_form_validate/trainer_form_mixins.dart';
import 'package:fitzen/features/auth/presentation/providers/trainer_provider/trainer_form_validate/trainer_form_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl_phone_field/phone_number.dart';

class TrainerFormNotifier extends StateNotifier<TrainerFormState>
    with
        NameFormMixin,
        EmailFormMixin,
        PasswordFormMixin,
        ConfirmPasswordFormMixin,
        PhoneNumberFormMixin {
  TrainerFormNotifier() : super(const TrainerFormState());

  // Validator instance to handle custom validation outside the mixins
  final _validator = TrainerValidator();

  //
  //---------------------------------------------------------------
  //------------------------ Step one -----------------------------
  //---------------------------------------------------------------
  //

  // Update first name and validate it immediately
  void updateFirstName(String? value) {
    final error = validateFirstNameForm(value);
    state = state.copyWith(
      firstName: value,
      firstNameError: error,
      lastNameError: state.lastNameError,
      emailError: state.emailError,
      passwordError: state.passwordError,
      confirmPasswordError: state.confirmPasswordError,
    );
  }

  // Update last name and validate it immediately
  void updateLastName(String value) {
    final error = validateLastNameForm(value);
    state = state.copyWith(
      lastName: value,
      lastNameError: error,
      firstNameError: state.firstNameError,
      emailError: state.emailError,
      passwordError: state.passwordError,
      confirmPasswordError: state.confirmPasswordError,
    );
  }

  // Update email and validate it immediately
  void updateEmail(String value) {
    final error = validateEmailForm(value);
    state = state.copyWith(
      email: value,
      emailError: error,
      firstNameError: state.firstNameError,
      lastNameError: state.lastNameError,
      passwordError: state.passwordError,
      confirmPasswordError: state.confirmPasswordError,
    );
  }

  // Update password and validate it immediately
  // Also re-validate confirm password because password change may break matching
  void updatePassword(String value) {
    final passwordError = validatePasswordForm(value);
    final confirmPasswordError = validateConfirmPasswordForm(
      state.confirmPassword,
      value,
    );
    state = state.copyWith(
      password: value,
      passwordError: passwordError,
      confirmPasswordError: confirmPasswordError,
      firstNameError: state.firstNameError,
      lastNameError: state.lastNameError,
      emailError: state.emailError,
    );
  }

  // Update confirm password
  void updateConfirmPassword(String value) {
    final error = validateConfirmPasswordForm(value, state.password);
    state = state.copyWith(
      confirmPassword: value,
      confirmPasswordError: error,
      firstNameError: state.firstNameError,
      lastNameError: state.lastNameError,
      emailError: state.emailError,
      passwordError: state.passwordError,
    );
  }

  // switvh icon obscureText for password
  void toggleObscureTextPassword() {
    state = state.copyWith(
      obscureTextPassword: !state.obscureTextPassword,
      confirmPasswordError: state.confirmPasswordError,
      firstNameError: state.firstNameError,
      lastNameError: state.lastNameError,
      emailError: state.emailError,
      passwordError: state.passwordError,
    );
  }

  // switvh icon obscureText for Confirm password
  void toggleObscureTextConfirmPassword() {
    state = state.copyWith(
      obscureTextConfirmPassword: !state.obscureTextConfirmPassword,
      confirmPasswordError: state.confirmPasswordError,
      firstNameError: state.firstNameError,
      lastNameError: state.lastNameError,
      emailError: state.emailError,
      passwordError: state.passwordError,
    );
  }

  // Validate all fields in step one at once
  void validateStepOneFields() {
    state = state.copyWith(
      firstNameError: validateFirstNameForm(state.firstName),
      lastNameError: validateLastNameForm(state.lastName),
      emailError: validateEmailForm(state.email),
      passwordError: validatePasswordForm(state.password),
      confirmPasswordError: validateConfirmPasswordForm(
        state.confirmPassword,
        state.password,
      ),
    );
  }

  bool isValidStepOne(TrainerFormState state) {
    bool isValid = [
      state.firstNameError,
      state.lastNameError,
      state.emailError,
      state.passwordError,
      state.confirmPasswordError,
    ].any((error) => error != null);
    return !isValid;
  }

  //
  //---------------------------------------------------------------
  //------------------------ Step two -----------------------------
  //---------------------------------------------------------------
  //

  // Update Phone Number and validate it immediately
  void updatePhoneNumber(PhoneNumber value) {
    final error = validatePhoneNumberForm(value);
    state = state.copyWith(
      phoneNumberError: error,
      phoneNumber: value,
      yearsOfExperienceError: state.yearsOfExperienceError,
      specializationsError: state.specializationsError,
    );
  }

  // Update Years Of Experience and validate it immediately
  void updateYearsOfExperience(String value) {
    final error = _validator.validateYearsOfExperience(value);
    state = state.copyWith(
      years: value,
      yearsOfExperienceError: error,
      phoneNumberError: state.phoneNumberError,
      specializationsError: state.specializationsError,
    );
  }

  // Update Specializations and validate it immediately
  void updateSpecializations(String value) {
    // Parse and validate specializations list
    final list = parseSpecializations(value);
    final error = _validator.validateSpecializations(list);
    state = state.copyWith(
      rawSpecializationsInput: value,
      specializations: list,
      specializationsError: error,
      yearsOfExperienceError: state.yearsOfExperienceError,
      phoneNumberError: state.phoneNumberError,
    );
  }

  // Validate fields specific to step two
  void validateStepTwoFields() {
    state = state.copyWith(
      phoneNumberError: _validator.validatePhoneNumber(state.phoneNumber),
      yearsOfExperienceError: _validator.validateYearsOfExperience(state.years),
      specializationsError: _validator.validateSpecializations(
        state.specializations,
      ),
    );
  }

  bool isValidStepTwo(TrainerFormState state) {
    bool isValid = [
      state.phoneNumberError,
      state.yearsOfExperienceError,
      state.specializationsError,
    ].any((error) => error != null);
    return !isValid;
  }

  //
  //---------------------------------------------------------------
  //------------------------ Step three -----------------------------
  //---------------------------------------------------------------
  //

  // Update certification name and validate it immediately
  void updateCertificationName(String value) {
    final certificationNameError = _validator.validateCertificationName(value);
    state = state.copyWith(
      certificationName: value,
      certificationNameError: certificationNameError,
      uploadCertificationError: state.uploadCertificationError,
      termsAgreementError: state.termsAgreementError,
    );
  }

  // Update upload certification and validate it immediately
  void updateCertificationFile(File value, String fileName) {
    final uploadCertificationError = _validator.validateUploadCertification(
      value,
    );
    state = state.copyWith(
      fileCertification: value,
      fileName: fileName,
      uploadCertificationError: uploadCertificationError,
      termsAgreementError: state.termsAgreementError,
      certificationNameError: state.certificationNameError,
    );
  }

  // upload file PDF.
  void uploadFile(WidgetRef ref) async {
    final result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: [AppStrings.extensionPDF],
    );
    if (result != null && result.files.single.path != null) {
      // get file name to store
      final fileName = result.files.first.name;

      // get file to store
      final file = File(result.files.single.path!);

      ref
          .read(trainerFormProvider.notifier)
          .updateCertificationFile(file, fileName);
    }
  }

  // Update terms agreement and validate it immediately
  void toggleCheckTerms(bool value) {
    final termsAgreementError = _validator.validateTermsAgreement(value);

    state = state.copyWith(
      termsAgreement: value,
      termsAgreementError: termsAgreementError,
      certificationNameError: state.certificationNameError,
      uploadCertificationError: state.uploadCertificationError,
    );
  }

  // Validate fields specific to step three
  void validateStepThreeFields() {
    state = state.copyWith(
      certificationNameError: _validator.validateCertificationName(
        state.certificationName,
      ),
      uploadCertificationError: _validator.validateUploadCertification(
        state.fileCertification,
      ),
      termsAgreementError: _validator.validateTermsAgreement(
        state.termsAgreement,
      ),
    );
  }

  bool isValidStepThree(TrainerFormState state) {
    bool isValid = [
      state.certificationNameError,
      state.uploadCertificationError,
      state.termsAgreementError,
    ].any((error) => error != null);

    return !isValid;
  }
}

// Provider to make this StateNotifier available in the app
final trainerFormProvider =
    StateNotifierProvider<TrainerFormNotifier, TrainerFormState>(
      (ref) => TrainerFormNotifier(),
    );
