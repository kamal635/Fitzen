import 'package:fitzen/core/constant/app_fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class IconWithTitleAndSubTitleWidget extends StatelessWidget {
  const IconWithTitleAndSubTitleWidget({
    super.key,
    this.iconColor,
    required this.icon,
    required this.title,
    required this.subTitleitle,
  });
  final Color? iconColor;
  final IconData icon;
  final String title;
  final String subTitleitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon, color: iconColor, size: 100.r),

        SizedBox(height: 16.h),

        // Title page
        Text(
          title,
          style: AppTextStyles.displayMedium,
          textAlign: TextAlign.center,
        ),

        SizedBox(height: 8.h),

        // info under review
        Text(
          subTitleitle,
          style: AppTextStyles.titleMedium,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
