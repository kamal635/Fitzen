import '../repository/onboarding_repository.dart';

class SetOnboardingDoneUsecase {
  final OnboardingRepository repository;

  SetOnboardingDoneUsecase(this.repository);

  Future<void> call() async {
    await repository.setOnboardingDone();
  }
}
