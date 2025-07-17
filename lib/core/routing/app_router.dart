import 'package:fitzen/core/routing/router_name.dart';
import 'package:fitzen/features/auth/presentation/pages/choose_role_page/choose_role_page.dart';
import 'package:fitzen/features/auth/presentation/pages/forgot_password/forgot_password_page/forgot_password.dart';
import 'package:fitzen/features/auth/presentation/pages/forgot_password/open_email_app_page/open_email_app.dart';
import 'package:fitzen/features/auth/presentation/pages/forgot_password/reset_password_page/reset_password.dart';
import 'package:fitzen/features/auth/presentation/pages/login_page/login_page.dart';
import 'package:fitzen/features/auth/presentation/pages/trainee_registration_page/trainee_registration.dart';
import 'package:fitzen/features/auth/presentation/pages/trainer_registration_page/trainer_registration.dart';
import 'package:fitzen/features/onboarding/presentation/pages/onboarding_page.dart';
import 'package:fitzen/features/onboarding/presentation/providers/onboarding_shared_prefs_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

/// Provides the app's routing configuration.
final Provider<GoRouter> appRouterProvider = Provider<GoRouter>((
  Ref<GoRouter> ref,
) {
  final AsyncValue<bool> isOnboardingDoneAsync = ref.watch(
    isOnboardingDoneFutureProvider,
  );

  return GoRouter(
    initialLocation: RouterName.onboardingPage,
    routes: <RouteBase>[
      GoRoute(
        path: RouterName.onboardingPage,
        builder: (BuildContext context, GoRouterState state) =>
            const OnBoardingPage(),
      ),

      GoRoute(
        path: RouterName.chooseRole,
        builder: (BuildContext context, GoRouterState state) =>
            const ChooseRolePage(),
      ),

      GoRoute(
        path: RouterName.trainerRegistration,
        builder: (BuildContext context, GoRouterState state) =>
            const TrainerRegistrationPage(),
      ),

      GoRoute(
        path: RouterName.traineeRegistration,
        builder: (BuildContext context, GoRouterState state) =>
            const TraineeRegistrationPage(),
      ),

      GoRoute(
        path: RouterName.login,
        builder: (BuildContext context, GoRouterState state) =>
            const LoginPage(),
      ),

      GoRoute(
        path: RouterName.forgotPassword,
        builder: (BuildContext context, GoRouterState state) =>
            const ForgotPasswordPage(),
      ),

      GoRoute(
        path: RouterName.openEmail,
        builder: (BuildContext context, GoRouterState state) =>
            const OpenEmailAppPage(),
      ),

      GoRoute(
        path: RouterName.resetPassword,
        builder: (BuildContext context, GoRouterState state) =>
            const ResetPasswordPage(),
      ),
    ],
    redirect: (BuildContext context, GoRouterState state) {
      return isOnboardingDoneAsync.when(
        data: (bool done) {
          if (done) {
            // If onboarding is done → go to /home
            if (state.fullPath == RouterName.onboardingPage) {
              return RouterName.chooseRole;
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
        error: (_, _) => null,
      );
    },
  );
});
