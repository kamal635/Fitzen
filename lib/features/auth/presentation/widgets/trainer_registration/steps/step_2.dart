import 'package:fitzen/core/constant/app_icons.dart';
import 'package:fitzen/core/constant/app_paddings.dart';
import 'package:fitzen/core/constant/app_strings.dart';
import 'package:fitzen/core/widgets/custom_phone_number_field.dart';
import 'package:fitzen/features/auth/presentation/providers/trainer_provider/trainer_form_validate/trainer_form_notifier.dart';
import 'package:fitzen/features/auth/presentation/shared_widgets/text_field_auth.dart';
import 'package:fitzen/features/auth/presentation/widgets/trainer_registration/custom_next_back_buttons.dart';
import 'package:fitzen/features/auth/presentation/widgets/trainer_registration/step_registration_title.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// Second step of the trainer registration process.
class TrainerRegistrationStepTwo extends ConsumerWidget {
  ///
  /// create [TrainerRegistrationStepTwo]
  const TrainerRegistrationStepTwo({super.key, this.onNext, this.onBack});

  /// [onNext] is triggered when proceeding to the next step.
  final VoidCallback? onNext;

  /// [onBack] is triggered when returning to the previous step.
  final VoidCallback? onBack;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(trainerFormProvider);
    return Padding(
      padding: AppPaddings.horizontalGeneralPage,
      child: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SizedBox(height: 35.h),

                  // title Step two
                  const StepsRegistraionTitle(title: AppStrings.step2Title),

                  SizedBox(height: 35.h),

                  // phone number
                  CustomPhoneNumberField(
                    spaceBetweenField: state.phoneNumberError != null
                        ? 20.h
                        : 0,
                    titleField: AppStrings.phoneNumber,

                    initialValue: state.phoneNumber?.number ?? '',
                    errorText: state.phoneNumberError,
                    onChanged: (phone) {
                      ref
                          .read(trainerFormProvider.notifier)
                          .updatePhoneNumber(phone);
                    },
                  ),

                  // years of experience
                  TextFieldAuth(
                    titleField: AppStrings.yearsExperience,
                    hintText: AppStrings.exampleExperience,
                    prefixIcon: AppIcons.calendar,
                    isNumberKeyboard: true,
                    keyboardType: TextInputType.number,

                    initialValue: state.years,
                    errorText: state.yearsOfExperienceError,
                    onChanged: (value) {
                      ref
                          .read(trainerFormProvider.notifier)
                          .updateYearsOfExperience(value);
                    },
                  ),

                  // specializations
                  TextFieldAuth(
                    titleField: AppStrings.specializations,
                    hintText: AppStrings.exampleSpecializations,
                    prefixIcon: AppIcons.dumbbell,
                    textInputAction: TextInputAction.done,

                    initialValue: state.rawSpecializationsInput,
                    errorText: state.specializationsError,
                    onChanged: (value) {
                      ref
                          .read(trainerFormProvider.notifier)
                          .updateSpecializations(value);
                    },
                  ),

                  SizedBox(height: 15.h),
                ],
              ),
            ),
          ),

          // next/back buttons
          CustomNextBackButtons(
            onBack: onBack,
            onNext: () {
              final notifier = ref.read(trainerFormProvider.notifier)
                ..validateStepTwoFields();

              final state = ref.read(trainerFormProvider);
              final isValid = notifier.isValidStepTwo(state);
              if (isValid) {
                onNext?.call();
              }
            },
          ),

          SizedBox(height: 50.h),
        ],
      ),
    );
  }
}
