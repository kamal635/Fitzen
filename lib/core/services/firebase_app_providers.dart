import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// Provides FirebaseApp instance;
/// overridden in main for actual implementation.
final Provider<FirebaseApp> firebaseAppProvider = Provider<FirebaseApp>((
  Ref<FirebaseApp> ref,
) {
  throw UnimplementedError(); // it will be override in main.
});
