import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:fitzen/core/services/firebase_app_providers.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// Provides a FirebaseAuth instance tied to the FirebaseApp.
final Provider<FirebaseAuth> firebaseAuthProvider = Provider<FirebaseAuth>((
  Ref<FirebaseAuth> ref,
) {
  final FirebaseApp app = ref.watch(firebaseAppProvider);
  return FirebaseAuth.instanceFor(app: app);
});
