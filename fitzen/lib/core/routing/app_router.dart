import 'package:fitzen/core/routing/router_name.dart';
import 'package:fitzen/features/auth/presentation/pages/who_are_you/who_are_you.dart';

import 'package:fitzen/features/onboarding/presentation/providers/onboarding_shared_prefs_provider.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fitzen/features/onboarding/presentation/pages/onboarding_page.dart';

final appRouterProvider = Provider<GoRouter>((ref) {
  final isOnboardingDoneAsync = ref.watch(isOnboardingDoneFutureProvider);

  return GoRouter(
    initialLocation: RouterName.onboardingPage,
    routes: [
      GoRoute(
        path: RouterName.onboardingPage,
        builder: (context, state) => const OnBoardingPage(),
      ),
      GoRoute(
        path: RouterName.whoAreYou,
        builder: (context, state) => const WhoAreYouPage(),
      ),
    ],
    redirect: (context, state) {
      return isOnboardingDoneAsync.when(
        data: (done) {
          if (done) {
            // If onboarding is done → go to /home
            if (state.fullPath == RouterName.onboardingPage) {
              return RouterName.whoAreYou;
            }
          } else {
            // If not onboarding → we stay on "/"
            if (state.fullPath != RouterName.onboardingPage) {
              return RouterName.onboardingPage;
            }
          }
          return null;
        },
        loading: () => null,
        error: (_, __) => null,
      );
    },
  );
});
