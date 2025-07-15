import 'package:fitzen/core/constant/app_colors.dart';
import 'package:fitzen/core/constant/app_fonts.dart';
import 'package:fitzen/core/constant/app_radius.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, this.onPressed, required this.title});
  final Function()? onPressed;

  final String title;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50.h,
      child: FilledButton(
        onPressed: onPressed,

        style: ButtonStyle(
          // Border
          shape: WidgetStatePropertyAll(
            RoundedRectangleBorder(
              borderRadius: AppRadius.radiusCircularGeneral,
            ),
          ),

          //background
          backgroundColor: const WidgetStatePropertyAll(AppColors.secondary),
        ),
        child: Text(title, style: AppTextStyles.button),
      ),
    );
  }
}
