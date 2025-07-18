import 'package:fitzen/core/constant/app_colors.dart';
import 'package:fitzen/core/constant/app_fonts.dart';
import 'package:fitzen/core/constant/app_radius.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl_phone_field/countries.dart';
import 'package:intl_phone_field/country_picker_dialog.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:intl_phone_field/phone_number.dart';

/// A custom phone number input field widget that allows users to enter
/// international phone numbers with validation and country code selection.
class CustomPhoneNumberField extends StatelessWidget {
  /// Creates a [CustomPhoneNumberField] widget.
  ///
  /// Requires [titleField] and [spaceBetweenField] to be provided.
  const CustomPhoneNumberField({
    required this.titleField,
    required this.spaceBetweenField,
    super.key,
    this.errorText,
    this.onChanged,
    this.initialValue,
    this.onCountryChanged,
  });

  /// The title or label displayed above the phone number input field.
  final String titleField;

  /// The vertical spacing between the title and the input field.
  final double spaceBetweenField;

  /// The initial phone number value to be displayed in the field.
  final String? initialValue;

  /// The error message to be shown below the input field (e.g. for validation).
  final String? errorText;

  /// Callback triggered whenever the phone number value changes.
  final void Function(PhoneNumber)? onChanged;

  /// Callback triggered when the selected country changes.
  final void Function(Country)? onCountryChanged;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(titleField, style: AppTextStyles.titleLarge),

        SizedBox(height: 10.h),

        IntlPhoneField(
          autovalidateMode: AutovalidateMode.disabled,
          pickerDialogStyle: PickerDialogStyle(
            backgroundColor: AppColors.primary,
            searchFieldCursorColor: AppColors.secondary,
          ),
          initialValue: initialValue,
          initialCountryCode: 'SY', // initial country
          onChanged: onChanged,
          onCountryChanged: onCountryChanged,

          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(vertical: 14.h),
            filled: true,
            fillColor: AppColors.darkSlateGray,
            hintStyle: AppTextStyles.titleMedium.copyWith(
              color: AppColors.grey,
            ),
            errorText: errorText,
            errorStyle: AppTextStyles.labelSmall.copyWith(color: AppColors.red),

            //=======================================================//
            //Default border style (used in general unless overridden below)
            border: OutlineInputBorder(
              borderRadius: AppRadius.radiusCircularGeneral,
              borderSide: const BorderSide(color: AppColors.grey),
            ),

            // Border when the field is enabled but not focused
            enabledBorder: OutlineInputBorder(
              borderRadius: AppRadius.radiusCircularGeneral,
              borderSide: const BorderSide(
                color: AppColors.darkGrey,
                width: 0.5,
              ),
            ),

            // Border when the field is focused (user is typing)
            focusedBorder: OutlineInputBorder(
              borderRadius: AppRadius.radiusCircularGeneral,
              borderSide: const BorderSide(
                color: AppColors.secondary,
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
        ),

        SizedBox(height: spaceBetweenField),
      ],
    );
  }
}
