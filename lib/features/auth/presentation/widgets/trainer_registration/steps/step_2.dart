import 'package:fitzen/core/constant/app_paddings.dart';
import 'package:fitzen/core/constant/app_strings.dart';
import 'package:fitzen/features/auth/presentation/widgets/trainer_registration/form_fields/phone_number_field.dart';
import 'package:fitzen/features/auth/presentation/widgets/trainer_registration/form_fields/specializations_fields.dart';
import 'package:fitzen/features/auth/presentation/widgets/trainer_registration/form_fields/years_of_experience_field.dart';
import 'package:fitzen/features/auth/presentation/widgets/trainer_registration/next_buttons/step_two_next_button.dart';
import 'package:fitzen/features/auth/presentation/widgets/trainer_registration/step_registration_title.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// Second step of the trainer registration process.
class TrainerRegistrationStepTwo extends StatelessWidget {
  ///
  /// create [TrainerRegistrationStepTwo]
  const TrainerRegistrationStepTwo({super.key, this.onNext, this.onBack});

  /// [onNext] is triggered when proceeding to the next step.
  final VoidCallback? onNext;

  /// [onBack] is triggered when returning to the previous step.
  final VoidCallback? onBack;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppPaddings.horizontalGeneralPage,
      child: Column(
        children: <Widget>[
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  SizedBox(height: 35.h),

                  // title Step two
                  const StepsRegistraionTitle(title: AppStrings.step2Title),

                  SizedBox(height: 35.h),

                  // phone number
                  const PhoneNumberField(),

                  // years of experience
                  const YearsExperienceField(),

                  // specializations
                  const SpecializationsField(),

                  SizedBox(height: 15.h),
                ],
              ),
            ),
          ),

          // next/back buttons
          const StepTwoNextBackButton(),

          SizedBox(height: 50.h),
        ],
      ),
    );
  }
}
