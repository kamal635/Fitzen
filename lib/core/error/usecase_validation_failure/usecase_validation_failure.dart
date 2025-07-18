import 'package:fitzen/core/error/failure.dart';
import 'package:fitzen/core/error/usecase_validation_failure/usecase_validation_failure_strings.dart';

/// Represents validation failures specific to use cases.
class UseCaseValidationFailure extends Failure {
  /// Private constructor with an error message.
  const UseCaseValidationFailure._({required super.message});

  /// Failure for invalid file type (non-PDF).
  const UseCaseValidationFailure.invalidFileType()
    : this._(message: UseCaseValidationFailureStrings.certificateMustBePdf);

  /// Failure for file size exceeding allowed limit.
  const UseCaseValidationFailure.fileTooLarge()
    : this._(message: UseCaseValidationFailureStrings.certificateFileTooLarge);
}
