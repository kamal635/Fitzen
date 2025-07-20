import 'package:fitzen/core/constant/app_strings.dart';
import 'package:fitzen/core/widgets/custom_button.dart';
import 'package:fitzen/features/auth/presentation/providers/trainer_provider/trainer_form_validate/trainer_form_notifier.dart';
import 'package:fitzen/features/auth/presentation/providers/trainer_provider/trainer_form_validate/trainer_form_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// A [ConsumerWidget] that displays the "Next" button
/// in the trainer registration step one form.
///
/// When pressed, it validates the form fields and triggers
/// the [onNext] callback if the validation passes.
class StepOneNextButton extends ConsumerWidget {
  /// Creates a [StepOneNextButton] widget.
  ///
  const StepOneNextButton({super.key, this.onNext});

  /// Called when the form validation passes and the user
  /// is ready to proceed to the next step.
  final VoidCallback? onNext;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return CustomButton(
      title: AppStrings.next,
      // Handle the Next button press in step one
      onPressed: () {
        // validate step one + go next
        validateStepOneAndGoNext(ref);
      },
    );
  }

  /// validate step one when user tapped to next step
  void validateStepOneAndGoNext(WidgetRef ref) {
    // 1 Get the notifier to call validation and access logic
    final TrainerFormNotifier notifier = ref.read(trainerFormProvider.notifier)
      // 2 Trigger validation: this updates the state immediately
      ..validateStepOneFields();

    //  IMPORTANT:
    // ref.watch(trainerFormProvider) won't give the new updated state here,
    // because rebuild happens in the *next frame* after state change.
    //
    // ref.read always reads the *latest* value at this exact moment.
    //
    // So, to get the updated errors, we read the state again:
    final TrainerFormState state = ref.read(trainerFormProvider);

    // 3 Check validity using the freshly updated state
    final bool isValid = notifier.isValidStepOne(state);

    // 4 If all fields are valid, move to the next step
    if (isValid) {
      onNext?.call();
    }
  }
}
