import 'package:fitzen/features/auth/data/models/approval_status.dart';
import 'package:fitzen/features/auth/domain/entities/trainer_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'trainer_model.freezed.dart';
part 'trainer_model.g.dart';

@freezed
abstract class TrainerModel with _$TrainerModel {
  const factory TrainerModel({
    required String uid,
    required String firstName,
    required String lastName,
    required String emailAddress,
    required String phoneNumber,
    required int yearsOfExperience,
    required List<String> specializations,
    required String certificationName,
    required ApprovalStatus isApproved,
    String? uploadCertificationUrl,
  }) = _TrainerModel;

  factory TrainerModel.fromJson(Map<String, dynamic> json) =>
      _$TrainerModelFromJson(json);
}

extension TrainerModelX on TrainerModel {
  TrainerEntity toEntity() {
    return TrainerEntity(
      uid: uid,
      firstName: firstName,
      lastName: lastName,
      emailAddress: emailAddress,
      phoneNumber: phoneNumber,
      yearsOfExperience: yearsOfExperience,
      specializations: specializations,
      certificationName: certificationName,
      uploadCertificationUrl: uploadCertificationUrl,
      isApproved: isApproved,
    );
  }

  static TrainerModel fromEntity(TrainerEntity entity) {
    return TrainerModel(
      uid: entity.uid,
      firstName: entity.firstName,
      lastName: entity.lastName,
      emailAddress: entity.emailAddress,
      phoneNumber: entity.phoneNumber,
      yearsOfExperience: entity.yearsOfExperience,
      specializations: entity.specializations,
      certificationName: entity.certificationName,
      uploadCertificationUrl: entity.uploadCertificationUrl,
      isApproved: entity.isApproved,
    );
  }
}
