import 'package:shared_preferences/shared_preferences.dart';

/// Interface for local data source handling onboarding status.
abstract class OnboardingLocalDataSource {
  /// Caches that onboarding process has been completed.
  Future<void> cacheOnboardingDone();

  /// Checks if onboarding has been completed before.
  Future<bool> isOnboardingDone();
}

/// Implementation of [OnboardingLocalDataSource] using SharedPreferences.
class OnboardingLocalDataSourceImpl implements OnboardingLocalDataSource {
  /// Constructor injecting [SharedPreferences] instance.
  OnboardingLocalDataSourceImpl(this.prefs);

  /// Instance of SharedPreferences for local data storage access.
  final SharedPreferences prefs;

  @override
  Future<void> cacheOnboardingDone() async {
    await prefs.setBool('onboarding_done', true);
  }

  @override
  Future<bool> isOnboardingDone() async {
    return prefs.getBool('onboarding_done') ?? false;
  }
}
