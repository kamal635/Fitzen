import 'package:fitzen/features/auth/presentation/pages/trainee_registration_page/trainee_registration_body.dart';
import 'package:fitzen/features/auth/presentation/widgets/trainee_registration/appbar_trainee.dart';
import 'package:flutter/material.dart';

class TraineeRegistrationPage extends StatelessWidget {
  const TraineeRegistrationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: AppBarTrainee(),
      body: TraineeRegistrationBodyPage(),
    );
  }
}
