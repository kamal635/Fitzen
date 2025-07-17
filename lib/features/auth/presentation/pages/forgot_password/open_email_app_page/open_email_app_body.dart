import 'package:fitzen/core/constant/app_colors.dart';
import 'package:fitzen/core/constant/app_icons.dart';
import 'package:fitzen/core/constant/app_paddings.dart';
import 'package:fitzen/core/constant/app_strings.dart';
import 'package:fitzen/core/routing/router_name.dart';
import 'package:fitzen/core/widgets/custom_button.dart';
import 'package:fitzen/core/widgets/custom_text_button.dart';
import 'package:fitzen/features/auth/presentation/shared_widgets/icon_title_subtitle_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

/// UI body for the Open Email App page.
class OpenEmailAppPageBody extends StatelessWidget {
  /// Creates an [OpenEmailAppPageBody] widget.
  const OpenEmailAppPageBody({super.key});

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
              children: <Widget>[
                // section Icon / title / subtitle
                const IconWithTitleAndSubTitleWidget(
                  iconColor: AppColors.secondary,
                  icon: AppIcons.email,
                  title: AppStrings.openEmailTitle,
                  subTitle: AppStrings.openEmailSubTitle,
                ),

                SizedBox(height: 50.h),

                // button open email app
                CustomButton(
                  title: AppStrings.openEmail,
                  onPressed: () {
                    context.go(RouterName.resetPassword);
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
