import 'package:fitzen/core/constant/app_strings.dart';
import 'package:fitzen/features/auth/presentation/widgets/who_are_you/already_have_account.dart';
import 'package:fitzen/features/auth/presentation/widgets/who_are_you/card_who_are_you.dart';
import 'package:fitzen/features/auth/presentation/widgets/who_are_you/title_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WhoAreYouPageBody extends StatelessWidget {
  const WhoAreYouPageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.w),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const TitleWhoAreYouPage(title: AppStrings.titleWhoAreYou),

            SizedBox(height: 30.h),

            CardWhoAreYou(
              title: AppStrings.trainer,
              subTitle: AppStrings.subtitleTrainer,
              icon: Icons.fitness_center,
              onTap: () {},
            ),

            SizedBox(height: 20.h),

            CardWhoAreYou(
              title: AppStrings.trainee,
              subTitle: AppStrings.subtitleTrainee,
              icon: Icons.person_outline,
              onTap: () {},
            ),

            SizedBox(height: 20.h),

            AlreadyHaveAccount(title: AppStrings.haveAccount, onPressed: () {}),
          ],
        ),
      ),
    );
  }
}
