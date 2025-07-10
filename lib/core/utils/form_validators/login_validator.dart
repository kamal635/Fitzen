import 'package:fitzen/core/utils/form_validators/mixins/email_validator_mixin.dart';
import 'package:fitzen/core/utils/form_validators/mixins/password_validator_mixin.dart';

/// Validator for login forms (email + password).
class LoginValidator with EmailValidatorMixin, PasswordValidatorMixin {}
