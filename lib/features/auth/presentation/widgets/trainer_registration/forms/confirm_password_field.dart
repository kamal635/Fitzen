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
class ConfirmPasswordField extends ConsumerWidget {
  /// Creates a [ConfirmPasswordField] widget.
  const ConfirmPasswordField({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Controls the text input for the confirmPassword field.
    final TextEditingController controller = ref.watch(
      confirmPasswordControllerProvider,
    );
    // Watches the validation error for the confirmPassword field.
    final String? confirmPasswordError = ref.watch(
      trainerFormProvider.select(
        (TrainerFormState e) => e.confirmPasswordError,
      ),
    );

    // toggle state obscure for switch show and hide confirm password.
    final bool obscureTextConfirmPassword = ref.watch(
      trainerFormProvider.select(
        (TrainerFormState e) => e.obscureTextConfirmPassword,
      ),
    );

    return TextFieldAuth(
      controller: controller,
      obscureText: obscureTextConfirmPassword,
      titleField: AppStrings.confirmPassword,
      hintText: AppStrings.confirmYourPassword,
      prefixIcon: AppIcons.lock,

      suffixIcon: obscureTextConfirmPassword ? AppIcons.eye : AppIcons.eyeOff,
      onTapSuffixIcon: () {
        ref
            .read(trainerFormProvider.notifier)
            .toggleObscureTextConfirmPassword();
      },

      errorText: confirmPasswordError,
      textInputAction: TextInputAction.done,
      onChanged: (String value) {
        ref.read(trainerFormProvider.notifier).updateConfirmPassword(value);
      },
    );
  }
}
