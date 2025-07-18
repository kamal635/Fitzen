import 'package:fitzen/features/onboarding/presentation/pages/onboarding_page_body.dart';
import 'package:flutter/material.dart';

/// Onboarding page widget.
///
/// Serves as the main onboarding screen container.
class OnBoardingPage extends StatelessWidget {
  /// Create [OnBoardingPage]
  const OnBoardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: OnBoardingPageBody());
  }
}
