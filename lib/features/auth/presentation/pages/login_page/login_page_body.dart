import 'package:fitzen/core/constant/app_assets.dart';
import 'package:fitzen/core/constant/app_colors.dart';
import 'package:fitzen/core/constant/app_icons.dart';
import 'package:fitzen/core/constant/app_paddings.dart';
import 'package:fitzen/core/constant/app_strings.dart';
import 'package:fitzen/core/routing/router_name.dart';
import 'package:fitzen/core/widgets/custom_button.dart';
import 'package:fitzen/core/widgets/custom_text_button.dart';
import 'package:fitzen/features/auth/presentation/shared_widgets/dont_have_account.dart';
import 'package:fitzen/features/auth/presentation/shared_widgets/text_field_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class LoginPageBody extends StatelessWidget {
  const LoginPageBody({super.key});

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
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                // app logo
                SizedBox(
                  height: 360.h,
                  width: 360.w,
                  child: Image.asset(AppAssets.logo),
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
                  suffixIcon: AppIcons.eyeOff,
                  spaceBetweenTextField: 0,
                ),

                // Forgot Password
                Align(
                  alignment: Alignment.topRight,
                  child: CustomTextButton(
                    title: AppStrings.forgotPassword,
                    color: AppColors.secondary,
                    onPressed: () {
                      context.push(RouterName.forgotPassword);
                    },
                  ),
                ),

                SizedBox(height: 15.h),

                // Login Button
                const CustomButton(title: AppStrings.login),

                SizedBox(height: 10.h),

                DoNotHaveAccount(onPressed: () {}),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
