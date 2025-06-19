import 'package:fitzen/core/usecases/usecase_without_params.dart';

import '../repository/onboarding_repository.dart';

class SetOnboardingDoneUsecase implements UsecaseWithoutParams {
  final OnboardingRepository repository;

  SetOnboardingDoneUsecase(this.repository);

  @override
  Future<void> call() async {
    await repository.setOnboardingDone();
  }
}
