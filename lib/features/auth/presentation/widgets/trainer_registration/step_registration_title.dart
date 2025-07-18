import 'package:fitzen/core/constant/app_fonts.dart';
import 'package:flutter/material.dart';

/// A widget that displays a title for a registration step.
class StepsRegistraionTitle extends StatelessWidget {
  /// Creates a registration step title with the given [title].
  const StepsRegistraionTitle({required this.title, super.key});

  /// The text shown as the step title.
  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: AppTextStyles.headlineMedium,
      textAlign: TextAlign.center,
    );
  }
}
