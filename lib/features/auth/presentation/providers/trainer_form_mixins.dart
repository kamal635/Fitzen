import 'package:fitzen/core/constant/app_strings.dart';
import 'package:fitzen/core/utils/form_validators/trainer_validator.dart';
import 'package:fitzen/features/auth/presentation/providers/trainer_form_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// Mixin for validating first name and last name fields.
mixin NameFormMixin on StateNotifier<TrainerFormState> {
  void validateFirstNameForm() {
    final validator = TrainerValidator();
    final error = validator.validateName(
      state.firstName,
      fieldName: AppStrings.firstName,
    );
    state = state.copyWith(firstNameError: error);
  }

  void validateLastNameForm() {
    final validator = TrainerValidator();
    final error = validator.validateName(
      state.lastName,
      fieldName: AppStrings.lastName,
    );
    state = state.copyWith(lastNameError: error);
  }
}

//
// ------------------------------------------------------------
//

/// Mixin for validating email field.
mixin EmailFormMixin on StateNotifier<TrainerFormState> {
  void validateEmailForm() {
    final validator = TrainerValidator();
    final error = validator.validateEmail(state.email);
    state = state.copyWith(email: error);
  }
}

//
// ------------------------------------------------------------
//

/// Mixin for validating password field.
mixin PasswordFormMixin on StateNotifier<TrainerFormState> {
  void validatePasswordForm() {
    final validator = TrainerValidator();
    final error = validator.validateEmail(state.password);
    state = state.copyWith(password: error);
  }
}

//
// ------------------------------------------------------------
//

/// Mixin for validating confirm password field.
mixin ConfirmPasswordFormMixin on StateNotifier<TrainerFormState> {
  void validateConfirmPasswordForm() {
    final validator = TrainerValidator();
    final error = validator.validateEmail(state.confirmPassword);
    state = state.copyWith(confirmPassword: error);
  }
}

//
// ------------------------------------------------------------
//

/// Mixin for validating phone number field.
mixin PhoneNumberFormMixin on StateNotifier<TrainerFormState> {
  void validatePhoneNumberForm() {
    final validator = TrainerValidator();
    final error = validator.validateEmail(state.phoneNumber);
    state = state.copyWith(phoneNumber: error);
  }
}
