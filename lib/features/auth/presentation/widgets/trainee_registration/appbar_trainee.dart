import 'package:fitzen/core/constant/app_fonts.dart';
import 'package:fitzen/core/constant/app_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// A custom [AppBar] widget for the Trainee layout.
/// Implements [PreferredSizeWidget] to define its height.
class AppBarTrainee extends StatelessWidget implements PreferredSizeWidget {
  /// Create [AppBarTrainee]
  const AppBarTrainee({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      // title
      title: const Text(AppStrings.traineeRegistrationTitle),
      titleTextStyle: AppTextStyles.displayMedium,
      centerTitle: true,

      // hide arrow back
      automaticallyImplyLeading: false,

      // hide appbar color
      backgroundColor: Colors.transparent,
      //  hide appbar color when scroll
      surfaceTintColor: Colors.transparent,
    );
  }

  @override
  Size get preferredSize => Size(0, 60.h);
}
