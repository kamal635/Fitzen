import 'package:fitzen/core/constant/app_fonts.dart';
import 'package:flutter/material.dart';

class StepsRegistraionTitle extends StatelessWidget {
  const StepsRegistraionTitle({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: AppTextStyles.headlineMedium,
      textAlign: TextAlign.center,
    );
  }
}
