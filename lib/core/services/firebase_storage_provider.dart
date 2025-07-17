import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:fitzen/core/services/firebase_app_providers.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final Provider<FirebaseStorage> firbaseStorageProvider =
    Provider<FirebaseStorage>((Ref<FirebaseStorage> ref) {
      final FirebaseApp app = ref.watch(firebaseAppProvider);
      return FirebaseStorage.instanceFor(app: app);
    });
