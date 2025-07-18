// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trainer_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TrainerModel _$TrainerModelFromJson(Map<String, dynamic> json) =>
    _TrainerModel(
      uid: json['uid'] as String,
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      emailAddress: json['emailAddress'] as String,
      phoneNumber: json['phoneNumber'] as String,
      yearsOfExperience: (json['yearsOfExperience'] as num).toInt(),
      specializations: (json['specializations'] as List<dynamic>)
          .map((dynamic e) => e as String)
          .toList(),
      certificationName: json['certificationName'] as String,
      isApproved: $enumDecode(_$ApprovalStatusEnumMap, json['isApproved']),
      uploadCertificationUrl: json['uploadCertificationUrl'] as String?,
    );

Map<String, dynamic> _$TrainerModelToJson(_TrainerModel instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'emailAddress': instance.emailAddress,
      'phoneNumber': instance.phoneNumber,
      'yearsOfExperience': instance.yearsOfExperience,
      'specializations': instance.specializations,
      'certificationName': instance.certificationName,
      'isApproved': _$ApprovalStatusEnumMap[instance.isApproved],
      'uploadCertificationUrl': instance.uploadCertificationUrl,
    };

const Map<ApprovalStatus, String> _$ApprovalStatusEnumMap =
    <ApprovalStatus, String>{
      ApprovalStatus.pending: 'pending',
      ApprovalStatus.approved: 'approved',
      ApprovalStatus.rejected: 'rejected',
    };
