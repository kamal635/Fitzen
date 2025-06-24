import 'package:fitzen/core/constant/app_assets.dart';
import 'package:fitzen/core/constant/app_strings.dart';

class OnBoardingModel {
  final String tilte;
  final String subTitle;
  final String image;

  OnBoardingModel({
    required this.tilte,
    required this.subTitle,
    required this.image,
  });
}

List<OnBoardingModel> listOnboarding = [
  OnBoardingModel(
    tilte: AppStrings.startFitnessTitle,
    subTitle: AppStrings.startFitnessSubtitle,
    image: AppAssets.startFitness,
  ),
  OnBoardingModel(
    tilte: AppStrings.buildStrengthTitle,
    subTitle: AppStrings.buildStrengthSubtitle,
    image: AppAssets.buildStrength,
  ),
  OnBoardingModel(
    tilte: AppStrings.healthyFoodTitle,
    subTitle: AppStrings.healthyFoodSubtitle,
    image: AppAssets.healthyFood,
  ),
];
