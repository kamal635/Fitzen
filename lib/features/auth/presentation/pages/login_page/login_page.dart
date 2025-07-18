import 'package:fitzen/features/auth/presentation/pages/login_page/login_page_body.dart';
import 'package:flutter/material.dart';

/// Entry widget for the Login screen.
class LoginPage extends StatelessWidget {
  /// Creates a [LoginPage].
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: LoginPageBody());
  }
}
