import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:fitzen/core/services/file_picker_service.dart';
import 'package:fitzen/core/utils/form_validators/trainer_validator.dart';
import 'package:fitzen/core/utils/helpers/parse_specializations.dart';
import 'package:fitzen/features/auth/presentation/providers/trainer_provider/trainer_form_validate/trainer_form_mixins.dart';
import 'package:fitzen/features/auth/presentation/providers/trainer_provider/trainer_form_validate/trainer_form_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl_phone_field/phone_number.dart';

/// Manages trainer form state and validations using mixins.
class TrainerFormNotifier extends StateNotifier<TrainerFormState>
    with
        NameFormMixin,
        EmailFormMixin,
        PasswordFormMixin,
        ConfirmPasswordFormMixin,
        PhoneNumberFormMixin {
  ///
  /// Creates a [TrainerFormNotifier] with a file picker service.
  TrainerFormNotifier(this.filePickerService) : super(const TrainerFormState());

  /// Service for picking files (e.g., certifications).
  final IFilePickerService filePickerService;

  // Validator instance to handle custom validation outside the mixins
  final TrainerValidator _validator = TrainerValidator();

  //
  //---------------------------------------------------------------
  //------------------------ Step one -----------------------------
  //---------------------------------------------------------------
  //

  /// Update first name and validate it immediately
  void updateFirstName(String? value) {
    final String? error = validateFirstNameForm(value);
    state = state.copyWith(
      firstName: value,
      firstNameError: error,
      lastNameError: state.lastNameError,
      emailError: state.emailError,
      passwordError: state.passwordError,
      confirmPasswordError: state.confirmPasswordError,
    );
  }

  /// Update last name and validate it immediately
  void updateLastName(String value) {
    final String? error = validateLastNameForm(value);
    state = state.copyWith(
      lastName: value,
      lastNameError: error,
      firstNameError: state.firstNameError,
      emailError: state.emailError,
      passwordError: state.passwordError,
      confirmPasswordError: state.confirmPasswordError,
    );
  }

  /// Update email and validate it immediately
  void updateEmail(String value) {
    final String? error = validateEmailForm(value);
    state = state.copyWith(
      email: value,
      emailError: error,
      firstNameError: state.firstNameError,
      lastNameError: state.lastNameError,
      passwordError: state.passwordError,
      confirmPasswordError: state.confirmPasswordError,
    );
  }

  /// Update password and validate it immediately
  /// Also re-validate confirm password because
  ///  password change may break matching
  void updatePassword(String value) {
    final String? passwordError = validatePasswordForm(value);
    final String? confirmPasswordError = validateConfirmPasswordForm(
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

  /// Update confirm password
  void updateConfirmPassword(String value) {
    final String? error = validateConfirmPasswordForm(value, state.password);
    state = state.copyWith(
      confirmPassword: value,
      confirmPasswordError: error,
      firstNameError: state.firstNameError,
      lastNameError: state.lastNameError,
      emailError: state.emailError,
      passwordError: state.passwordError,
    );
  }

  /// switvh icon obscureText for password
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

  /// switvh icon obscureText for Confirm password
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

  /// Validate all fields in step one at once
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

  /// Checks if step one of the form is valid by ensuring no errors exist.
  bool isValidStepOne(TrainerFormState state) {
    final bool isValid = <String?>[
      state.firstNameError,
      state.lastNameError,
      state.emailError,
      state.passwordError,
      state.confirmPasswordError,
    ].any((String? error) => error != null);
    return !isValid;
  }

  //
  //---------------------------------------------------------------
  //------------------------ Step two -----------------------------
  //---------------------------------------------------------------
  //

  /// Update Phone Number and validate it immediately
  void updatePhoneNumber(PhoneNumber value) {
    final String? error = validatePhoneNumberForm(value);
    state = state.copyWith(
      phoneNumberError: error,
      phoneNumber: value,
      yearsOfExperienceError: state.yearsOfExperienceError,
      specializationsError: state.specializationsError,
    );
  }

  /// Update Years Of Experience and validate it immediately
  void updateYearsOfExperience(String value) {
    final String? error = _validator.validateYearsOfExperience(value);
    state = state.copyWith(
      years: value,
      yearsOfExperienceError: error,
      phoneNumberError: state.phoneNumberError,
      specializationsError: state.specializationsError,
    );
  }

  /// Update Specializations and validate it immediately
  void updateSpecializations(String value) {
    // Parse and validate specializations list
    final List<String> list = parseSpecializations(value);
    final String? error = _validator.validateSpecializations(list);
    state = state.copyWith(
      rawSpecializationsInput: value,
      specializations: list,
      specializationsError: error,
      yearsOfExperienceError: state.yearsOfExperienceError,
      phoneNumberError: state.phoneNumberError,
    );
  }

  /// Validate fields specific to step two
  void validateStepTwoFields() {
    state = state.copyWith(
      phoneNumberError: _validator.validatePhoneNumber(state.phoneNumber),
      yearsOfExperienceError: _validator.validateYearsOfExperience(state.years),
      specializationsError: _validator.validateSpecializations(
        state.specializations,
      ),
    );
  }

  /// Checks if step two of the form is valid by ensuring no errors exist.
  bool isValidStepTwo(TrainerFormState state) {
    final bool isValid = <String?>[
      state.phoneNumberError,
      state.yearsOfExperienceError,
      state.specializationsError,
    ].any((String? error) => error != null);
    return !isValid;
  }

  //
  //---------------------------------------------------------------
  //------------------------ Step three -----------------------------
  //---------------------------------------------------------------
  //

  /// Update certification name and validate it immediately
  void updateCertificationName(String value) {
    final String? certificationNameError = _validator.validateCertificationName(
      value,
    );
    state = state.copyWith(
      certificationName: value,
      certificationNameError: certificationNameError,
      uploadCertificationError: state.uploadCertificationError,
      termsAgreementError: state.termsAgreementError,
    );
  }

  /// Update upload certification and validate it immediately
  void updateCertificationFile(File value, String fileName) {
    final String? uploadCertificationError = _validator
        .validateUploadCertification(
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

  /// upload file PDF.
  Future<void> uploadFile() async {
    final FilePickerResult? result = await filePickerService.pickPdf();
    if (result != null && result.files.single.path != null) {
      final String fileName = result.files.first.name;
      final File file = File(result.files.single.path!);

      updateCertificationFile(file, fileName);
    }
  }

  /// Update terms agreement and validate it immediately
  void toggleCheckTerms({required bool value}) {
    final String? termsAgreementError = _validator.validateTermsAgreement(
      value,
    );

    state = state.copyWith(
      termsAgreement: value,
      termsAgreementError: termsAgreementError,
      certificationNameError: state.certificationNameError,
      uploadCertificationError: state.uploadCertificationError,
    );
  }

  /// Validate fields specific to step three
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

  /// Checks if step three of the form is valid by ensuring no errors exist.
  bool isValidStepThree(TrainerFormState state) {
    final bool isValid = <String?>[
      state.certificationNameError,
      state.uploadCertificationError,
      state.termsAgreementError,
    ].any((String? error) => error != null);

    return !isValid;
  }
}

/// Provider to make this StateNotifier available in the app
final StateNotifierProvider<TrainerFormNotifier, TrainerFormState>
trainerFormProvider =
    StateNotifierProvider<TrainerFormNotifier, TrainerFormState>(
      (Ref<TrainerFormState> ref) => TrainerFormNotifier(FilePickerService()),
    );
