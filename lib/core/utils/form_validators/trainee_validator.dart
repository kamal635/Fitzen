import 'package:fitzen/core/utils/form_validators/mixins/email_validator_mixin.dart';
import 'package:fitzen/core/utils/form_validators/mixins/name_validator_mixin.dart';
import 'package:fitzen/core/utils/form_validators/mixins/password_validator_mixin.dart';

/// Validator for trainee registration (email + password + confirm password + names).
class TraineeValidator
    with
        EmailValidatorMixin,
        PasswordValidatorMixin,
        NameValidatorMixin,
        ConfirmPasswordValidatorMixin {}
