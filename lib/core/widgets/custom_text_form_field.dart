import 'package:fitzen/core/constant/app_colors.dart';
import 'package:fitzen/core/constant/app_fonts.dart';
import 'package:fitzen/core/constant/app_radius.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// A customizable TextFormField widget used throughout the app.
class CustomTextFormField extends StatelessWidget {
  /// Creates a [CustomTextFormField].

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
    this.onChanged,
    this.errorText,
    this.textInputAction,
    this.onTapSuffixIcon,
    this.initialValue,
    this.controller,
  });

  /// Determines whether the text should be obscured (e.g., for passwords).
  final bool obscureText;

  /// An optional icon to display at the beginning of the text field.
  final IconData? prefixIcon;

  /// An optional icon to display at the end of the text field.
  final IconData? suffixIcon;

  /// A hint to show when the text field is empty.
  final String? hintText;

  /// Text to display below the field if there’s an error.
  final String? errorText;

  /// Controls whether the suffix icon should be displayed.

  final bool isSuffixIcon;

  ///  optional widget to show at the end of the text field instead of icon
  final Widget? widgetSuffix;

  /// widget to be displayed in the center of the field-usually for custom UI
  final Widget? widgetCenter;

  /// If true, aligns the text to the center.
  final bool isCenter;

  /// The type of keyboard to use for editing the text.
  final TextInputType? keyboardType;

  /// If true, sets the keyboard type to number input.
  final bool isNumberKeyboard;

  /// If true, the text field is read-only and cannot be edited.
  final bool readOnly;

  /// A callback that is called when the text changes.
  final void Function(String)? onChanged;

  /// A callback function triggered when the suffix icon is tapped.
  final VoidCallback? onTapSuffixIcon;

  /// The action button to use for the keyboard (e.g., next, done).
  final TextInputAction? textInputAction;

  /// The initial value to be displayed in the text field.
  final String? initialValue;

  /// Controller for managing the text input of this field.
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      cursorColor: AppColors.secondary, //Sets the color of the blinking cursor
      obscureText: obscureText, //To hide the password
      keyboardType: keyboardType,
      readOnly: readOnly,
      onChanged: onChanged,
      textInputAction: textInputAction ?? TextInputAction.next,
      inputFormatters: <TextInputFormatter>[
        if (isNumberKeyboard)
          FilteringTextInputFormatter.digitsOnly, // only numbers
      ],
      initialValue: initialValue,

      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(vertical: 14.h),
        filled: true,
        fillColor: AppColors.darkSlateGray,
        hintText: hintText,
        hintStyle: AppTextStyles.titleMedium.copyWith(color: AppColors.grey),
        errorText: errorText,
        errorStyle: AppTextStyles.labelSmall.copyWith(color: AppColors.red),

        prefixIcon: isCenter
            ? widgetCenter
            : Icon(
                prefixIcon,
                size: 20.r,
                color: AppColors.grey,
              ), // show at the beginning of the textfield
        suffixIcon:
            widgetSuffix ??
            (isSuffixIcon && suffixIcon != null
                ? InkWell(
                    onTap: onTapSuffixIcon,
                    child: Icon(suffixIcon, size: 20.r, color: AppColors.grey),
                  )
                : null), //  show at the end of the textfield
        //=======================================================//
        //Default border style (used in general unless overridden below)
        border: OutlineInputBorder(
          borderRadius: AppRadius.radiusCircularGeneral,
          borderSide: const BorderSide(color: AppColors.grey),
        ),

        // Border when the field is enabled but not focused
        enabledBorder: OutlineInputBorder(
          borderRadius: AppRadius.radiusCircularGeneral,
          borderSide: const BorderSide(color: AppColors.darkGrey, width: 0.5),
        ),

        // Border when the field is focused (user is typing)
        focusedBorder: OutlineInputBorder(
          borderRadius: AppRadius.radiusCircularGeneral,
          borderSide: BorderSide(
            color: readOnly ? AppColors.darkGrey : AppColors.secondary,
          ),
        ),

        // Error border when validation fails
        errorBorder: OutlineInputBorder(
          borderRadius: AppRadius.radiusCircularGeneral,
          borderSide: const BorderSide(color: AppColors.red),
        ),

        // Error border when focused and validation fails
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: AppRadius.radiusCircularGeneral,
          borderSide: const BorderSide(color: AppColors.red),
        ),
      ),
    );
  }
}
