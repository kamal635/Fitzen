import 'package:fitzen/core/constant/app_colors.dart';
import 'package:fitzen/core/constant/app_icons.dart';
import 'package:fitzen/core/routing/router_name.dart';
import 'package:fitzen/features/onboarding/data/models/onboarding_items.dart';
import 'package:fitzen/features/onboarding/presentation/providers/onboarding_controller_provider.dart';
import 'package:fitzen/features/onboarding/presentation/providers/onboarding_shared_prefs_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

/// Displays onboarding progress indicator and navigation button.
/// Uses ConsumerWidget to react to state changes.
class OnBoardingIndicatorAndButtonSection extends ConsumerWidget {
  /// Create [OnBoardingIndicatorAndButtonSection]
  const OnBoardingIndicatorAndButtonSection({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Watch the PageController and current page index from Riverpod
    final PageController controller = ref.watch(
      onboardingPageControllerProvider,
    );
    final int pageIndex = ref.watch(onboardingPageIndexProvider);

    return Expanded(
      child: Column(
        children: <Widget>[
          SmoothPageIndicator(
            controller: controller,
            count: listOnboarding.length,
            effect: SlideEffect(
              dotWidth: 10.w,
              dotHeight: 10.h,
              dotColor: AppColors.grey,
              activeDotColor: AppColors.secondary,
            ),
            // Allow user to jump to a specific page by tapping a dot
            onDotClicked: (int index) {
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
              final bool isLastPage = pageIndex == listOnboarding.length - 1;

              if (isLastPage) {
                // Mark onboarding as done in persistent storage
                await ref.read(setOnboardingDoneProvider).call();

                // Refresh the onboarding state provider
                final AsyncValue<bool> _ = ref.refresh(
                  isOnboardingDoneFutureProvider,
                );

                // Navigate to SignUp screen if the widget is still mounted
                if (context.mounted) {
                  context.go(RouterName.chooseRole);
                }
              } else {
                await controller.nextPage(
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.ease,
                );
              }
            },
            fillColor: AppColors.secondary,
            shape: const CircleBorder(),
            padding: EdgeInsets.all(20.r),
            child: Icon(AppIcons.arrow, size: 35.r),
          ),
          SizedBox(height: 40.h),
        ],
      ),
    );
  }
}
