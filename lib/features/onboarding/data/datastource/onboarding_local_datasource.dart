import 'package:shared_preferences/shared_preferences.dart';

abstract class OnboardingLocalDataSource {
  Future<void> cacheOnboardingDone();
  Future<bool> isOnboardingDone();
}

class OnboardingLocalDataSourceImpl implements OnboardingLocalDataSource {
  final SharedPreferences prefs;

  OnboardingLocalDataSourceImpl(this.prefs);

  @override
  Future<void> cacheOnboardingDone() async {
    await prefs.setBool('onboarding_done', true);
  }

  @override
  Future<bool> isOnboardingDone() async {
    return prefs.getBool('onboarding_done') ?? false;
  }
}
