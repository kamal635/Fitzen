import 'package:fitzen/features/onboarding/presentation/widgets/onboarding_image_title.dart';
import 'package:fitzen/features/onboarding/presentation/widgets/onboarding_indicator_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnBoardingPageBody extends StatelessWidget {
  const OnBoardingPageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.w),
      child: Column(
        children: [
          OnBoardingImageAndTitleSection(),

          SizedBox(height: 20.h),

          OnBoardingIndicatorAndButtonSection(),
        ],
      ),
    );
  }
}
