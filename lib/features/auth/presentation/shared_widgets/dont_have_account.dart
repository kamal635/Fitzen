import 'package:fitzen/core/constant/app_colors.dart';
import 'package:fitzen/core/constant/app_fonts.dart';
import 'package:fitzen/core/constant/app_strings.dart';
import 'package:fitzen/core/widgets/custom_text_button.dart';
import 'package:flutter/material.dart';

///  DoNotHaveAccount widget to show if the user doesn't have an account
class DoNotHaveAccount extends StatelessWidget {
  /// Creates a [DoNotHaveAccount]
  ///
  ///with requires [onPressed]
  const DoNotHaveAccount({required this.onPressed, super.key});

  /// A callback that is called when the user tapped.
  final VoidCallback? onPressed;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Flexible(
          child: Text(
            overflow: TextOverflow.ellipsis,
            AppStrings.dontHaveAccount,
            style: AppTextStyles.titleLarge.copyWith(color: Colors.white70),
          ),
        ),

        CustomTextButton(
          title: AppStrings.register,
          onPressed: onPressed,
          color: AppColors.secondary,
        ),
      ],
    );
  }
}
