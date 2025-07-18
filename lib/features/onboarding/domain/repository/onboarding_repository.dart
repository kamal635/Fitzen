/// Repository interface for onboarding status management.
abstract class OnboardingRepository {
  /// Marks onboarding as completed.
  Future<void> setOnboardingDone();

  /// Checks if onboarding has been completed.
  Future<bool> checkIfOnboardingDone();
}
