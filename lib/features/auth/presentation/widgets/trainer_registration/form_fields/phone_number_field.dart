import 'package:fitzen/core/constant/app_strings.dart';
import 'package:fitzen/core/services/controller.dart';
import 'package:fitzen/core/widgets/custom_phone_number_field.dart';
import 'package:fitzen/features/auth/presentation/providers/trainer_provider/trainer_form_validate/trainer_form_notifier.dart';
import 'package:fitzen/features/auth/presentation/providers/trainer_provider/trainer_form_validate/trainer_form_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl_phone_field/phone_number.dart';

/// It displays any validation error and updates the form state
/// when the text changes.
class PhoneNumberField extends ConsumerWidget {
  /// Creates a [PhoneNumberField] widget.
  const PhoneNumberField({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Controls the text input for the phoneNumber field.
    final TextEditingController controller = ref.watch(
      phoneNumberControllerProvider,
    );
    // Watches the validation error for the phoneNumber field.
    final String? phoneNumberError = ref.watch(
      trainerFormProvider.select((TrainerFormState e) => e.phoneNumberError),
    );

    return CustomPhoneNumberField(
      spaceBetweenField: phoneNumberError != null ? 20.h : 0,
      titleField: AppStrings.phoneNumber,

      controller: controller,
      errorText: phoneNumberError,
      onChanged: (PhoneNumber phone) {
        ref.read(trainerFormProvider.notifier).updatePhoneNumber(phone);
      },
    );
  }
}
