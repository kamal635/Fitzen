import 'package:fitzen/core/constant/app_colors.dart';
import 'package:fitzen/core/constant/app_fonts.dart';
import 'package:fitzen/core/constant/app_radius.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// A card widget used to display and
/// select a user role (e.g., trainer or trainee).
class ChooseRoleCard extends StatelessWidget {
  ///
  /// create [ChooseRoleCard] with required parameter
  const ChooseRoleCard({
    required this.title,
    required this.subTitle,
    required this.icon,
    required this.onTap,
    super.key,
  });

  /// The text displayed as the main heading of the card.
  final String title;

  /// The descriptive subtitle shown below the title.
  final String subTitle;

  /// The icon displayed on the card to visually represent the role.
  final IconData icon;

  /// The callback function triggered when the card is tapped.
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
          children: <Widget>[
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
