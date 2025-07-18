import 'package:fitzen/core/constant/app_assets.dart';
import 'package:fitzen/core/constant/app_strings.dart';

/// Model representing onboarding screen data.
class OnBoardingModel {
  /// Create [OnBoardingModel] with field required
  OnBoardingModel({
    required this.title,
    required this.subTitle,
    required this.image,
  });

  /// Title text displayed on the onboarding screen.
  final String title;

  /// Subtitle text providing additional info on the onboarding screen.
  final String subTitle;

  /// Image asset path or URL shown on the onboarding screen.
  final String image;
}

/// List of onboarding screen models representing each onboarding step.
List<OnBoardingModel> listOnboarding = <OnBoardingModel>[
  OnBoardingModel(
    title: AppStrings.startFitnessTitle,
    subTitle: AppStrings.startFitnessSubtitle,
    image: AppAssets.startFitness,
  ),
  OnBoardingModel(
    title: AppStrings.buildStrengthTitle,
    subTitle: AppStrings.buildStrengthSubtitle,
    image: AppAssets.buildStrength,
  ),
  OnBoardingModel(
    title: AppStrings.healthyFoodTitle,
    subTitle: AppStrings.healthyFoodSubtitle,
    image: AppAssets.healthyFood,
  ),
];
