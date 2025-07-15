import 'package:fitzen/core/constant/app_icons.dart';
import 'package:fitzen/core/constant/app_paddings.dart';
import 'package:fitzen/core/constant/app_strings.dart';
import 'package:fitzen/core/routing/router_name.dart';
import 'package:fitzen/core/widgets/custom_button.dart';
import 'package:fitzen/features/auth/presentation/providers/trainer_provider/trainer_form_validate/trainer_form_notifier.dart';
import 'package:fitzen/features/auth/presentation/shared_widgets/already_have_account.dart';
import 'package:fitzen/features/auth/presentation/shared_widgets/text_field_auth.dart';
import 'package:fitzen/features/auth/presentation/widgets/trainer_registration/step_registration_title.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class TrainerRegistrationStepOne extends ConsumerWidget {
  const TrainerRegistrationStepOne({super.key, this.onNext});
  final Function()? onNext;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(trainerFormProvider);

    return Padding(
      padding: AppPaddings.horizontalGeneralPage,
      child: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SizedBox(height: 35.h),

                  // title Step One
                  const StepsRegistraionTitle(title: AppStrings.step1Title),

                  SizedBox(height: 35.h),

                  // First Name
                  TextFieldAuth(
                    titleField: AppStrings.firstName,
                    hintText: AppStrings.enterFirstName,
                    prefixIcon: AppIcons.user,

                    initialValue: state.firstName,
                    errorText: state.firstNameError,
                    onChanged: (value) {
                      ref
                          .read(trainerFormProvider.notifier)
                          .updateFirstName(value);
                    },
                  ),

                  // Last Name
                  TextFieldAuth(
                    titleField: AppStrings.lastName,
                    hintText: AppStrings.enteLastName,
                    prefixIcon: AppIcons.user,

                    initialValue: state.lastName,
                    errorText: state.lastNameError,
                    onChanged: (value) {
                      ref
                          .read(trainerFormProvider.notifier)
                          .updateLastName(value);
                    },
                  ),

                  // Email
                  TextFieldAuth(
                    titleField: AppStrings.email,
                    hintText: AppStrings.enteEmail,
                    prefixIcon: AppIcons.email,

                    initialValue: state.email,
                    errorText: state.emailError,
                    onChanged: (value) {
                      ref.read(trainerFormProvider.notifier).updateEmail(value);
                    },
                  ),

                  // Password
                  TextFieldAuth(
                    obscureText: state.obscureTextPassword,
                    titleField: AppStrings.password,
                    hintText: AppStrings.createPassword,
                    prefixIcon: AppIcons.lock,
                    suffixIcon: state.obscureTextPassword
                        ? AppIcons.eye
                        : AppIcons.eyeOff,

                    initialValue: state.password,
                    onTapSuffixIcon: () {
                      ref
                          .read(trainerFormProvider.notifier)
                          .toggleObscureTextPassword();
                    },
                    errorText: state.passwordError,

                    onChanged: (value) {
                      ref
                          .read(trainerFormProvider.notifier)
                          .updatePassword(value);
                    },
                  ),

                  // Confirm Password
                  TextFieldAuth(
                    obscureText: state.obscureTextConfirmPassword,
                    titleField: AppStrings.confirmPassword,
                    hintText: AppStrings.confirmYourPassword,
                    prefixIcon: AppIcons.lock,
                    suffixIcon: state.obscureTextConfirmPassword
                        ? AppIcons.eye
                        : AppIcons.eyeOff,

                    initialValue: state.confirmPassword,
                    onTapSuffixIcon: () {
                      ref
                          .read(trainerFormProvider.notifier)
                          .toggleObscureTextConfirmPassword();
                    },
                    errorText: state.confirmPasswordError,

                    textInputAction: TextInputAction.done,
                    onChanged: (value) {
                      ref
                          .read(trainerFormProvider.notifier)
                          .updateConfirmPassword(value);
                    },
                  ),

                  AlreadyHaveAccount(
                    onPressed: () {
                      context.push(RouterName.login);
                    },
                  ),
                ],
              ),
            ),
          ),

          Align(
            alignment: Alignment.bottomRight,

            child: CustomButton(
              title: AppStrings.next,
              // Handle the Next button press in step one
              onPressed: () {
                // validate step one + go next
                validateStepOneAndGoNext(ref);
              },
            ),
          ),
          SizedBox(height: 50.h),
        ],
      ),
    );
  }

  void validateStepOneAndGoNext(WidgetRef ref) {
    // 1 Get the notifier to call validation and access logic
    final notifier = ref.read(trainerFormProvider.notifier);

    // 2 Trigger validation: this updates the state immediately
    notifier.validateStepOneFields();

    //  IMPORTANT:
    // ref.watch(trainerFormProvider) won't give the new updated state here immediately,
    // because rebuild happens in the *next frame* after state change.
    //
    // ref.read always reads the *latest* value at this exact moment.
    //
    // So, to get the updated errors, we read the state again:
    final state = ref.read(trainerFormProvider);

    // 3 Check validity using the freshly updated state
    final isValid = notifier.isValidStepOne(state);

    // 4 If all fields are valid, move to the next step
    if (isValid) {
      onNext?.call();
    }
  }
}
