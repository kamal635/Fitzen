import 'package:freezed_annotation/freezed_annotation.dart';

@JsonEnum(fieldRename: FieldRename.snake)
/// Represents the approval status of a request or entity.
enum ApprovalStatus { pending, approved, rejected }
