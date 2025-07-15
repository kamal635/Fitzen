import 'package:fitzen/core/constant/app_assets.dart';
import 'package:fitzen/core/constant/app_colors.dart';
import 'package:fitzen/core/constant/app_fonts.dart';
import 'package:fitzen/core/constant/app_strings.dart';
import 'package:fitzen/features/auth/presentation/providers/trainer_provider/trainer_form_validate/trainer_form_notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UploadDocumentWidget extends ConsumerWidget {
  const UploadDocumentWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(trainerFormProvider);

    return InkWell(
      onTap: () {
        ref.read(trainerFormProvider.notifier).uploadFile(ref);
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Flexible(
            child: Image.asset(
              height: 30.r,
              state.fileCertification == null
                  ? AppAssets.kPDFwhite
                  : AppAssets.kPDFread,
              color: state.fileCertification == null ? AppColors.white : null,
            ),
          ),
          SizedBox(width: 10.w),
          Flexible(
            child: Text(
              state.fileName ?? AppStrings.uploadDocument,
              style: AppTextStyles.titleLarge,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}
