import 'package:fitzen/features/auth/domain/entities/user_entity.dart';

class TraineeEntity extends UserEntity {
  TraineeEntity({
    required super.firstName,
    required super.lastName,
    required super.emailAddress,
  });
}
