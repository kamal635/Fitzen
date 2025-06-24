import 'package:fitzen/core/constant/app_fonts.dart';
import 'package:fitzen/core/constant/app_icons.dart';
import 'package:fitzen/core/constant/app_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UploadDocumentWidget extends StatelessWidget {
  const UploadDocumentWidget({super.key, this.onTap});
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(AppIcons.document),
          SizedBox(width: 10.w),
          Text(AppStrings.uploadDocument, style: AppTextStyles.titleLarge),
        ],
      ),
    );
  }
}
