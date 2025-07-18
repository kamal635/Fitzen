import 'package:fitzen/features/auth/domain/entities/user_entity.dart';

/// Represents a trainee user, extending UserEntity.
class TraineeEntity extends UserEntity {
  /// Creates a TraineeEntity with required user details.
  TraineeEntity({
    required super.firstName,
    required super.lastName,
    required super.emailAddress,
  });
}
