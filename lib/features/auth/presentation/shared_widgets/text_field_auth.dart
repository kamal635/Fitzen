import 'package:fitzen/core/constant/app_fonts.dart';
import 'package:fitzen/core/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextFieldAuth extends StatelessWidget {
  const TextFieldAuth({
    super.key,
    required this.titleField,
    this.obscureText = false,
    this.prefixIcon,
    this.suffixIcon,
    this.hintText,
    this.isSuffixIcon = true,
    this.isNumberKeyboard = false,
    this.readOnly = false,
    this.widgetCenter,
    this.isCenter = false,
    this.widget,
    this.keyboardType,
    this.spaceBetweenTextField,
    this.onChanged,
    this.errorText,
    this.textInputAction,
    this.onTapSuffixIcon,
    this.initialValue,
  });
  final String titleField;
  final bool obscureText;
  final IconData? prefixIcon;
  final IconData? suffixIcon;
  final String? hintText;
  final bool isSuffixIcon;
  final Widget? widget;
  final TextInputType? keyboardType;
  final bool isNumberKeyboard;
  final bool readOnly;
  final Widget? widgetCenter;
  final bool isCenter;
  final double? spaceBetweenTextField;
  final Function(String)? onChanged;
  final String? errorText;
  final TextInputAction? textInputAction;
  final Function()? onTapSuffixIcon;
  final String? initialValue;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(titleField, style: AppTextStyles.titleLarge),

        SizedBox(height: 10.h),

        CustomTextFormField(
          hintText: hintText,
          obscureText: obscureText,
          prefixIcon: prefixIcon,
          suffixIcon: suffixIcon,
          isSuffixIcon: isSuffixIcon,
          widgetSuffix: widget,
          keyboardType: keyboardType,
          isNumberKeyboard: isNumberKeyboard,
          readOnly: readOnly,
          isCenter: isCenter,
          widgetCenter: widgetCenter,
          onChanged: onChanged,
          errorText: errorText,
          textInputAction: textInputAction,
          onTapSuffixIcon: onTapSuffixIcon,
          initialValue: initialValue,
        ),
        SizedBox(height: spaceBetweenTextField ?? 20.h),
      ],
    );
  }
}
