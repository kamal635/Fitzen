import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

abstract class AppTextStyles {
  // Display (للشاشات الرئيسية والعناوين الكبيرة)
  static final TextStyle displayLarge = TextStyle(
    fontSize: 32.sp,
    fontWeight: FontWeight.bold,
    color: Colors.white,
  );

  static final TextStyle displayMedium = TextStyle(
    fontSize: 28.sp,
    fontWeight: FontWeight.w700,
    color: Colors.white,
  );

  // Headline
  static final TextStyle headlineLarge = TextStyle(
    fontSize: 24.sp,
    fontWeight: FontWeight.w700,
    color: Colors.white,
  );

  static final TextStyle headlineMedium = TextStyle(
    fontSize: 20.sp,
    fontWeight: FontWeight.w600,
    color: Colors.white,
  );

  static final TextStyle headlineSmall = TextStyle(
    fontSize: 18.sp,
    fontWeight: FontWeight.w600,
    color: Colors.white,
  );

  // Title
  static final TextStyle titleLarge = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeight.w500,
    color: Colors.white,
  );

  static final TextStyle titleMedium = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeight.w500,
    color: Colors.white70,
  );

  // Body
  static final TextStyle bodyLarge = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeight.normal,
    color: Colors.white,
  );

  static final TextStyle bodyMedium = TextStyle(
    fontSize: 13.sp,
    fontWeight: FontWeight.normal,
    color: Colors.white70,
  );

  // Label / Caption
  static final TextStyle labelSmall = TextStyle(
    fontSize: 12.sp,
    fontWeight: FontWeight.w400,
    color: Colors.grey[400],
  );

  // Button style
  static final TextStyle button = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeight.w600,
    color: Colors.white,
  );
}
