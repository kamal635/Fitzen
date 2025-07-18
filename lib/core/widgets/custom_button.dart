import 'package:fitzen/core/constant/app_colors.dart';
import 'package:fitzen/core/constant/app_fonts.dart';
import 'package:fitzen/core/constant/app_radius.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// A customizable button widget
class CustomButton extends StatelessWidget {
  /// constructor with a title required and optional onPressed callback.
  const CustomButton({
    required this.title,
    super.key,
    this.onPressed,
  });

  /// The function to execute when the button is pressed.
  final VoidCallback? onPressed;

  /// The [title] parameter is required.
  final String title;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50.h,
      child: FilledButton(
        onPressed: onPressed,

        style: ButtonStyle(
          // Border
          shape: WidgetStatePropertyAll<OutlinedBorder?>(
            RoundedRectangleBorder(
              borderRadius: AppRadius.radiusCircularGeneral,
            ),
          ),

          //background
          backgroundColor: const WidgetStatePropertyAll<Color?>(
            AppColors.secondary,
          ),
        ),
        child: Text(title, style: AppTextStyles.button),
      ),
    );
  }
}
