import 'package:fitzen/core/constant/app_strings.dart';
import 'package:fitzen/core/widgets/custom_button.dart';
import 'package:fitzen/core/widgets/custom_text_button.dart';
import 'package:flutter/material.dart';

class CustomNextBackButtons extends StatelessWidget {
  const CustomNextBackButtons({super.key, this.onNext, this.onBack});
  final Function()? onNext;
  final Function()? onBack;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
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
