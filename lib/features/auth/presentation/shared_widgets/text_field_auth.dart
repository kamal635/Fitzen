import 'package:fitzen/core/constant/app_fonts.dart';
import 'package:fitzen/core/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// A customizable TextFieldAuth widget used throughout the app.
class TextFieldAuth extends StatelessWidget {
  /// Creates a [TextFieldAuth].
  ///
  /// with [titleField] requires.
  const TextFieldAuth({
    required this.titleField,
    super.key,
    this.obscureText = false,
    this.prefixIcon,
    this.suffixIcon,
    this.hintText,
    this.isSuffixIcon = true,
    this.isNumberKeyboard = false,
    this.readOnly = false,
    this.widgetCenter,
    this.isCenter = false,
    this.widgetSuffix,
    this.keyboardType,
    this.spaceBetweenTextField,
    this.onChanged,
    this.errorText,
    this.textInputAction,
    this.onTapSuffixIcon,
    this.initialValue,
  });

  ///To specify the field title above
  final String titleField;

  /// The distance between each field
  final double? spaceBetweenTextField;

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

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(titleField, style: AppTextStyles.titleLarge),

        SizedBox(height: 10.h),

        CustomTextFormField(
          hintText: hintText,
          obscureText: obscureText,
          prefixIcon: prefixIcon,
          suffixIcon: suffixIcon,
          isSuffixIcon: isSuffixIcon,
          widgetSuffix: widgetSuffix,
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
