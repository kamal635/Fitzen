// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trainer_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TrainerModel _$TrainerModelFromJson(Map<String, dynamic> json) => TrainerModel(
  firstName: json['firstName'] as String,
  lastName: json['lastName'] as String,
  emailAddress: json['emailAddress'] as String,
  phoneNumber: json['phoneNumber'] as String,
  yearsOfExperience: (json['yearsOfExperience'] as num).toInt(),
  specializations: json['specializations'] as String,
  certificationName: json['certificationName'] as String,
  uploadCertificationUrl: json['uploadCertificationUrl'] as String,
  isApproved: $enumDecodeNullable(_$ApprovalStatusEnumMap, json['isApproved']),
);

Map<String, dynamic> _$TrainerModelToJson(TrainerModel instance) =>
    <String, dynamic>{
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'emailAddress': instance.emailAddress,
      'phoneNumber': instance.phoneNumber,
      'yearsOfExperience': instance.yearsOfExperience,
      'specializations': instance.specializations,
      'certificationName': instance.certificationName,
      'uploadCertificationUrl': instance.uploadCertificationUrl,
      'isApproved': _$ApprovalStatusEnumMap[instance.isApproved],
    };

const _$ApprovalStatusEnumMap = {
  ApprovalStatus.pending: 'pending',
  ApprovalStatus.approved: 'approved',
  ApprovalStatus.rejected: 'rejected',
};
