import '../repository/onboarding_repository.dart';

class SetOnboardingDone {
  final OnboardingRepository repository;

  SetOnboardingDone(this.repository);

  Future<void> call() async {
    await repository.setOnboardingDone();
  }
}
