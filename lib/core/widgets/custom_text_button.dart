import 'package:fitzen/core/constant/app_fonts.dart';
import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({
    super.key,
    required this.title,
    this.onPressed,
    this.color,
  });
  final String title;
  final Function()? onPressed;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Text(title, style: AppTextStyles.button.copyWith(color: color)),
    );
  }
}
