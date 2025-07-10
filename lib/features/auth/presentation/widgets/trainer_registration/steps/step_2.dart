import 'package:fitzen/core/constant/app_icons.dart';
import 'package:fitzen/core/constant/app_paddings.dart';
import 'package:fitzen/core/constant/app_strings.dart';
import 'package:fitzen/features/auth/presentation/shared_widgets/text_field_auth.dart';
import 'package:fitzen/features/auth/presentation/widgets/trainer_registration/custom_next_back_buttons.dart';
import 'package:fitzen/features/auth/presentation/widgets/trainer_registration/step_registration_title.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TrainerRegistrationStepTwo extends StatelessWidget {
  const TrainerRegistrationStepTwo({super.key, this.onNext, this.onBack});
  final Function()? onNext;
  final Function()? onBack;
  @override
  Widget build(BuildContext context) {
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
                  const TextFieldAuth(
                    titleField: AppStrings.phoneNumber,
                    hintText: AppStrings.enterPhoneNumber,
                    prefixIcon: AppIcons.phone,
                  ),

                  // years of experience
                  const TextFieldAuth(
                    titleField: AppStrings.yearsExperience,
                    hintText: AppStrings.exampleExperience,
                    prefixIcon: AppIcons.yearsExperience,
                    isNumberKeyboard: true,
                    keyboardType: TextInputType.number,
                  ),

                  // specializations
                  const TextFieldAuth(
                    titleField: AppStrings.specializations,
                    hintText: AppStrings.exampleSpecializations,
                    prefixIcon: AppIcons.dumble,
                  ),

                  SizedBox(height: 15.h),
                ],
              ),
            ),
          ),

          // next/back buttons
          CustomNextBackButtons(onNext: onNext, onBack: onBack),

          SizedBox(height: 50.h),
        ],
      ),
    );
  }
}
