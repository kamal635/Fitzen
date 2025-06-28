import 'package:fitzen/features/auth/data/models/approval_status.dart';
import 'package:fitzen/features/auth/domain/entities/trainer_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'trainer_model.g.dart';

@JsonSerializable()
class TrainerModel extends TrainerEntity {
  TrainerModel({
    required super.firstName,
    required super.lastName,
    required super.emailAddress,
    required super.phoneNumber,
    required super.yearsOfExperience,
    required super.specializations,
    required super.certificationName,
    required super.uploadCertificationUrl,
    super.isApproved,
  });
  //==================== from/to Firestore ==========================
  factory TrainerModel.fromJson(Map<String, dynamic> json) =>
      _$TrainerModelFromJson(json);

  Map<String, dynamic> toJson() => _$TrainerModelToJson(this);

  //==================== from/to Entity ==========================
  factory TrainerModel.fromEntity(TrainerEntity trainerEntity) {
    return TrainerModel(
      phoneNumber: trainerEntity.phoneNumber,
      yearsOfExperience: trainerEntity.yearsOfExperience,
      specializations: trainerEntity.specializations,
      certificationName: trainerEntity.certificationName,
      uploadCertificationUrl: trainerEntity.uploadCertificationUrl,
      isApproved: trainerEntity.isApproved,
      firstName: trainerEntity.firstName,
      lastName: trainerEntity.lastName,
      emailAddress: trainerEntity.emailAddress,
    );
  }

  TrainerEntity toEntity() => TrainerEntity(
    phoneNumber: phoneNumber,
    yearsOfExperience: yearsOfExperience,
    specializations: specializations,
    certificationName: certificationName,
    uploadCertificationUrl: uploadCertificationUrl,
    isApproved: isApproved,
    firstName: firstName,
    lastName: lastName,
    emailAddress: emailAddress,
  );
}
