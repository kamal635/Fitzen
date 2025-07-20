import 'package:fitzen/features/auth/presentation/providers/trainer_provider/trainer_form_validate/trainer_form_notifier.dart';
import 'package:fitzen/features/auth/presentation/providers/trainer_provider/trainer_form_validate/trainer_form_state.dart';
import 'package:fitzen/features/auth/presentation/widgets/trainer_registration/custom_next_back_buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// A [ConsumerWidget] that displays the "Next & Back" button
/// in the trainer registration step two form.
class StepTwoNextBackButton extends ConsumerWidget {
  /// Creates a [StepTwoNextBackButton] widget.
  ///
  const StepTwoNextBackButton({super.key, this.onNext, this.onBack});

  /// Called when the form validation passes and the user
  /// is ready to proceed to the next step.
  final VoidCallback? onNext;

  /// Called when user want back to before step
  final VoidCallback? onBack;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return CustomNextBackButtons(
      onBack: onBack,
      onNext: () {
        final TrainerFormNotifier notifier = ref.read(
          trainerFormProvider.notifier,
        )..validateStepTwoFields();

        final TrainerFormState state = ref.read(trainerFormProvider);
        final bool isValid = notifier.isValidStepTwo(state);
        if (isValid) {
          onNext?.call();
        }
      },
    );
  }
}
