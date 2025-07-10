import 'package:fitzen/features/onboarding/data/datastource/onboarding_local_datasource.dart';
import '../../domain/repository/onboarding_repository.dart';

class OnboardingRepositoryImpl implements OnboardingRepository {
  final OnboardingLocalDataSource localDataSource;

  OnboardingRepositoryImpl(this.localDataSource);

  @override
  Future<void> setOnboardingDone() async {
    await localDataSource.cacheOnboardingDone();
  }

  @override
  Future<bool> checkIfOnboardingDone() async {
    return localDataSource.isOnboardingDone();
  }
}
