import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// A class that defines common padding values used throughout the app.
abstract class AppPaddings {
  /// General horizontal padding used on most pages.
  static EdgeInsets get horizontalGeneralPage =>
      EdgeInsets.symmetric(horizontal: 20.w);
}
