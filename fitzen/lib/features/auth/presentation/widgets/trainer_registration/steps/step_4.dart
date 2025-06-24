import 'package:fitzen/core/constant/app_colors.dart';
import 'package:fitzen/core/constant/app_fonts.dart';
import 'package:fitzen/core/constant/app_paddings.dart';
import 'package:fitzen/core/constant/app_strings.dart';
import 'package:fitzen/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TrainerRegistrationStepFour extends StatelessWidget {
  const TrainerRegistrationStepFour({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppPaddings.horizontalGeneralPage,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Icon(Icons.check_circle_outline, color: AppColors.green, size: 100.r),

          SizedBox(height: 16.h),

          Text(
            AppStrings.step4Title,
            style: AppTextStyles.headlineLarge,
            textAlign: TextAlign.center,
          ),

          SizedBox(height: 16.h),

          Text(
            AppStrings.underReview,
            style: AppTextStyles.bodyMedium,
            textAlign: TextAlign.center,
          ),

          SizedBox(height: 48.h),

          SizedBox(
            width: MediaQuery.of(context).size.width / 1.2,
            child: CustomButton(onPressed: () {}, title: AppStrings.done),
          ),

          SizedBox(height: MediaQuery.of(context).size.height / 3.5),
        ],
      ),
    );
  }
}
