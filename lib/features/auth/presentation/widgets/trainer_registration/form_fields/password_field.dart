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
class PasswordField extends ConsumerWidget {
  /// Creates a [PasswordField] widget.
  const PasswordField({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Controls the text input for the password field.
    final TextEditingController controller = ref.watch(
      passwordControllerProvider,
    );

    // Watches the validation error for the password field.
    final String? passwordError = ref.watch(
      trainerFormProvider.select((TrainerFormState e) => e.passwordError),
    );

    // toggle state obscure for switch show and hide password.
    final bool obscureTextPassword = ref.watch(
      trainerFormProvider.select((TrainerFormState e) => e.obscureTextPassword),
    );

    return TextFieldAuth(
      obscureText: obscureTextPassword,
      titleField: AppStrings.password,
      hintText: AppStrings.createPassword,
      prefixIcon: AppIcons.lock,

      suffixIcon: obscureTextPassword ? AppIcons.eye : AppIcons.eyeOff,
      controller: controller,
      onTapSuffixIcon: () {
        ref.read(trainerFormProvider.notifier).toggleObscureTextPassword();
      },

      errorText: passwordError,
      onChanged: (String value) {
        ref.read(trainerFormProvider.notifier).updatePassword(value);
      },
    );
  }
}
