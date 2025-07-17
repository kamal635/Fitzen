import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

final Provider<SharedPreferences> sharedPreferencesProvider =
    Provider<SharedPreferences>((Ref<SharedPreferences> ref) {
      throw UnimplementedError(); // it will be override in main.
    });
