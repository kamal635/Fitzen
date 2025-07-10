import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:fitzen/core/error/failure.dart';
import 'package:fitzen/features/auth/domain/entities/trainer_entity.dart';

abstract class TrainerRepository {
  Future<Either<Failure, TrainerEntity>> registerTrainer(
    TrainerEntity trainer,
    File certificate,
    String password,
  );
}
