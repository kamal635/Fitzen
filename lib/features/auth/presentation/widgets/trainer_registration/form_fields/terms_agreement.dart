import 'package:fitzen/features/auth/presentation/providers/trainer_provider/trainer_form_validate/trainer_form_notifier.dart';
import 'package:fitzen/features/auth/presentation/providers/trainer_provider/trainer_form_validate/trainer_form_state.dart';
import 'package:fitzen/features/auth/presentation/widgets/trainer_registration/terms_agreement_checkbox.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// It displays any validation error and updates the form state
/// when the text changes.
class TermsAgreementField extends ConsumerWidget {
  /// Creates a [TermsAgreementField] widget.
  const TermsAgreementField({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Watches the validation error for the confirmPassword field.
    final String? termsAgreementError = ref.watch(
      trainerFormProvider.select(
        (TrainerFormState e) => e.termsAgreementError,
      ),
    );

    // Watches the validation error for the confirmPassword field.
    final bool termsAgreement = ref.watch(
      trainerFormProvider.select(
        (TrainerFormState e) => e.termsAgreement,
      ),
    );

    return TermsAgreementCheckbox(
      errorText: termsAgreementError,
      value: termsAgreement,
      onChanged: (bool? value) {
        ref.read(trainerFormProvider.notifier).toggleCheckTerms(value: value!);
      },
    );
  }
}
