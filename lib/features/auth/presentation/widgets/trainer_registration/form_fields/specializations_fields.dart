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
class SpecializationsField extends ConsumerWidget {
  /// Creates a [SpecializationsField] widget.
  const SpecializationsField({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Controls the text input for the specializations field.
    final TextEditingController controller = ref.watch(
      specializationsControllerProvider,
    );

    // Watches the validation error for the specializations field.
    final String? specializationsError = ref.watch(
      trainerFormProvider.select(
        (TrainerFormState e) => e.specializationsError,
      ),
    );

    return TextFieldAuth(
      titleField: AppStrings.specializations,
      hintText: AppStrings.exampleSpecializations,
      prefixIcon: AppIcons.dumbbell,
      textInputAction: TextInputAction.done,
      controller: controller,

      errorText: specializationsError,
      onChanged: (String value) {
        ref.read(trainerFormProvider.notifier).updateSpecializations(value);
      },
    );
  }
}
