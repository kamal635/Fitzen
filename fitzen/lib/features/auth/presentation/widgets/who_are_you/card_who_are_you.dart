import 'package:flutter/material.dart';
import 'package:fitzen/core/constant/app_colors.dart';
import 'package:fitzen/core/constant/app_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CardWhoAreYou extends StatelessWidget {
  const CardWhoAreYou({
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
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 40.w),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(20.r),

        child: Container(
          height: 160.h,
          width: double.infinity,
          decoration: BoxDecoration(
            color: AppColors.primary.withValues(alpha: 0.5),
            borderRadius: BorderRadius.circular(20.r),
            border: Border.all(color: AppColors.secondary, width: 0.8.r),
          ),

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon, size: 48.r, color: AppColors.secondary),
              SizedBox(height: 6.h),
              Text(title, style: AppTextStyles.headline2),
              SizedBox(height: 6.h),
              Text(subTitle, style: AppTextStyles.body2),
            ],
          ),
        ),
      ),
    );
  }
}
