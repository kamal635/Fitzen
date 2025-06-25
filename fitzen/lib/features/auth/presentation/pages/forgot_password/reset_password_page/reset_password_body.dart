import 'package:fitzen/core/constant/app_colors.dart';
import 'package:fitzen/core/constant/app_icons.dart';
import 'package:fitzen/core/constant/app_paddings.dart';
import 'package:fitzen/core/constant/app_strings.dart';
import 'package:fitzen/core/widgets/custom_button.dart';
import 'package:fitzen/features/auth/presentation/shared_widgets/icon_title_subtitle_widget.dart';
import 'package:fitzen/features/auth/presentation/shared_widgets/text_field_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ResetPasswordPageBody extends StatelessWidget {
  const ResetPasswordPageBody({super.key});

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
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                // section Icon / title / subtitle
                const IconWithTitleAndSubTitleWidget(
                  iconColor: AppColors.secondary,
                  icon: AppIcons.resetPassword,
                  title: AppStrings.resetPasswordTitle,
                  subTitleitle: AppStrings.resetPasswordSubTitle,
                ),

                SizedBox(height: 50.h),

                // New Password
                const TextFieldAuth(
                  titleField: AppStrings.newPassword,
                  hintText: AppStrings.enterNewPassword,
                  prefixIcon: AppIcons.lock,
                  suffixIcon: AppIcons.visibilityOff,
                ),

                //Confirm New Password
                const TextFieldAuth(
                  titleField: AppStrings.confirmNewPassword,
                  hintText: AppStrings.enterConfirmNewPassword,
                  prefixIcon: AppIcons.lock,
                  suffixIcon: AppIcons.visibilityOff,
                ),

                SizedBox(height: 15.h),

                // button reset password
                CustomButton(title: AppStrings.resetPassword, onPressed: () {}),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
