import 'package:fitzen/core/constant/app_icons.dart';
import 'package:fitzen/core/constant/app_paddings.dart';
import 'package:fitzen/core/constant/app_strings.dart';
import 'package:fitzen/core/routing/router_name.dart';
import 'package:fitzen/features/auth/presentation/shared_widgets/already_have_account.dart';
import 'package:fitzen/features/auth/presentation/widgets/choose_role/choose_role_card.dart';
import 'package:fitzen/features/auth/presentation/widgets/choose_role/title_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

/// UI body for the Choose Role screen.
class ChooseRoleBodyPage extends StatelessWidget {
  /// Creates a [ChooseRoleBodyPage] widget.
  const ChooseRoleBodyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppPaddings.horizontalGeneralPage,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const ChooseRolePageTitle(title: AppStrings.titleWhoAreYou),

            SizedBox(height: 30.h),

            // trainer
            ChooseRoleCard(
              title: AppStrings.trainer,
              subTitle: AppStrings.subtitleTrainer,
              icon: AppIcons.dumbbell,
              onTap: () {
                context.push(RouterName.trainerRegistration);
              },
            ),

            SizedBox(height: 20.h),

            // trainee
            ChooseRoleCard(
              title: AppStrings.trainee,
              subTitle: AppStrings.subtitleTrainee,
              icon: AppIcons.user,
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
