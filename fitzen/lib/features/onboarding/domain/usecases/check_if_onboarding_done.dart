import '../repository/onboarding_repository.dart';

class CheckIfOnboardingDone {
  final OnboardingRepository repository;

  CheckIfOnboardingDone(this.repository);

  Future<bool> call() async {
    return await repository.checkIfOnboardingDone();
  }
}
