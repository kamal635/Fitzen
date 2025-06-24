import 'package:fitzen/core/constant/app_icons.dart';
import 'package:fitzen/core/constant/app_paddings.dart';
import 'package:fitzen/core/constant/app_strings.dart';
import 'package:fitzen/core/routing/router_name.dart';
import 'package:fitzen/features/auth/presentation/shared_widgets/already_have_account.dart';
import 'package:fitzen/features/auth/presentation/widgets/who_are_you/card_who_are_you.dart';
import 'package:fitzen/features/auth/presentation/widgets/who_are_you/title_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class WhoAreYouBodyPage extends StatelessWidget {
  const WhoAreYouBodyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppPaddings.horizontalGeneralPage,
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const WhoAreYouPageTitle(title: AppStrings.titleWhoAreYou),

            SizedBox(height: 30.h),

            // trainer
            WhoAreYouCard(
              title: AppStrings.trainer,
              subTitle: AppStrings.subtitleTrainer,
              icon: AppIcons.dumble,
              onTap: () {
                context.push(RouterName.trainerRegistration);
              },
            ),

            SizedBox(height: 20.h),

            // trainee
            WhoAreYouCard(
              title: AppStrings.trainee,
              subTitle: AppStrings.subtitleTrainee,
              icon: AppIcons.person,
              onTap: () {
                context.push(RouterName.traineeRegistration);
              },
            ),

            SizedBox(height: 20.h),

            AlreadyHaveAccount(
              onPressed: () {
                context.push(RouterName.login);
              },
            ),
          ],
        ),
      ),
    );
  }
}
