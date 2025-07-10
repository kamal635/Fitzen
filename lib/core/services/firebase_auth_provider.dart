import 'package:firebase_auth/firebase_auth.dart';
import 'package:fitzen/core/services/firebase_app_providers.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final firebaseAuthProvider = Provider<FirebaseAuth>((ref) {
  final app = ref.watch(firebaseAppProvider);
  return FirebaseAuth.instanceFor(app: app);
});
