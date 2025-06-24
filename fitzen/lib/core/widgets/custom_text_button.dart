import 'package:fitzen/core/constant/app_fonts.dart';
import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({super.key, required this.title, this.onBack});
  final String title;
  final Function()? onBack;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onBack,
      child: Text(title, style: AppTextStyles.button),
    );
  }
}
