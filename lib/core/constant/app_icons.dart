import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';

/// This class centralizes all icon definitions using [LucideIcons],
/// allowing consistent usage of icons across the UI.
abstract class AppIcons {
  /// Icon representing a user (typically for profile or account).
  static const IconData user = LucideIcons.user2;

  /// Icon representing an email or message.
  static const IconData email = LucideIcons.mail;

  /// Icon representing a locked state (used for password fields, etc).
  static const IconData lock = LucideIcons.lock;

  /// Icon representing a hidden password or obscured field.
  static const IconData eyeOff = LucideIcons.eyeOff;

  /// Icon representing visibility (used to show a password).
  static const IconData eye = LucideIcons.eye;

  /// Icon representing a phone (used for contact or input).
  static const IconData phone = LucideIcons.phone;

  /// Icon representing a calendar (used for date selection or display).
  static const IconData calendar = LucideIcons.calendar;

  /// Icon representing a dumbbell.
  static const IconData dumbbell = LucideIcons.dumbbell;

  /// Icon representing a certificate or award (e.g., for achievements).
  static const IconData certificate = LucideIcons.award;

  /// Icon representing a file or document.
  static const IconData file = LucideIcons.fileText;

  /// Icon representing an unlocked state.
  static const IconData unlock = LucideIcons.unlock;

  /// Icon representing a reset password or refresh action.
  static const IconData resetPassword = LucideIcons.rotateCw;

  /// Icon representing a check or success state.
  static const IconData check = LucideIcons.checkCircle2;

  /// Icon representing a directional arrow (used for navigation or progress).
  static const IconData arrow = LucideIcons.arrowBigRightDash;
}
