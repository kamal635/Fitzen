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
class EmailField extends ConsumerWidget {
  /// Creates a [EmailField] widget.
  const EmailField({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Controls the text input for the email field.
    final TextEditingController controller = ref.watch(
      emailControllerProvider,
    );
    // Watches the validation error for the email field.
    final String? emailError = ref.watch(
      trainerFormProvider.select((TrainerFormState e) => e.emailError),
    );

    return TextFieldAuth(
      titleField: AppStrings.email,
      hintText: AppStrings.enteEmail,
      prefixIcon: AppIcons.email,
      controller: controller,

      errorText: emailError,
      onChanged: (String value) {
        ref.read(trainerFormProvider.notifier).updateEmail(value);
      },
    );
  }
}
