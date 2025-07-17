import 'package:fitzen/core/constant/app_fonts.dart';
import 'package:flutter/material.dart';

/// A customizable TextButton widget used throughout the app.
class CustomTextButton extends StatelessWidget {
  /// Creates a [CustomTextButton].
  ///
  /// Requires a [title].
  const CustomTextButton({
    required this.title,
    super.key,
    this.onPressed,
    this.color,
    this.padding,
    this.textStyle,
  });

  /// The text shown inside the button.
  final String title;

  /// Callback triggered when the button is pressed.
  final VoidCallback? onPressed;

  /// The color of the button's text. Defaults to theme's primary color if null.
  final Color? color;

  /// Optional custom padding around the button.
  final EdgeInsetsGeometry? padding;

  /// Optional custom text style.
  final TextStyle? textStyle;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        padding: padding,
      ),
      child: Text(
        title,
        style: textStyle ?? AppTextStyles.button.copyWith(color: color),
      ),
    );
  }
}
