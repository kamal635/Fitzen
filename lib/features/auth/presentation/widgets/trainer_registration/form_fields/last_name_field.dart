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
class LastNameField extends ConsumerWidget {
  /// Creates a [LastNameField] widget.
  const LastNameField({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Controls the text input for the last name field.
    final TextEditingController controller = ref.watch(
      lastNameControllerProvider,
    );

    // Watches the validation error for the last name field.
    final String? lastNameError = ref.watch(
      trainerFormProvider.select((TrainerFormState e) => e.lastNameError),
    );

    return TextFieldAuth(
      titleField: AppStrings.lastName,
      hintText: AppStrings.enteLastName,
      prefixIcon: AppIcons.user,
      controller: controller,

      errorText: lastNameError,
      onChanged: (String value) {
        ref.read(trainerFormProvider.notifier).updateLastName(value);
      },
    );
  }
}
