import 'package:fitzen/core/constant/app_fonts.dart';
import 'package:flutter/material.dart';

/// A widget that displays the title text on the choose role page.
class ChooseRolePageTitle extends StatelessWidget {
  ///
  /// create [ChooseRolePageTitle] with [title] requires
  const ChooseRolePageTitle({required this.title, super.key});

  /// The title text to display.
  final String title;
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: AppTextStyles.displayMedium,
      textAlign: TextAlign.center,
    );
  }
}
