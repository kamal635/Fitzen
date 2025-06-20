import 'package:fitzen/core/constant/app_fonts.dart';
import 'package:flutter/material.dart';

class TitleWhoAreYouPage extends StatelessWidget {
  const TitleWhoAreYouPage({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: AppTextStyles.headline1,
      textAlign: TextAlign.center,
    );
  }
}
