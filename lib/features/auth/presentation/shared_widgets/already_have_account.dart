import 'package:fitzen/core/constant/app_colors.dart';
import 'package:fitzen/core/constant/app_fonts.dart';
import 'package:fitzen/core/constant/app_strings.dart';
import 'package:fitzen/core/widgets/custom_text_button.dart';
import 'package:flutter/material.dart';

///  AlreadyHaveAccount widget to show if the user already have an account
class AlreadyHaveAccount extends StatelessWidget {
  /// Creates a [AlreadyHaveAccount]
  ///
  ///with requires [onPressed]
  const AlreadyHaveAccount({required this.onPressed, super.key});

  /// A callback that is called when the user tapped.
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Flexible(
          child: Text(
            AppStrings.haveAccount,
            overflow: TextOverflow.ellipsis,
            style: AppTextStyles.titleLarge.copyWith(color: Colors.white70),
          ),
        ),

        CustomTextButton(
          title: AppStrings.login,
          onPressed: onPressed,
          color: AppColors.secondary,
        ),
      ],
    );
  }
}
