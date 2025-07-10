import 'package:fitzen/core/constant/app_fonts.dart';
import 'package:flutter/material.dart';

class WhoAreYouPageTitle extends StatelessWidget {
  const WhoAreYouPageTitle({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: AppTextStyles.displayMedium,
      textAlign: TextAlign.center,
    );
  }
}
