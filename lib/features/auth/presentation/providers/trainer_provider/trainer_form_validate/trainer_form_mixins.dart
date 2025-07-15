import 'package:fitzen/core/constant/app_strings.dart';
import 'package:fitzen/core/utils/form_validators/trainer_validator.dart';
import 'package:intl_phone_field/phone_number.dart';

// / Mixin for validating first name and last name fields.
mixin NameFormMixin {
  String? validateFirstNameForm(String? firstName) {
    return TrainerValidator().validateName(
      firstName,
      fieldName: AppStrings.firstName,
    );
  }

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

/// Mixin for validating email field.
mixin EmailFormMixin {
  String? validateEmailForm(String email) {
    return TrainerValidator().validateEmail(email);
  }
}

//
// ------------------------------------------------------------
//

/// Mixin for validating password field.
mixin PasswordFormMixin {
  String? validatePasswordForm(String password) {
    return TrainerValidator().validatePassword(password);
  }
}

//
// ------------------------------------------------------------
//

/// Mixin for validating confirm password field.
mixin ConfirmPasswordFormMixin {
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

/// Mixin for validating phone number field.
mixin PhoneNumberFormMixin {
  String? validatePhoneNumberForm(PhoneNumber phoneNumber) {
    return TrainerValidator().validatePhoneNumber(phoneNumber);
  }
}
