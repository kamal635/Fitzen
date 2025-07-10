import 'package:flutter/foundation.dart';

@immutable
abstract class Failure {
  final String message;
  const Failure({required this.message});

  @override
  String toString() => 'Failure(message: $message)';
}
