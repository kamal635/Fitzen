import 'package:fitzen/features/onboarding/domain/repository/onboarding_repository.dart';

/// Use case to check if onboarding is completed.
class CheckIfOnboardingDoneUsecase {
  /// Constructor for [CheckIfOnboardingDoneUsecase].
  CheckIfOnboardingDoneUsecase(this.repository);

  /// Requires an instance of [OnboardingRepository] to access onboarding data.
  final OnboardingRepository repository;

  /// Executes the use case to check if onboarding is completed.
  /// Returns a [Future] that resolves
  /// to `true` if onboarding is done, otherwise `false`.
  Future<bool> call() async {
    return repository.checkIfOnboardingDone();
  }
}
