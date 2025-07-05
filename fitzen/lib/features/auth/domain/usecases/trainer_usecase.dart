import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:fitzen/core/error/failure.dart';

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
    return await trainerRepository.registerTrainer(
      trainer,
      certificate,
      password,
    );
  }
}
