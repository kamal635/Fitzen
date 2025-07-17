import 'package:fitzen/core/constant/app_colors.dart';
import 'package:fitzen/core/constant/app_fonts.dart';
import 'package:fitzen/core/constant/app_strings.dart';
import 'package:flutter/material.dart';

/// A checkbox used to confirm agreement to terms and conditions.
///
/// Typically used in registration or onboarding forms.
class TermsAgreementCheckbox extends StatelessWidget {
  ///
  /// create [TermsAgreementCheckbox]
  const TermsAgreementCheckbox({
    required this.value,
    super.key,
    this.onChanged,
    this.errorText,
  });

  /// [value] determines if the checkbox is checked.
  final bool value;

  /// [errorText] shows an error message below the checkbox if needed.
  final String? errorText;

  /// [onChanged] is the callback when the user toggles the checkbox.
  final ValueChanged<bool?>? onChanged;

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
          errorText ?? '',
          style: AppTextStyles.labelSmall.copyWith(color: AppColors.red),
          overflow: TextOverflow.ellipsis,
        ),
      ],
    );
  }
}
