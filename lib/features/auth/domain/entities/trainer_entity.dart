import 'package:fitzen/features/auth/data/models/approval_status.dart';
import 'package:fitzen/features/auth/domain/entities/user_entity.dart';

/// Represents a trainer user, extending UserEntity.
class TrainerEntity extends UserEntity {
  /// Creates a TrainerEntity with required user details.
  TrainerEntity({
    required this.uid,
    required this.phoneNumber,
    required this.yearsOfExperience,
    required this.specializations,
    required this.certificationName,
    required this.isApproved,
    required super.firstName,
    required super.lastName,
    required super.emailAddress,
    this.uploadCertificationUrl,
  });

  /// Unique ID of the trainer.
  final String uid;

  /// Trainer's phone number.
  final String phoneNumber;

  /// Number of years of experience.
  final int yearsOfExperience;

  /// List of trainer's specializations.
  final List<String> specializations;

  /// Name of the trainer's certification.
  final String certificationName;

  /// URL of the uploaded certification document (optional).
  final String? uploadCertificationUrl;

  /// Approval status of the trainer.
  final ApprovalStatus isApproved;
}
