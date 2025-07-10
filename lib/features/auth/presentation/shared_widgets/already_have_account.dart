import 'package:fitzen/core/constant/app_colors.dart';
import 'package:fitzen/core/constant/app_fonts.dart';
import 'package:fitzen/core/constant/app_strings.dart';
import 'package:fitzen/core/widgets/custom_text_button.dart';
import 'package:flutter/material.dart';

class AlreadyHaveAccount extends StatelessWidget {
  const AlreadyHaveAccount({super.key, required this.onPressed});

  final Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
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
