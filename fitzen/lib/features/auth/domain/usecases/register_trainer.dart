import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:fitzen/core/error/failure.dart';
import 'package:fitzen/features/auth/domain/entities/trainer_entity.dart';
import 'package:fitzen/features/auth/domain/repository/register_trainer.dart';

class RegisterTrainer {
  final TrainerRepository trainerRepository;

  RegisterTrainer({required this.trainerRepository});

  Future<Either<Failure, TrainerEntity>> call(
    TrainerEntity trainer,
    File? certificate,
  ) {
    return trainerRepository.registerTrainer(trainer, certificate);
  }
}
