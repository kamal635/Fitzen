abstract class OnboardingRepository {
  Future<void> setOnboardingDone();
  Future<bool> checkIfOnboardingDone();
}
