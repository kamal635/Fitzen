import 'package:fitzen/core/constant/app_fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// A widget that displays an icon alongside a title and subtitle.
class IconWithTitleAndSubTitleWidget extends StatelessWidget {
  /// Create [IconWithTitleAndSubTitleWidget]
  const IconWithTitleAndSubTitleWidget({
    required this.icon,
    required this.title,
    required this.subTitle,
    super.key,
    this.iconColor,
  });

  /// The color of the icon; optional, defaults to theme color if null.
  final Color? iconColor;

  /// The icon to display.
  final IconData icon;

  /// The main title text.
  final String title;

  /// The subtitle text shown below the title.
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
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
          subTitle,
          style: AppTextStyles.titleMedium,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
