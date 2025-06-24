import 'package:fitzen/core/constant/app_colors.dart';
import 'package:fitzen/core/constant/app_fonts.dart';
import 'package:fitzen/core/constant/app_radius.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    this.obscureText = false,
    this.prefixIcon,
    this.hintText,
    this.suffixIcon,
    this.isSuffixIcon = true,
    this.isNumberKeyboard = false,
    this.widgetSuffix,
    this.isCenter = false,
    this.keyboardType,
    this.readOnly = false,
    this.widgetCenter,
  });
  final bool obscureText;
  final IconData? prefixIcon;
  final IconData? suffixIcon;
  final String? hintText;
  final bool isSuffixIcon;
  final Widget? widgetSuffix;
  final Widget? widgetCenter;
  final bool isCenter;
  final TextInputType? keyboardType;
  final bool isNumberKeyboard;
  final bool readOnly;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // height: 80.h,
      child: TextFormField(
        cursorColor:
            AppColors.secondary, //Sets the color of the blinking cursor
        obscureText: obscureText, //To hide the password
        keyboardType: keyboardType,
        readOnly: readOnly,

        inputFormatters: [
          if (isNumberKeyboard)
            FilteringTextInputFormatter.digitsOnly, // only numbers
        ],
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(horizontal: 5.h),
          filled: true,
          fillColor: AppColors.darkSlateGray,
          hintText: hintText,
          hintStyle: AppTextStyles.labelSmall.copyWith(color: AppColors.grey),

          prefixIcon: isCenter
              ? widgetCenter
              : Icon(
                  prefixIcon,
                  size: 24.r,
                  color: AppColors.grey,
                ), // show at the beginning of the textfield
          suffixIcon:
              widgetSuffix ??
              (isSuffixIcon && suffixIcon != null
                  ? Icon(suffixIcon, size: 24.r, color: AppColors.grey)
                  : null), //  show at the end of the textfield
          //=======================================================//
          //Default border style (used in general unless overridden below)
          border: OutlineInputBorder(
            borderRadius: AppRadius.radiusCircularGeneral,
            borderSide: const BorderSide(color: AppColors.grey, width: 1),
          ),

          // Border when the field is enabled but not focused
          enabledBorder: OutlineInputBorder(
            borderRadius: AppRadius.radiusCircularGeneral,
            borderSide: const BorderSide(color: AppColors.darkGrey, width: 1),
          ),

          // Border when the field is focused (user is typing)
          focusedBorder: OutlineInputBorder(
            borderRadius: AppRadius.radiusCircularGeneral,
            borderSide: BorderSide(
              color: readOnly ? AppColors.darkGrey : AppColors.secondary,
              width: 1,
            ),
          ),

          // Error border when validation fails
          errorBorder: OutlineInputBorder(
            borderRadius: AppRadius.radiusCircularGeneral,
            borderSide: const BorderSide(color: AppColors.red, width: 1),
          ),

          // Error border when focused and validation fails
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: AppRadius.radiusCircularGeneral,
            borderSide: const BorderSide(color: AppColors.red, width: 1),
          ),
        ),
      ),
    );
  }
}
