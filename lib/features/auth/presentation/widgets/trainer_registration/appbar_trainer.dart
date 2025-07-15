import 'package:fitzen/core/constant/app_colors.dart';
import 'package:fitzen/core/constant/app_fonts.dart';
import 'package:fitzen/core/constant/app_radius.dart';
import 'package:fitzen/core/constant/app_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppBarTrainer extends StatelessWidget implements PreferredSizeWidget {
  const AppBarTrainer({super.key, required this.currentStep});
  final int currentStep;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      // title
      title: const Text(AppStrings.trainerRegistrationTitle),
      titleTextStyle: AppTextStyles.displayMedium.copyWith(
        color: AppColors.secondary,
      ),
      centerTitle: true,

      // hide arrow back
      automaticallyImplyLeading: false,

      // hide appbar color
      backgroundColor: Colors.transparent,
      //  hide appbar color when scroll
      surfaceTintColor: Colors.transparent,

      bottom: PreferredSize(
        preferredSize: Size.zero,
        child: Padding(
          padding: EdgeInsets.only(top: 10.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(4, (i) {
              return Container(
                margin: EdgeInsets.symmetric(horizontal: 8.r),
                height: 4.h,
                width: 40.w,
                decoration: BoxDecoration(
                  color: i == currentStep
                      ? AppColors.secondary
                      : AppColors.darkGrey,
                  borderRadius: AppRadius.radiusCircularGeneral,
                ),
              );
            }),
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size(0, 60.h);
}
