import 'package:fitzen/core/error/failure.dart';
import 'package:fitzen/core/error/usecase_validation_failure/usecase_validation_failure_strings.dart';

class UseCaseValidationFailure extends Failure {
  const UseCaseValidationFailure._({required super.message});

  const UseCaseValidationFailure.invalidFileType()
    : this._(message: UseCaseValidationFailureStrings.certificateMustBePdf);
  const UseCaseValidationFailure.fileTooLarge()
    : this._(message: UseCaseValidationFailureStrings.certificateFileTooLarge);
}
