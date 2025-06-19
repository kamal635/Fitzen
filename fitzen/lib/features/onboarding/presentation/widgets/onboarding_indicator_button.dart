import 'package:fitzen/core/constant/app_colors.dart';
import 'package:fitzen/core/routing/router_name.dart';
import 'package:fitzen/features/onboarding/data/models/onboarding_items.dart';
import 'package:fitzen/features/onboarding/presentation/providers/onboarding_controller_provider.dart';
import 'package:fitzen/features/onboarding/presentation/providers/onboarding_shared_prefs_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingIndicatorAndButtonSection extends ConsumerWidget {
  const OnBoardingIndicatorAndButtonSection({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Watch the PageController and current page index from Riverpod
    final controller = ref.watch(onboardingPageControllerProvider);
    final pageIndex = ref.watch(onboardingPageIndexProvider);

    return Expanded(
      flex: 1,
      child: Column(
        children: [
          SmoothPageIndicator(
            controller: controller,
            count: listOnboarding.length,
            effect: SlideEffect(
              dotWidth: 10.w,
              dotHeight: 10.h,
              paintStyle: PaintingStyle.fill,
              dotColor: AppColors.grey,
              activeDotColor: AppColors.secondary,
            ),
            // Allow user to jump to a specific page by tapping a dot
            onDotClicked: (index) {
              controller.animateToPage(
                index,
                duration: const Duration(milliseconds: 300),
                curve: Curves.ease,
              );
            },
          ),

          const Spacer(),

          // Navigation button (next or finish)
          RawMaterialButton(
            onPressed: () async {
              // Check if it's the last onboarding page
              final isLastPage = pageIndex == listOnboarding.length - 1;

              if (isLastPage) {
                // Mark onboarding as done in persistent storage
                await ref.read(setOnboardingDoneProvider).call();

                // Refresh the onboarding state provider
                final _ = ref.refresh(isOnboardingDoneFutureProvider);

                // Navigate to SignUp screen if the widget is still mounted
                if (context.mounted) {
                  context.go(RouterName.signUpPage);
                }
              } else {
                controller.nextPage(
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.ease,
                );
              }
            },
            fillColor: AppColors.secondary,
            shape: const CircleBorder(),
            padding: EdgeInsets.all(20.r),
            child: Icon(Icons.arrow_right_alt_sharp, size: 35.h),
          ),
          SizedBox(height: 40.h),
        ],
      ),
    );
  }
}
