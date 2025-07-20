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
class CertificationNameField extends ConsumerWidget {
  /// Creates a [CertificationNameField] widget.
  const CertificationNameField({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Controls the text input for the certificationName field.
    final TextEditingController controller = ref.watch(
      certificationNameControllerProvider,
    );

    // Watches the validation error for the certificationName field.
    final String? certificationNameError = ref.watch(
      trainerFormProvider.select(
        (TrainerFormState e) => e.certificationNameError,
      ),
    );

    return TextFieldAuth(
      titleField: AppStrings.certificationName,
      hintText: AppStrings.exampleCertification,
      prefixIcon: AppIcons.certificate,
      controller: controller,

      errorText: certificationNameError,
      onChanged: (String value) {
        ref.read(trainerFormProvider.notifier).updateCertificationName(value);
      },
    );
  }
}
