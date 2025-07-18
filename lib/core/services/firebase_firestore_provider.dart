import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:fitzen/core/services/firebase_app_providers.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// Provides a FirebaseFirestore instance tied to the FirebaseApp.
final Provider<FirebaseFirestore> firbaseFirestoreProvider =
    Provider<FirebaseFirestore>((Ref<FirebaseFirestore> ref) {
      final FirebaseApp app = ref.watch(firebaseAppProvider);
      return FirebaseFirestore.instanceFor(app: app);
    });
