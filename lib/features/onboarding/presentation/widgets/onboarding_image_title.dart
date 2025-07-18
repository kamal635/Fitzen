import 'package:fitzen/core/constant/app_fonts.dart';
import 'package:fitzen/features/onboarding/data/models/onboarding_items.dart';
import 'package:fitzen/features/onboarding/presentation/providers/onboarding_controller_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// Displays onboarding image and title section.
/// Uses ConsumerWidget to listen to providers.
class OnBoardingImageAndTitleSection extends ConsumerWidget {
  /// Create [OnBoardingImageAndTitleSection]
  const OnBoardingImageAndTitleSection({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final PageController controller = ref.watch(
      onboardingPageControllerProvider,
    );

    return Expanded(
      flex: 2,
      child: PageView.builder(
        controller: controller,
        itemCount: listOnboarding.length,
        itemBuilder: (BuildContext context, int i) {
          final OnBoardingModel item = listOnboarding[i];
          final double imageWidth = 400.w;
          final double imageHeight = (imageWidth / (12 / 9)).h;
          return Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              SizedBox(
                height: imageHeight,
                width: imageWidth,
                child: Image.asset(item.image),
              ),
              Flexible(
                child: Text(
                  item.title,
                  style: AppTextStyles.displayMedium,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 3,
                  textAlign: TextAlign.center,
                ),
              ),

              SizedBox(height: 10.h),

              Flexible(
                child: Text(
                  item.subTitle,
                  style: AppTextStyles.bodyMedium,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 3,
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
