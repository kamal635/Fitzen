import 'package:fitzen/core/utils/form_validators/mixins/password_validator_mixin.dart';

/// Validator for reset password screen ( password + confirm password).
class ResetPasswordValidator
    with PasswordValidatorMixin, ConfirmPasswordValidatorMixin {}
