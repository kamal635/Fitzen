import 'package:fitzen/core/constant/app_paddings.dart';
import 'package:fitzen/core/constant/app_strings.dart';
import 'package:fitzen/features/auth/presentation/widgets/trainer_registration/form_fields/certification_name_field.dart';
import 'package:fitzen/features/auth/presentation/widgets/trainer_registration/form_fields/terms_agreement.dart';
import 'package:fitzen/features/auth/presentation/widgets/trainer_registration/form_fields/upload_certification_field.dart';
import 'package:fitzen/features/auth/presentation/widgets/trainer_registration/next_buttons/step_three_next_button.dart';
import 'package:fitzen/features/auth/presentation/widgets/trainer_registration/step_registration_title.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// Third step of the trainer registration process.
class TrainerRegistrationStepThree extends StatelessWidget {
  ///
  /// create [TrainerRegistrationStepThree]
  const TrainerRegistrationStepThree({super.key, this.onNext, this.onBack});

  /// [onNext] is triggered when proceeding to the next step.
  final VoidCallback? onNext;

  /// [onBack] is triggered when returning to the previous step.
  final VoidCallback? onBack;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppPaddings.horizontalGeneralPage,
      child: Column(
        children: <Widget>[
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  SizedBox(height: 35.h),

                  // title Step three
                  const StepsRegistraionTitle(title: AppStrings.step3Title),

                  SizedBox(height: 35.h),

                  // certification name
                  const CertificationNameField(),

                  //upload certification
                  const UploadCertificationField(),

                  //Terms agreement
                  const TermsAgreementField(),
                ],
              ),
            ),
          ),

          // next/back buttons
          const StepThreeNextBackButton(),

          SizedBox(height: 50.h),
        ],
      ),
    );
  }
}
