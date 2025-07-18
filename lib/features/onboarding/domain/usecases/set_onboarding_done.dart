import 'package:fitzen/features/onboarding/domain/repository/onboarding_repository.dart';

/// Use case to mark onboarding as completed.
///
/// Calls the repository to persist the onboarding completion status.
class SetOnboardingDoneUsecase {
  /// Constructor for [SetOnboardingDoneUsecase].
  SetOnboardingDoneUsecase(this.repository);

  /// Repository instance used to perform onboarding data operations.
  final OnboardingRepository repository;

  /// Executes the use case to set onboarding as done.
  Future<void> call() async {
    await repository.setOnboardingDone();
  }
}
