// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'trainer_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TrainerModel {

 String get uid; String get firstName; String get lastName; String get emailAddress; String get phoneNumber; int get yearsOfExperience; String get specializations; String get certificationName; ApprovalStatus get isApproved; String? get uploadCertificationUrl;
/// Create a copy of TrainerModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TrainerModelCopyWith<TrainerModel> get copyWith => _$TrainerModelCopyWithImpl<TrainerModel>(this as TrainerModel, _$identity);

  /// Serializes this TrainerModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TrainerModel&&(identical(other.uid, uid) || other.uid == uid)&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.emailAddress, emailAddress) || other.emailAddress == emailAddress)&&(identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber)&&(identical(other.yearsOfExperience, yearsOfExperience) || other.yearsOfExperience == yearsOfExperience)&&(identical(other.specializations, specializations) || other.specializations == specializations)&&(identical(other.certificationName, certificationName) || other.certificationName == certificationName)&&(identical(other.isApproved, isApproved) || other.isApproved == isApproved)&&(identical(other.uploadCertificationUrl, uploadCertificationUrl) || other.uploadCertificationUrl == uploadCertificationUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,uid,firstName,lastName,emailAddress,phoneNumber,yearsOfExperience,specializations,certificationName,isApproved,uploadCertificationUrl);

@override
String toString() {
  return 'TrainerModel(uid: $uid, firstName: $firstName, lastName: $lastName, emailAddress: $emailAddress, phoneNumber: $phoneNumber, yearsOfExperience: $yearsOfExperience, specializations: $specializations, certificationName: $certificationName, isApproved: $isApproved, uploadCertificationUrl: $uploadCertificationUrl)';
}


}

