import 'package:fitzen/core/constant/app_paddings.dart';
import 'package:fitzen/features/onboarding/presentation/widgets/onboarding_image_title.dart';
import 'package:fitzen/features/onboarding/presentation/widgets/onboarding_indicator_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// Onboarding page body widget.
///
/// Displays the main content of the onboarding screen.
class OnBoardingPageBody extends StatelessWidget {
  /// Create [OnBoardingPageBody]
  const OnBoardingPageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppPaddings.horizontalGeneralPage,
      child: Column(
        children: <Widget>[
          const OnBoardingImageAndTitleSection(),

          SizedBox(height: 20.h),

          const OnBoardingIndicatorAndButtonSection(),
        ],
      ),
    );
  }
}
