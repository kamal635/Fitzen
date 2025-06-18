import 'package:fitzen/features/auth/sign_up_tester.dart';
import 'package:fitzen/features/onboarding/presentation/providers/onboarding_shared_prefs_provider.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fitzen/features/onboarding/presentation/pages/onboarding_page.dart';

final appRouterProvider = Provider<GoRouter>((ref) {
  final isOnboardingDoneAsync = ref.watch(isOnboardingDoneFutureProvider);

  return GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(path: '/', builder: (context, state) => const OnBoardingPage()),
      GoRoute(
        path: "/SignUpTester",
        builder: (context, state) => const SignUpTester(),
      ),
    ],
    redirect: (context, state) {
      return isOnboardingDoneAsync.when(
        data: (done) {
          if (done) {
            // If onboarding is done → go to /home
            if (state.fullPath == '/') return "/SignUpTester";
          } else {
            // If not onboarding → we stay on "/"
            if (state.fullPath != '/') return '/';
          }
          return null;
        },
        loading: () => null,
        error: (_, __) => null,
      );
    },
  );
});
