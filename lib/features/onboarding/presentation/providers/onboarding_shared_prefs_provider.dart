import 'package:fitzen/core/services/shared_prefs_provider.dart';
import 'package:fitzen/features/onboarding/data/datastource/onboarding_local_datasource.dart';
import 'package:fitzen/features/onboarding/data/repository/onboarding_repository_impl.dart';
import 'package:fitzen/features/onboarding/domain/repository/onboarding_repository.dart';
import 'package:fitzen/features/onboarding/domain/usecases/check_if_onboarding_done.dart';
import 'package:fitzen/features/onboarding/domain/usecases/set_onboarding_done.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// Provides an instance of OnboardingLocalDataSource.
final Provider<OnboardingLocalDataSource> onboardingLocalDatasourceProvider =
    Provider<OnboardingLocalDataSource>((
      Ref<OnboardingLocalDataSource> ref,
    ) {
      final SharedPreferences prefs = ref.watch(sharedPreferencesProvider);
      return OnboardingLocalDataSourceImpl(prefs);
    });

///
///-------------------------------------------------------
///

/// Provides an instance of OnboardingRepository.
final Provider<OnboardingRepository> onboardingRepositoryProvider =
    Provider<OnboardingRepository>((Ref<OnboardingRepository> ref) {
      final OnboardingLocalDataSource local = ref.watch(
        onboardingLocalDatasourceProvider,
      );
      return OnboardingRepositoryImpl(local);
    });

///
///-------------------------------------------------------
///

/// Provides an instance of SetOnboardingDoneUsecase.
final Provider<SetOnboardingDoneUsecase> setOnboardingDoneProvider =
    Provider<SetOnboardingDoneUsecase>((
      Ref<SetOnboardingDoneUsecase> ref,
    ) {
      final OnboardingRepository repo = ref.watch(onboardingRepositoryProvider);
      return SetOnboardingDoneUsecase(repo);
    });

///
///-------------------------------------------------------
///

/// Provides an instance of CheckIfOnboardingDoneUsecase.
final Provider<CheckIfOnboardingDoneUsecase> checkIfOnboardingDoneProvider =
    Provider<CheckIfOnboardingDoneUsecase>((
      Ref<CheckIfOnboardingDoneUsecase> ref,
    ) {
      final OnboardingRepository repo = ref.watch(onboardingRepositoryProvider);
      return CheckIfOnboardingDoneUsecase(repo);
    });

///
///-------------------------------------------------------
///

/// Provides a Future of bool indicating if onboarding is completed.
final FutureProvider<bool> isOnboardingDoneFutureProvider =
    FutureProvider<bool>((Ref<AsyncValue<bool>> ref) async {
      final CheckIfOnboardingDoneUsecase checkUsecase = ref.watch(
        checkIfOnboardingDoneProvider,
      );
      return checkUsecase(); // this return: True or False
    });
