import 'package:freezed_annotation/freezed_annotation.dart';

@JsonEnum(fieldRename: FieldRename.snake)
/// Represents the approval state of an entity.
enum ApprovalStatus {
  /// Waiting for review or decision.
  pending,

  /// Approved and accepted.
  approved,

  /// Rejected or denied.
  rejected,
}
