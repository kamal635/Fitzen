import 'package:fitzen/core/services/firebase_app_providers.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

final firbaseFirestoreProvider = Provider<FirebaseFirestore>((ref) {
  final app = ref.watch(firebaseAppProvider);
  return FirebaseFirestore.instanceFor(app: app);
});
