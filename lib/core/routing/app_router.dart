import 'package:fitzen/core/routing/router_name.dart';
import 'package:fitzen/features/auth/presentation/pages/forgot_password/forgot_password_page/forgot_password.dart';
import 'package:fitzen/features/auth/presentation/pages/forgot_password/open_email_app_page/open_email_app.dart';
import 'package:fitzen/features/auth/presentation/pages/forgot_password/reset_password_page/reset_password.dart';
import 'package:fitzen/features/auth/presentation/pages/login_page/login_page.dart';
import 'package:fitzen/features/auth/presentation/pages/trainee_registration_page/trainer_registration.dart';
import 'package:fitzen/features/auth/presentation/pages/trainer_registration_page/trainer_registration.dart';
import 'package:fitzen/features/auth/presentation/pages/who_are_you_page/who_are_you_page.dart';
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

      GoRoute(
        path: RouterName.trainerRegistration,
        builder: (context, state) => const TrainerRegistrationPage(),
      ),

      GoRoute(
        path: RouterName.traineeRegistration,
        builder: (context, state) => const TraineeRegistrationPage(),
      ),

      GoRoute(
        path: RouterName.login,
        builder: (context, state) => const LoginPage(),
      ),

      GoRoute(
        path: RouterName.forgotPassword,
        builder: (context, state) => const ForgotPasswordPage(),
      ),

      GoRoute(
        path: RouterName.openEmail,
        builder: (context, state) => const OpenEmailAppPage(),
      ),

      GoRoute(
        path: RouterName.resetPassword,
        builder: (context, state) => const ResetPasswordPage(),
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
