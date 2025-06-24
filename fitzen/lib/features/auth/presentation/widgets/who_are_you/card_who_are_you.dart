import 'package:fitzen/core/constant/app_radius.dart';
import 'package:flutter/material.dart';
import 'package:fitzen/core/constant/app_colors.dart';
import 'package:fitzen/core/constant/app_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WhoAreYouCard extends StatelessWidget {
  const WhoAreYouCard({
    super.key,
    required this.title,
    required this.subTitle,
    required this.icon,
    required this.onTap,
  });
  final String title;
  final String subTitle;
  final IconData icon;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: AppRadius.radiusCircularGeneral,

      child: Container(
        height: 160.h,
        width: 320.w,
        decoration: BoxDecoration(
          color: AppColors.darkSlateGray,
          borderRadius: AppRadius.radiusCircularGeneral,
          border: Border.all(color: AppColors.secondary, width: 0.8.r),
        ),

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 48.r, color: AppColors.secondary),
            SizedBox(height: 6.h),
            Text(title, style: AppTextStyles.headlineMedium),
            SizedBox(height: 6.h),
            Text(subTitle, style: AppTextStyles.bodyMedium),
          ],
        ),
      ),
    );
  }
}
