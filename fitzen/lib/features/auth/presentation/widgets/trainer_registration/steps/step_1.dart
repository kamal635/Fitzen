import 'package:fitzen/core/constant/app_icons.dart';
import 'package:fitzen/core/constant/app_paddings.dart';
import 'package:fitzen/core/constant/app_strings.dart';
import 'package:fitzen/core/widgets/custom_button.dart';
import 'package:fitzen/features/auth/presentation/shared_widgets/already_have_account.dart';
import 'package:fitzen/features/auth/presentation/shared_widgets/text_field_auth.dart';
import 'package:fitzen/features/auth/presentation/widgets/trainer_registration/step_registration_title.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TrainerRegistrationStepOne extends StatelessWidget {
  const TrainerRegistrationStepOne({super.key, this.onNext});
  final Function()? onNext;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppPaddings.horizontalGeneralPage,
      child: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SizedBox(height: 35.h),

                  // title Step One
                  const StepsRegistraionTitle(title: AppStrings.step1Title),

                  SizedBox(height: 35.h),

                  // First Name
                  const TextFieldAuth(
                    titleField: AppStrings.firstName,
                    hintText: AppStrings.enterFirstName,
                    prefixIcon: AppIcons.person,
                  ),

                  // Last Name
                  const TextFieldAuth(
                    titleField: AppStrings.lastName,
                    hintText: AppStrings.enteLastName,
                    prefixIcon: AppIcons.person,
                  ),

                  // Email
                  const TextFieldAuth(
                    titleField: AppStrings.email,
                    hintText: AppStrings.enteEmail,
                    prefixIcon: AppIcons.email,
                  ),

                  // Password
                  const TextFieldAuth(
                    titleField: AppStrings.password,
                    hintText: AppStrings.createPassword,
                    prefixIcon: AppIcons.lock,
                    suffixIcon: AppIcons.visibilityOff,
                  ),

                  // Confirm Password
                  const TextFieldAuth(
                    titleField: AppStrings.confirmPassword,
                    hintText: AppStrings.confirmYourPassword,
                    prefixIcon: AppIcons.lock,
                    suffixIcon: AppIcons.visibilityOff,
                  ),

                  AlreadyHaveAccount(onPressed: () {}),
                ],
              ),
            ),
          ),
          // const Spacer(),
          //button next to step 2
          Align(
            alignment: Alignment.bottomRight,
            child: CustomButton(title: AppStrings.next, onPressed: onNext),
          ),
          SizedBox(height: 50.h),
        ],
      ),
    );
  }
}
