import 'package:fitzen/core/constant/app_strings.dart';
import 'package:fitzen/core/utils/form_validators/trainer_validator.dart';
import 'package:intl_phone_field/phone_number.dart';

/// Mixin Validates first and last name inputs.
mixin NameFormMixin {
  /// Validates first name.
  String? validateFirstNameForm(String? firstName) {
    return TrainerValidator().validateName(
      firstName,
      fieldName: AppStrings.firstName,
    );
  }

  /// Validates last name.
  String? validateLastNameForm(String lastName) {
    return TrainerValidator().validateName(
      lastName,
      fieldName: AppStrings.lastName,
    );
  }
}

//
// ------------------------------------------------------------
//

/// Mixin Validates email input.
mixin EmailFormMixin {
  /// Validates email.
  String? validateEmailForm(String email) {
    return TrainerValidator().validateEmail(email);
  }
}

//
// ------------------------------------------------------------
//

/// Mixin Validates password input.
mixin PasswordFormMixin {
  /// Validates password.
  String? validatePasswordForm(String password) {
    return TrainerValidator().validatePassword(password);
  }
}

//
// ------------------------------------------------------------
//

/// Mixin Validates confirm password input.
mixin ConfirmPasswordFormMixin {
  /// Validates confirm password matches password.
  String? validateConfirmPasswordForm(String confirmPassword, String password) {
    return TrainerValidator().validateConfirmPassword(
      confirmPassword,
      password,
    );
  }
}

//
// ------------------------------------------------------------
//

/// Mixin Validates phone number input.
mixin PhoneNumberFormMixin {
  /// Validates phone number.
  String? validatePhoneNumberForm(PhoneNumber phoneNumber) {
    return TrainerValidator().validatePhoneNumber(phoneNumber);
  }
}
