import 'package:fitzen/core/constant/app_colors.dart';
import 'package:fitzen/core/constant/app_icons.dart';
import 'package:fitzen/core/constant/app_paddings.dart';
import 'package:fitzen/core/constant/app_strings.dart';
import 'package:fitzen/core/widgets/custom_button.dart';
import 'package:fitzen/features/auth/presentation/shared_widgets/icon_title_subtitle_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// Fourth step in the trainer registration flow.
class TrainerRegistrationStepFour extends StatelessWidget {
  ///
  /// create [TrainerRegistrationStepFour]
  const TrainerRegistrationStepFour({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppPaddings.horizontalGeneralPage,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          // section Icon / title / subtitle
          const IconWithTitleAndSubTitleWidget(
            iconColor: AppColors.green,
            icon: AppIcons.check,
            title: AppStrings.step4Title,
            subTitle: AppStrings.underReview,
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
