import '../repository/onboarding_repository.dart';

class CheckIfOnboardingDoneUsecase {
  final OnboardingRepository repository;

  CheckIfOnboardingDoneUsecase(this.repository);

  Future<bool> call() async {
    return await repository.checkIfOnboardingDone();
  }
}
