import 'package:fitzen/features/auth/presentation/widgets/trainer_registration/appbar_trainer.dart';
import 'package:fitzen/features/auth/presentation/widgets/trainer_registration/steps/step_1.dart';
import 'package:fitzen/features/auth/presentation/widgets/trainer_registration/steps/step_2.dart';
import 'package:fitzen/features/auth/presentation/widgets/trainer_registration/steps/step_3.dart';
import 'package:fitzen/features/auth/presentation/widgets/trainer_registration/steps/step_4.dart';
import 'package:flutter/material.dart';

class TrainerRegistrationPage extends StatefulWidget {
  const TrainerRegistrationPage({super.key});

  @override
  State<TrainerRegistrationPage> createState() =>
      _TrainerRegistrationPageState();
}

class _TrainerRegistrationPageState extends State<TrainerRegistrationPage> {
  int _currentStep = 0;
  final PageController _pageController = PageController();

  void nextStep() {
    if (_currentStep < 3) {
      _currentStep++;
      _pageController.animateToPage(
        _currentStep,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
      setState(() {});
    }
  }

  void previousStep() {
    if (_currentStep > 0) {
      _currentStep--;
      _pageController.animateToPage(
        _currentStep,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
      setState(() {});
    }
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarTrainer(currentStep: _currentStep),
      body: PageView(
        controller: _pageController,
        physics: const NeverScrollableScrollPhysics(),
        onPageChanged: (index) {
          setState(() {
            _currentStep = index;
          });
        },
        children: [
          TrainerRegistrationStepOne(onNext: nextStep),
          TrainerRegistrationStepTwo(onNext: nextStep, onBack: previousStep),
          TrainerRegistrationStepThree(onNext: nextStep, onBack: previousStep),
          const TrainerRegistrationStepFour(),
        ],
      ),
    );
  }
}
