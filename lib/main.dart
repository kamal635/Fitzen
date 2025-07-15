import 'package:firebase_core/firebase_core.dart';
import 'package:fitzen/core/services/firebase_app_providers.dart';
import 'package:fitzen/fitzen_app.dart';
import 'package:fitzen/core/services/shared_prefs_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  final prefs = await SharedPreferences.getInstance();
  final firebaseApp = await Firebase.initializeApp();

  runApp(
    ProviderScope(
      overrides: [
        //  Provide a single initialized instance to the entire app
        sharedPreferencesProvider.overrideWithValue(prefs),
        firebaseAppProvider.overrideWithValue(firebaseApp),
      ],
      child: const FitzenApp(),
    ),
  );
}
