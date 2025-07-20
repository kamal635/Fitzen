import 'package:fitzen/core/constant/app_icons.dart';
import 'package:fitzen/core/constant/app_strings.dart';
import 'package:fitzen/core/services/controller.dart';
import 'package:fitzen/features/auth/presentation/providers/trainer_provider/trainer_form_validate/trainer_form_notifier.dart';
import 'package:fitzen/features/auth/presentation/providers/trainer_provider/trainer_form_validate/trainer_form_state.dart';
import 'package:fitzen/features/auth/presentation/shared_widgets/text_field_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// It displays any validation error and updates the form state
/// when the text changes.
class YearsExperienceField extends ConsumerWidget {
  /// Creates a [YearsExperienceField] widget.
  const YearsExperienceField({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Controls the text input for the yearsExperience field.
    final TextEditingController controller = ref.watch(
      yearsOfExperienceControllerProvider,
    );

    // Watches the validation error for the yearsExperience field.
    final String? yearsOfExperienceError = ref.watch(
      trainerFormProvider.select(
        (TrainerFormState e) => e.yearsOfExperienceError,
      ),
    );

    return TextFieldAuth(
      titleField: AppStrings.yearsExperience,
      hintText: AppStrings.exampleExperience,
      prefixIcon: AppIcons.calendar,
      controller: controller,

      errorText: yearsOfExperienceError,
      onChanged: (String value) {
        ref.read(trainerFormProvider.notifier).updateYearsOfExperience(value);
      },
    );
  }
}
