import 'package:fitzen/core/constant/app_fonts.dart';
import 'package:fitzen/features/onboarding/data/models/onboarding_items.dart';
import 'package:fitzen/features/onboarding/presentation/providers/onboarding_controller_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class OnBoardingImageAndTitleSection extends ConsumerWidget {
  const OnBoardingImageAndTitleSection({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.watch(onboardingPageControllerProvider);

    return Expanded(
      flex: 2,
      child: PageView.builder(
        controller: controller,
        itemCount: listOnboarding.length,
        itemBuilder: (context, i) {
          final item = listOnboarding[i];
          return Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              AspectRatio(aspectRatio: 12 / 9, child: Image.asset(item.image)),
              Text(
                item.tilte,
                style: AppTextStyles.headline2,
                textAlign: TextAlign.center,
              ),
              Text(
                item.subTitle,
                style: AppTextStyles.body2,
                textAlign: TextAlign.center,
              ),
            ],
          );
        },
      ),
    );
  }
}
