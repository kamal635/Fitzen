import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:fitzen/core/error/failure.dart';
import 'package:fitzen/core/error/usecase_validation_failure/usecase_validation_failure.dart';
import 'package:fitzen/core/error/usecase_validation_failure/usecase_validation_failure_strings.dart';

import 'package:fitzen/features/auth/domain/entities/trainer_entity.dart';
import 'package:fitzen/features/auth/domain/repository/trainer_repo.dart';

class RegisterTrainerUserCase {
  final TrainerRepository trainerRepository;

  RegisterTrainerUserCase({required this.trainerRepository});

  Future<Either<Failure, TrainerEntity>> call(
    TrainerEntity trainer,
    File certificate,
    String password,
  ) async {
    // ======== 1) Validate file type (must end with .pdf)
    final lowerCasePath = certificate.path.toLowerCase();
    if (!lowerCasePath.endsWith(UseCaseValidationFailureStrings.pdfExtension)) {
      return left(const UseCaseValidationFailure.invalidFileType());
    }

    // ======== 2) Validate file size (must be <= 2 MB)
    final fileSizeInBytes = await certificate
        .length(); // Get file size in bytes
    const maxSizeInBytes = 2 * 1024 * 1024; // 2 MB
    if (fileSizeInBytes > maxSizeInBytes) {
      return left(const UseCaseValidationFailure.fileTooLarge());
    }

    // ======== 3) All validations passed, proceed to register trainer
    return await trainerRepository.registerTrainer(
      trainer,
      certificate,
      password,
    );
  }
}
