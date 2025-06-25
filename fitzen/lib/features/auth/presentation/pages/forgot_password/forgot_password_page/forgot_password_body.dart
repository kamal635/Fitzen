import 'package:fitzen/core/constant/app_colors.dart';
import 'package:fitzen/core/constant/app_icons.dart';
import 'package:fitzen/core/constant/app_paddings.dart';
import 'package:fitzen/core/constant/app_strings.dart';
import 'package:fitzen/core/routing/router_name.dart';
import 'package:fitzen/core/widgets/custom_button.dart';
import 'package:fitzen/core/widgets/custom_text_button.dart';
import 'package:fitzen/features/auth/presentation/shared_widgets/icon_title_subtitle_widget.dart';
import 'package:fitzen/features/auth/presentation/shared_widgets/text_field_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class ForgotPasswordPageBody extends StatelessWidget {
  const ForgotPasswordPageBody({super.key});

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
                  icon: AppIcons.lockOpen,
                  title: AppStrings.forgotPasswordTitle,
                  subTitleitle: AppStrings.forgotPasswordSubTitle,
                ),

                SizedBox(height: 50.h),

                // Email
                const TextFieldAuth(
                  titleField: AppStrings.email,
                  hintText: AppStrings.enteEmail,
                  prefixIcon: AppIcons.email,
                ),

                SizedBox(height: 15.h),

                // button send reset link
                CustomButton(
                  title: AppStrings.resetLink,
                  onPressed: () {
                    context.go(RouterName.openEmail);
                  },
                ),

                SizedBox(height: 10.h),

                // Back to login
                Align(
                  child: CustomTextButton(
                    title: AppStrings.backLogin,
                    color: AppColors.secondary,
                    onPressed: () {
                      context.go(RouterName.login);
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
