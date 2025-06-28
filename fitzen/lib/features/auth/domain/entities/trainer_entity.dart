import 'package:fitzen/features/auth/data/models/approval_status.dart';
import 'package:fitzen/features/auth/domain/entities/user_entity.dart';

class TrainerEntity extends UserEntity {
  final String phoneNumber;
  final int yearsOfExperience;
  final String specializations;
  final String certificationName;
  final String uploadCertificationUrl;
  final ApprovalStatus? isApproved;

  TrainerEntity({
    required this.phoneNumber,
    required this.yearsOfExperience,
    required this.specializations,
    required this.certificationName,
    required this.uploadCertificationUrl,
    this.isApproved,
    required super.firstName,
    required super.lastName,
    required super.emailAddress,
  });
}
