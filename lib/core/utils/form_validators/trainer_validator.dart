import 'dart:io';

import 'package:fitzen/core/constant/validation_messages.dart';
import 'package:fitzen/core/utils/form_validators/mixins/email_validator_mixin.dart';
import 'package:fitzen/core/utils/form_validators/mixins/name_validator_mixin.dart';
import 'package:fitzen/core/utils/form_validators/mixins/password_validator_mixin.dart';
import 'package:fitzen/core/utils/form_validators/mixins/phone_number_mixin_validator.dart';

/// Validator for trainer registration.
/// Inherits common validations and adds trainer-specific validations.
class TrainerValidator
    with
        NameValidatorMixin,
        EmailValidatorMixin,
        PasswordValidatorMixin,
        ConfirmPasswordValidatorMixin,
        PhoneNumberMixinValidator {
  //
  //-------------------------------------------------------------------
  //

  /// validator years of experience logic
  String? validateYearsOfExperience(String? years) {
    if (years == null || years.trim().isEmpty) {
      return ValidationMessages.yearsOfExperienceEmpty;
    }

    final int? parsed = int.tryParse(years);
    if (parsed == null) {
      return ValidationMessages.yearsOfExperienceNotNumber;
    }

    if (parsed < 0) {
      return ValidationMessages.yearsOfExperienceNegative;
    }

    if (parsed > 50) {
      return ValidationMessages.yearsOfExperienceTooHigh.replaceAll(
        ValidationConstants.max,
        ValidationConstants.numMax,
      );
    }
    return null; // valid
  }

  //
  //-------------------------------------------------------------------
  //

  /// validator specializations logic
  String? validateSpecializations(List<String>? specs) {
    if (specs == null || specs.isEmpty) {
      return ValidationMessages.specializationMustAddOne;
    }

    for (final String spec in specs) {
      if (spec.trim().length < 2) {
        return ValidationMessages.specializationTooShort;
      }

      if (spec.trim().length > 50) {
        return ValidationMessages.specializationTooHigh;
      }

      final RegExp containsLettersRegex = RegExp(
        ValidationConstants.containsLettersRegex,
      );
      if (!containsLettersRegex.hasMatch(spec.trim())) {
        return ValidationMessages.specializationTooHigh;
      }
    }

    return null; // valid
  }

  //
  //-------------------------------------------------------------------
  //

  /// validator Certification name logic
  String? validateCertificationName(String? cert) {
    if (cert == null || cert.trim().isEmpty || cert.trim().length < 2) {
      return ValidationMessages.certificationTooShort;
    }

    if (cert.length > 40) {
      return ValidationMessages.certificationTooHigh;
    }

    final RegExp containsLettersRegex = RegExp(
      ValidationConstants.containsLettersRegex,
    );
    if (!containsLettersRegex.hasMatch(cert.trim())) {
      return ValidationMessages.containsLettersCertification;
    }
    return null; // valid
  }

  //
  //-------------------------------------------------------------------
  //

  /// validator upload certitcation logic
  String? validateUploadCertification(File? file) {
    if (file == null) {
      return ValidationMessages.mustSelectCertificate;
    }
    return null; // valid
  }

  //
  //-------------------------------------------------------------------
  //

  /// validator Terms Agreement logic
  String? validateTermsAgreement(bool terms) {
    if (!terms) {
      return ValidationMessages.termsAgreement;
    }

    return null; // valid
  }
}
