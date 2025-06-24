import 'package:fitzen/core/constant/app_colors.dart';
import 'package:fitzen/core/constant/app_fonts.dart';
import 'package:fitzen/core/constant/app_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AlreadyHaveAccount extends StatelessWidget {
  const AlreadyHaveAccount({super.key, required this.onPressed});

  final Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          AppStrings.haveAccount,
          style: AppTextStyles.titleMedium.copyWith(
            decorationStyle: TextDecorationStyle.solid,
            decorationColor: AppColors.white,
            decorationThickness: 2.h,
          ),
        ),

        TextButton(
          onPressed: onPressed,

          child: Text(
            AppStrings.login,
            style: AppTextStyles.titleMedium.copyWith(
              color: AppColors.secondary,
            ),
          ),
        ),
      ],
    );
  }
}
