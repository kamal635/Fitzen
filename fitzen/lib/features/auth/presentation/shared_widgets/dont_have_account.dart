import 'package:fitzen/core/constant/app_colors.dart';
import 'package:fitzen/core/constant/app_fonts.dart';
import 'package:fitzen/core/constant/app_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoNotHaveAccount extends StatelessWidget {
  const DoNotHaveAccount({super.key, required this.onPressed});

  final Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          AppStrings.dontHaveAccount,
          style: AppTextStyles.titleMedium.copyWith(
            decorationColor: AppColors.white,
            decorationThickness: 2.h,
          ),
        ),

        TextButton(
          onPressed: onPressed,

          child: Text(
            AppStrings.register,
            style: AppTextStyles.titleMedium.copyWith(
              color: AppColors.secondary,
            ),
          ),
        ),
      ],
    );
  }
}
