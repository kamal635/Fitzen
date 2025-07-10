import 'package:fitzen/core/utils/form_validators/trainer_validator.dart';
import 'package:fitzen/core/utils/helpers/parse_specializations.dart';
import 'package:fitzen/features/auth/presentation/providers/trainer_form_mixins.dart';
import 'package:fitzen/features/auth/presentation/providers/trainer_form_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class TrainerFormNotifier extends StateNotifier<TrainerFormState>
    with
        NameFormMixin,
        EmailFormMixin,
        PasswordFormMixin,
        ConfirmPasswordFormMixin,
        PhoneNumberFormMixin {
  TrainerFormNotifier() : super(const TrainerFormState());

  /// Validates the years of experience field
  void validateYearsOfExperienceForm() {
    final validate = TrainerValidator();
    final error = validate.validateYearsOfExperience(state.years);
    state = state.copyWith(errorYearsOfExperience: error);
  }

  /// Validates the certification name field
  void validateCertificationNameForm() {
    final validate = TrainerValidator();
    final error = validate.validateCertificationName(state.certificationName);
    state = state.copyWith(errorCertificationName: error);
  }

  void validateSpecializationsForm() {
    final list = parseSpecializations(state.rawSpecializationsInput);
    final validate = TrainerValidator();
    final error = validate.validateSpecializations(list);
    state = state.copyWith(specializations: list, errorSpecializations: error);
  }

  /// Validates the uploaded certification file
  void validateUploadCertificationForm() {
    final validate = TrainerValidator();
    final error = validate.validateUploadCertification(state.fileCertification);
    state = state.copyWith(errorUploadCertification: error);
  }
}

//
//--------------------------------------------------------------------
//

/// Provider for managing trainer registration form state and validation.
final trainerFormProvider =
    StateNotifierProvider<TrainerFormNotifier, TrainerFormState>(
      (ref) => TrainerFormNotifier(),
    );
