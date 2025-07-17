import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final Provider<FirebaseApp> firebaseAppProvider = Provider<FirebaseApp>((
  Ref<FirebaseApp> ref,
) {
  throw UnimplementedError(); // it will be override in main.
});
