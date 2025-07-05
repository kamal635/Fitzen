import 'package:fitzen/core/services/firebase_app_providers.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:firebase_storage/firebase_storage.dart';

final firbaseStorageProvider = Provider<FirebaseStorage>((ref) {
  final app = ref.watch(firebaseAppProvider);
  return FirebaseStorage.instanceFor(app: app);
});
