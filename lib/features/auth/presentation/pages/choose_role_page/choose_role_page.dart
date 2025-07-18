import 'package:fitzen/features/auth/presentation/pages/choose_role_page/choose_role_body_page.dart';
import 'package:flutter/material.dart';

/// Entry widget for the Choose Role screen.
class ChooseRolePage extends StatelessWidget {
  /// Creates a [ChooseRolePage].
  const ChooseRolePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: ChooseRoleBodyPage());
  }
}