/// @nodoc
abstract mixin class $TrainerModelCopyWith<$Res>  {
  factory $TrainerModelCopyWith(TrainerModel value, $Res Function(TrainerModel) _then) = _$TrainerModelCopyWithImpl;
@useResult
$Res call({
 String uid, String firstName, String lastName, String emailAddress, String phoneNumber, int yearsOfExperience, String specializations, String certificationName, ApprovalStatus isApproved, String? uploadCertificationUrl
});




}
/// @nodoc
class _$TrainerModelCopyWithImpl<$Res>
    implements $TrainerModelCopyWith<$Res> {
  _$TrainerModelCopyWithImpl(this._self, this._then);

  final TrainerModel _self;
  final $Res Function(TrainerModel) _then;

/// Create a copy of TrainerModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? uid = null,Object? firstName = null,Object? lastName = null,Object? emailAddress = null,Object? phoneNumber = null,Object? yearsOfExperience = null,Object? specializations = null,Object? certificationName = null,Object? isApproved = null,Object? uploadCertificationUrl = freezed,}) {
  return _then(_self.copyWith(
uid: null == uid ? _self.uid : uid // ignore: cast_nullable_to_non_nullable
as String,firstName: null == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String,lastName: null == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String,emailAddress: null == emailAddress ? _self.emailAddress : emailAddress // ignore: cast_nullable_to_non_nullable
as String,phoneNumber: null == phoneNumber ? _self.phoneNumber : phoneNumber // ignore: cast_nullable_to_non_nullable
as String,yearsOfExperience: null == yearsOfExperience ? _self.yearsOfExperience : yearsOfExperience // ignore: cast_nullable_to_non_nullable
as int,specializations: null == specializations ? _self.specializations : specializations // ignore: cast_nullable_to_non_nullable
as String,certificationName: null == certificationName ? _self.certificationName : certificationName // ignore: cast_nullable_to_non_nullable
as String,isApproved: null == isApproved ? _self.isApproved : isApproved // ignore: cast_nullable_to_non_nullable
as ApprovalStatus,uploadCertificationUrl: freezed == uploadCertificationUrl ? _self.uploadCertificationUrl : uploadCertificationUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _TrainerModel implements TrainerModel {
  const _TrainerModel({required this.uid, required this.firstName, required this.lastName, required this.emailAddress, required this.phoneNumber, required this.yearsOfExperience, required this.specializations, required this.certificationName, required this.isApproved, this.uploadCertificationUrl});
  factory _TrainerModel.fromJson(Map<String, dynamic> json) => _$TrainerModelFromJson(json);

@override final  String uid;
@override final  String firstName;
@override final  String lastName;
@override final  String emailAddress;
@override final  String phoneNumber;
@override final  int yearsOfExperience;
@override final  String specializations;
@override final  String certificationName;
@override final  ApprovalStatus isApproved;
@override final  String? uploadCertificationUrl;

/// Create a copy of TrainerModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TrainerModelCopyWith<_TrainerModel> get copyWith => __$TrainerModelCopyWithImpl<_TrainerModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TrainerModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TrainerModel&&(identical(other.uid, uid) || other.uid == uid)&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.emailAddress, emailAddress) || other.emailAddress == emailAddress)&&(identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber)&&(identical(other.yearsOfExperience, yearsOfExperience) || other.yearsOfExperience == yearsOfExperience)&&(identical(other.specializations, specializations) || other.specializations == specializations)&&(identical(other.certificationName, certificationName) || other.certificationName == certificationName)&&(identical(other.isApproved, isApproved) || other.isApproved == isApproved)&&(identical(other.uploadCertificationUrl, uploadCertificationUrl) || other.uploadCertificationUrl == uploadCertificationUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,uid,firstName,lastName,emailAddress,phoneNumber,yearsOfExperience,specializations,certificationName,isApproved,uploadCertificationUrl);

@override
String toString() {
  return 'TrainerModel(uid: $uid, firstName: $firstName, lastName: $lastName, emailAddress: $emailAddress, phoneNumber: $phoneNumber, yearsOfExperience: $yearsOfExperience, specializations: $specializations, certificationName: $certificationName, isApproved: $isApproved, uploadCertificationUrl: $uploadCertificationUrl)';
}


}

/// @nodoc
abstract mixin class _$TrainerModelCopyWith<$Res> implements $TrainerModelCopyWith<$Res> {
  factory _$TrainerModelCopyWith(_TrainerModel value, $Res Function(_TrainerModel) _then) = __$TrainerModelCopyWithImpl;
@override @useResult
$Res call({
 String uid, String firstName, String lastName, String emailAddress, String phoneNumber, int yearsOfExperience, String specializations, String certificationName, ApprovalStatus isApproved, String? uploadCertificationUrl
});




}
/// @nodoc
class __$TrainerModelCopyWithImpl<$Res>
    implements _$TrainerModelCopyWith<$Res> {
  __$TrainerModelCopyWithImpl(this._self, this._then);

  final _TrainerModel _self;
  final $Res Function(_TrainerModel) _then;

/// Create a copy of TrainerModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? uid = null,Object? firstName = null,Object? lastName = null,Object? emailAddress = null,Object? phoneNumber = null,Object? yearsOfExperience = null,Object? specializations = null,Object? certificationName = null,Object? isApproved = null,Object? uploadCertificationUrl = freezed,}) {
  return _then(_TrainerModel(
uid: null == uid ? _self.uid : uid // ignore: cast_nullable_to_non_nullable
as String,firstName: null == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String,lastName: null == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String,emailAddress: null == emailAddress ? _self.emailAddress : emailAddress // ignore: cast_nullable_to_non_nullable
as String,phoneNumber: null == phoneNumber ? _self.phoneNumber : phoneNumber // ignore: cast_nullable_to_non_nullable
as String,yearsOfExperience: null == yearsOfExperience ? _self.yearsOfExperience : yearsOfExperience // ignore: cast_nullable_to_non_nullable
as int,specializations: null == specializations ? _self.specializations : specializations // ignore: cast_nullable_to_non_nullable
as String,certificationName: null == certificationName ? _self.certificationName : certificationName // ignore: cast_nullable_to_non_nullable
as String,isApproved: null == isApproved ? _self.isApproved : isApproved // ignore: cast_nullable_to_non_nullable
as ApprovalStatus,uploadCertificationUrl: freezed == uploadCertificationUrl ? _self.uploadCertificationUrl : uploadCertificationUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
