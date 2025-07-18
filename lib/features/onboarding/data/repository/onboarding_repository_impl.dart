import 'package:fitzen/features/onboarding/data/datastource/onboarding_local_datasource.dart';
import 'package:fitzen/features/onboarding/domain/repository/onboarding_repository.dart';

/// Implementation of OnboardingRepository using local data source.
class OnboardingRepositoryImpl implements OnboardingRepository {
  /// Constructs with a local data source dependency.
  OnboardingRepositoryImpl(this.localDataSource);

  /// Local data source for onboarding data caching and retrieval.
  final OnboardingLocalDataSource localDataSource;

  @override
  Future<void> setOnboardingDone() async {
    await localDataSource.cacheOnboardingDone();
  }

  @override
  Future<bool> checkIfOnboardingDone() async {
    return localDataSource.isOnboardingDone();
  }
}
