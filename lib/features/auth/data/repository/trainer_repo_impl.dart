import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:fitzen/core/error/failure.dart';
import 'package:fitzen/features/auth/data/datasource/trainer_remote_data_source.dart';
import 'package:fitzen/features/auth/data/models/trainer_model.dart';
import 'package:fitzen/features/auth/domain/entities/trainer_entity.dart';
import 'package:fitzen/features/auth/domain/repository/trainer_repo.dart';

class TrainerRepositoryImpl implements TrainerRepository {
  final TrainerRemoteDataSource remoteDataSource;

  TrainerRepositoryImpl(this.remoteDataSource);

  @override
  Future<Either<Failure, TrainerEntity>> registerTrainer(
    TrainerEntity trainer,
    File certificate,
    String password,
  ) async {
    final trainerModel = TrainerModelX.fromEntity(trainer);

    final result = await remoteDataSource.registerTrainer(
      trainerModel,
      certificate,
      password,
    );

    return result.map((model) => model.toEntity());
  }
}
