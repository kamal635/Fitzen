import 'package:flutter/material.dart';

/// A collection of custom app colors used throughout the UI.
/// Centralizing colors improves consistency and easier theming.
abstract class AppColors {
  /// Main brand color used for primary elements.
  static const Color primary = Color(0xFF121922);

  /// Secondary accent color used for highlights or complementary UI.
  static const Color secondary = Color(0xFFD2BDA5);

  /// Standard white color for backgrounds and text.
  static const Color white = Color(0xFFFFFFFF);

  /// Neutral grey for text or icons in a disabled state.
  static const Color grey = Color(0xFF9E9E9E);

  /// Darker grey tone for subtle UI elements or borders.
  static const Color darkGrey = Color(0xFF636262);

  /// Deep dark bluish-gray used for dark backgrounds or containers.
  static const Color darkSlateGray = Color(0xFF1E2630);

  /// Bright red color used for errors or warning messages.
  static const Color red = Color(0xFFFF5252);

  /// Green color used for success states or confirmation messages.
  static const Color green = Color(0xFF4CAF50);
}
