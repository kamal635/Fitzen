import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// A collection of reusable [TextStyle] definitions used across the app.
///
/// Styles are categorized by display, headline, title, body, label, and button.
abstract class AppTextStyles {
  /// Display style - large size, bold weight.
  static final TextStyle displayLarge = TextStyle(
    fontSize: 32.sp,
    fontWeight: FontWeight.bold,
    color: Colors.white,
  );

  /// Display style - medium size, semi-bold weight.
  static final TextStyle displayMedium = TextStyle(
    fontSize: 28.sp,
    fontWeight: FontWeight.w700,
    color: Colors.white,
  );

  /// Headline style - large size, semi-bold weight.
  static final TextStyle headlineLarge = TextStyle(
    fontSize: 24.sp,
    fontWeight: FontWeight.w700,
    color: Colors.white,
  );

  /// Headline style - medium size, medium weight.
  static final TextStyle headlineMedium = TextStyle(
    fontSize: 20.sp,
    fontWeight: FontWeight.w600,
    color: Colors.white,
  );

  /// Headline style - small size, medium weight.
  static final TextStyle headlineSmall = TextStyle(
    fontSize: 18.sp,
    fontWeight: FontWeight.w600,
    color: Colors.white,
  );

  /// Title style - large size, regular weight.
  static final TextStyle titleLarge = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeight.w500,
    color: Colors.white,
  );

  /// Title style - medium size, light white color.
  static final TextStyle titleMedium = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeight.w500,
    color: Colors.white70,
  );

  /// Body style - regular text.
  static final TextStyle bodyLarge = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeight.normal,
    color: Colors.white,
  );

  /// Body style - slightly smaller with lighter color.
  static final TextStyle bodyMedium = TextStyle(
    fontSize: 13.sp,
    fontWeight: FontWeight.normal,
    color: Colors.white70,
  );

  /// Caption or label style - small size, grey tone.
  static final TextStyle labelSmall = TextStyle(
    fontSize: 12.sp,
    fontWeight: FontWeight.w400,
    color: Colors.grey[400],
  );

  /// Button text style - medium size, bold weight.
  static final TextStyle button = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeight.w600,
    color: Colors.white,
  );
}
