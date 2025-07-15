import 'package:fitzen/core/constant/app_colors.dart';
import 'package:fitzen/core/constant/app_fonts.dart';
import 'package:fitzen/core/constant/app_radius.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl_phone_field/countries.dart';
import 'package:intl_phone_field/country_picker_dialog.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:intl_phone_field/phone_number.dart';

class CustomPhoneNumberField extends StatelessWidget {
  const CustomPhoneNumberField({
    super.key,
    this.errorText,
    this.onChanged,
    this.initialValue,
    this.onCountryChanged,
    required this.titleField,
    required this.spaceBetweenField,
  });
  final String? errorText;
  final Function(PhoneNumber)? onChanged;
  final Function(Country)? onCountryChanged;
  final String? initialValue;
  final String titleField;
  final double spaceBetweenField;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(titleField, style: AppTextStyles.titleLarge),

        SizedBox(height: 10.h),

        IntlPhoneField(
          autovalidateMode: AutovalidateMode.disabled,
          keyboardType: TextInputType.phone,
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
              borderSide: const BorderSide(color: AppColors.grey, width: 1),
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

        SizedBox(height: spaceBetweenField),
      ],
    );
  }
}
