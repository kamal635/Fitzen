import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:fitzen/core/error/failure.dart';
import 'package:fitzen/features/auth/data/datasource/trainer_remote_data_source.dart';
import 'package:fitzen/features/auth/data/models/trainer_model.dart';
import 'package:fitzen/features/auth/domain/entities/trainer_entity.dart';
import 'package:fitzen/features/auth/domain/repository/trainer_repo.dart';

/// Implements TrainerRepository using a remote data source.
class TrainerRepositoryImpl implements TrainerRepository {
  /// Creates repository with the given remote data source.
  TrainerRepositoryImpl(this.remoteDataSource);

  /// Remote data source for trainer operations.
  final TrainerRemoteDataSource remoteDataSource;

  @override
  Future<Either<Failure, TrainerEntity>> registerTrainer(
    TrainerEntity trainer,
    File certificate,
    String password,
  ) async {
    final TrainerModel trainerModel = TrainerModelX.fromEntity(trainer);

    final Either<Failure, TrainerModel> result = await remoteDataSource
        .registerTrainer(
          trainerModel,
          certificate,
          password,
        );

    return result.map((TrainerModel model) => model.toEntity());
  }
}
