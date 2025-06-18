import 'package:fitzen/core/services/shared_prefs_provider.dart';
import 'package:fitzen/features/onboarding/data/datastource/onboarding_local_datasource.dart';
import 'package:fitzen/features/onboarding/data/repository/onboarding_repository_impl.dart';
import 'package:fitzen/features/onboarding/domain/repository/onboarding_repository.dart';
import 'package:fitzen/features/onboarding/domain/usecases/check_if_onboarding_done.dart';
import 'package:fitzen/features/onboarding/domain/usecases/set_onboarding_done.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// Local datasource
final onboardingLocalDatasourceProvider = Provider<OnboardingLocalDataSource>((
  ref,
) {
  final prefs = ref.watch(sharedPreferencesProvider);
  return OnboardingLocalDataSourceImpl(prefs);
});

// Repository
final onboardingRepositoryProvider = Provider<OnboardingRepository>((ref) {
  final local = ref.watch(onboardingLocalDatasourceProvider);
  return OnboardingRepositoryImpl(local);
});

// Use Cases
final setOnboardingDoneProvider = Provider<SetOnboardingDone>((ref) {
  final repo = ref.watch(onboardingRepositoryProvider);
  return SetOnboardingDone(repo);
});

final checkIfOnboardingDoneProvider = Provider<CheckIfOnboardingDone>((ref) {
  final repo = ref.watch(onboardingRepositoryProvider);
  return CheckIfOnboardingDone(repo);
});

final isOnboardingDoneFutureProvider = FutureProvider<bool>((ref) async {
  final checkUsecase = ref.watch(checkIfOnboardingDoneProvider);
  return await checkUsecase(); // this return: True or False
});
