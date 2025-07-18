import 'package:fitzen/core/constant/app_strings.dart';
import 'package:fitzen/core/widgets/custom_button.dart';
import 'package:fitzen/core/widgets/custom_text_button.dart';
import 'package:flutter/material.dart';

/// A reusable widget that provides "Next" and "Back" buttons.
///
/// Used throughout the registration process or other multistep forms.
class CustomNextBackButtons extends StatelessWidget {
  ///
  /// create [CustomNextBackButtons]
  const CustomNextBackButtons({super.key, this.onNext, this.onBack});

  /// [onNext] is triggered when proceeding to the next step.
  final VoidCallback? onNext;

  /// [onBack] is triggered when returning to the previous step.
  final VoidCallback? onBack;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Align(
          alignment: Alignment.bottomLeft,
          child: CustomTextButton(title: AppStrings.back, onPressed: onBack),
        ),

        //button next to step 3
        CustomButton(title: AppStrings.next, onPressed: onNext),
      ],
    );
  }
}
