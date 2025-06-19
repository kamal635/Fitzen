import 'package:fitzen/core/usecases/usecase_without_params.dart';

import '../repository/onboarding_repository.dart';

class CheckIfOnboardingDoneUsecase implements UsecaseWithoutParams {
  final OnboardingRepository repository;

  CheckIfOnboardingDoneUsecase(this.repository);
  @override
  Future<bool> call() async {
    return await repository.checkIfOnboardingDone();
  }
}
