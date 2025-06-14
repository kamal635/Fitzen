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
    tilte: AppStrings.startFitnessT,
    subTitle: AppStrings.startFitnessS,
    image: AppAssets.startFitness,
  ),
  OnBoardingModel(
    tilte: AppStrings.buildStrengthT,
    subTitle: AppStrings.buildStrengthS,
    image: AppAssets.buildStrength,
  ),
  OnBoardingModel(
    tilte: AppStrings.healthyFoodT,
    subTitle: AppStrings.healthyFoodS,
    image: AppAssets.healthyFood,
  ),
];
