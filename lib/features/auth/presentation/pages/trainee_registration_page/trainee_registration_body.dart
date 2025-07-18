import 'package:fitzen/core/constant/app_icons.dart';
import 'package:fitzen/core/constant/app_paddings.dart';
import 'package:fitzen/core/constant/app_strings.dart';
import 'package:fitzen/core/widgets/custom_button.dart';
import 'package:fitzen/features/auth/presentation/shared_widgets/already_have_account.dart';
import 'package:fitzen/features/auth/presentation/shared_widgets/text_field_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// UI body for the Trainee Registration page.
class TraineeRegistrationBodyPage extends StatelessWidget {
  /// Creates a [TraineeRegistrationBodyPage] widget.
  const TraineeRegistrationBodyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppPaddings.horizontalGeneralPage,
      child: SingleChildScrollView(
        child: ConstrainedBox(
          constraints: BoxConstraints(
            minHeight: MediaQuery.of(context).size.height,
          ),
          child: IntrinsicHeight(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                SizedBox(height: 35.h),

                const TextFieldAuth(
                  titleField: AppStrings.firstName,
                  hintText: AppStrings.enterFirstName,
                  prefixIcon: AppIcons.user,
                ),
                const TextFieldAuth(
                  titleField: AppStrings.lastName,
                  hintText: AppStrings.enteLastName,
                  prefixIcon: AppIcons.user,
                ),
                const TextFieldAuth(
                  titleField: AppStrings.email,
                  hintText: AppStrings.enteEmail,
                  prefixIcon: AppIcons.email,
                ),
                const TextFieldAuth(
                  titleField: AppStrings.password,
                  hintText: AppStrings.createPassword,
                  prefixIcon: AppIcons.lock,
                  suffixIcon: AppIcons.eyeOff,
                ),
                const TextFieldAuth(
                  titleField: AppStrings.confirmPassword,
                  hintText: AppStrings.confirmYourPassword,
                  prefixIcon: AppIcons.lock,
                  suffixIcon: AppIcons.eyeOff,
                ),

                SizedBox(height: 35.h),

                const CustomButton(title: AppStrings.register),

                SizedBox(height: 10.h),

                AlreadyHaveAccount(onPressed: () {}),

                SizedBox(height: 50.h),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
