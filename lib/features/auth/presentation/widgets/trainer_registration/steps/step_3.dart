import 'package:fitzen/core/constant/app_icons.dart';
import 'package:fitzen/core/constant/app_paddings.dart';
import 'package:fitzen/core/constant/app_strings.dart';
import 'package:fitzen/features/auth/presentation/providers/trainer_provider/trainer_form_validate/trainer_form_notifier.dart';
import 'package:fitzen/features/auth/presentation/providers/trainer_provider/trainer_form_validate/trainer_form_state.dart';
import 'package:fitzen/features/auth/presentation/shared_widgets/text_field_auth.dart';
import 'package:fitzen/features/auth/presentation/widgets/trainer_registration/custom_next_back_buttons.dart';
import 'package:fitzen/features/auth/presentation/widgets/trainer_registration/step_registration_title.dart';
import 'package:fitzen/features/auth/presentation/widgets/trainer_registration/terms_agreement_checkbox.dart';
import 'package:fitzen/features/auth/presentation/widgets/trainer_registration/upload_document_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// Third step of the trainer registration process.
class TrainerRegistrationStepThree extends ConsumerWidget {
  ///
  /// create [TrainerRegistrationStepThree]
  const TrainerRegistrationStepThree({super.key, this.onNext, this.onBack});

  /// [onNext] is triggered when proceeding to the next step.
  final VoidCallback? onNext;

  /// [onBack] is triggered when returning to the previous step.
  final VoidCallback? onBack;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final TrainerFormState state = ref.watch(trainerFormProvider);
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
                  TextFieldAuth(
                    titleField: AppStrings.certificationName,
                    hintText: AppStrings.exampleCertification,
                    prefixIcon: AppIcons.certificate,

                    initialValue: state.certificationName,
                    errorText: state.certificationNameError,
                    onChanged: (String value) {
                      ref
                          .read(trainerFormProvider.notifier)
                          .updateCertificationName(value);
                    },
                  ),

                  //upload certification
                  TextFieldAuth(
                    titleField: AppStrings.uploadCertification,
                    hintText: AppStrings.uploadDocument,
                    prefixIcon: AppIcons.file,
                    readOnly: true,
                    isCenter: true,
                    textInputAction: TextInputAction.done,

                    errorText: state.uploadCertificationError,
                    widgetCenter: const UploadDocumentWidget(),
                    // suffixIcon: ,
                  ),

                  TermsAgreementCheckbox(
                    errorText: state.termsAgreementError,
                    value: state.termsAgreement,
                    onChanged: (bool? value) {
                      ref
                          .read(trainerFormProvider.notifier)
                          .toggleCheckTerms(value: value!);
                    },
                  ),
                ],
              ),
            ),
          ),

          // next/back buttons
          CustomNextBackButtons(
            onBack: onBack,
            onNext: () {
              final TrainerFormNotifier notifier = ref.read(
                trainerFormProvider.notifier,
              )..validateStepThreeFields();

              final TrainerFormState state = ref.read(trainerFormProvider);
              final bool isValid = notifier.isValidStepThree(state);

              if (isValid) {
                onNext?.call();
              }
            },
          ),

          SizedBox(height: 50.h),
        ],
      ),
    );
  }
}
