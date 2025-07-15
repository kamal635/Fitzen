import 'package:fitzen/core/constant/app_colors.dart';
import 'package:fitzen/core/constant/app_fonts.dart';
import 'package:fitzen/core/constant/app_strings.dart';
import 'package:flutter/material.dart';

class TermsAgreementCheckbox extends StatelessWidget {
  const TermsAgreementCheckbox({
    super.key,
    required this.value,
    this.onChanged,
    this.errorText,
  });
  final bool value;
  final String? errorText;
  final Function(bool?)? onChanged;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Theme(
          data: Theme.of(context).copyWith(
            splashColor: Colors.transparent,
          ), //Disable the flashing that appears

          child: CheckboxListTile(
            contentPadding: EdgeInsets.zero,
            activeColor: AppColors.secondary,

            title: Text(
              AppStrings.argreeTerms,
              style: AppTextStyles.titleLarge,
            ),
            value: value,
            onChanged: onChanged,
            visualDensity:
                VisualDensity.compact, //Reduces vertical and lateral space
            controlAffinity: ListTileControlAffinity.leading,
          ),
        ),

        Text(
          errorText ?? "",
          style: AppTextStyles.labelSmall.copyWith(color: AppColors.red),
          overflow: TextOverflow.ellipsis,
        ),
      ],
    );
  }
}
