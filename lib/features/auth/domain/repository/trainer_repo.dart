import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:fitzen/core/error/failure.dart';
import 'package:fitzen/features/auth/domain/entities/trainer_entity.dart';

/// Defines the contract for trainer-related operations.
// ignore: one_member_abstracts
abstract class TrainerRepository {
  /// Registers a trainer with their data, certificate file, and password.
  Future<Either<Failure, TrainerEntity>> registerTrainer(
    TrainerEntity trainer,
    File certificate,
    String password,
  );
}
