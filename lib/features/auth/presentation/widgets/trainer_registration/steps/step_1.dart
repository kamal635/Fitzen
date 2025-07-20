import 'package:fitzen/core/constant/app_paddings.dart';
import 'package:fitzen/core/constant/app_strings.dart';
import 'package:fitzen/core/routing/router_name.dart';
import 'package:fitzen/features/auth/presentation/shared_widgets/already_have_account.dart';
import 'package:fitzen/features/auth/presentation/widgets/trainer_registration/forms/confirm_password_field.dart';
import 'package:fitzen/features/auth/presentation/widgets/trainer_registration/forms/email_field.dart';
import 'package:fitzen/features/auth/presentation/widgets/trainer_registration/forms/first_name_field.dart';
import 'package:fitzen/features/auth/presentation/widgets/trainer_registration/forms/last_name_field.dart';
import 'package:fitzen/features/auth/presentation/widgets/trainer_registration/forms/password_field.dart';
import 'package:fitzen/features/auth/presentation/widgets/trainer_registration/next_buttons/step_one_next_button.dart';
import 'package:fitzen/features/auth/presentation/widgets/trainer_registration/step_registration_title.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

/// First step of the trainer registration process.
class TrainerRegistrationStepOne extends StatelessWidget {
  ///
  /// create [TrainerRegistrationStepOne]
  const TrainerRegistrationStepOne({super.key, this.onNext});

  /// [onNext] is triggered when the user wants to proceed to the next step.
  final VoidCallback? onNext;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppPaddings.horizontalGeneralPage,
      child: Column(
        children: <Widget>[
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  SizedBox(height: 35.h),

                  /// title Step One
                  const StepsRegistraionTitle(title: AppStrings.step1Title),

                  SizedBox(height: 35.h),

                  /// First Name
                  const FirstNameField(),

                  /// Last Name
                  const LastNameField(),

                  /// Email
                  const EmailField(),

                  /// Password
                  const PasswordField(),

                  /// Confirm Password
                  const ConfirmPasswordField(),

                  AlreadyHaveAccount(
                    onPressed: () {
                      context.push(RouterName.login);
                    },
                  ),
                ],
              ),
            ),
          ),

          /// Next Button
          Align(
            alignment: Alignment.bottomRight,
            child: StepOneNextButton(
              onNext: onNext,
            ),
          ),
          SizedBox(height: 50.h),
        ],
      ),
    );
  }
}
