import 'package:fitzen/core/constant/app_colors.dart';
import 'package:fitzen/core/constant/app_fonts.dart';
import 'package:fitzen/core/constant/app_strings.dart';
import 'package:flutter/material.dart';

class TermsAgreementCheckbox extends StatelessWidget {
  const TermsAgreementCheckbox({
    super.key,
    required this.value,
    this.onChanged,
  });
  final bool value;
  final Function(bool?)? onChanged;
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        splashColor: Colors.transparent,
      ), //Disable the flashing that appears

      child: CheckboxListTile(
        contentPadding: EdgeInsets.zero,
        activeColor: AppColors.secondary,

        title: Text(AppStrings.argreeTerms, style: AppTextStyles.titleLarge),
        value: value,
        onChanged: onChanged,
        visualDensity:
            VisualDensity.compact, //Reduces vertical and lateral space
        controlAffinity: ListTileControlAffinity.leading,
      ),
    );
  }
}
