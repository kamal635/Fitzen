import 'package:flutter/foundation.dart';

/// Represents a failure with an error message.
@immutable
abstract class Failure {
  /// Creates a failure with a required message.
  const Failure({required this.message});

  /// Error message describing the failure.
  final String message;

  @override
  String toString() => 'Failure(message: $message)';
}
