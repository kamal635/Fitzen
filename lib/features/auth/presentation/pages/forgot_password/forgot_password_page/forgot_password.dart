import 'package:fitzen/features/auth/presentation/pages/forgot_password/forgot_password_page/forgot_password_body.dart';
import 'package:flutter/material.dart';

/// Entry widget for the Forgot Password screen.
class ForgotPasswordPage extends StatelessWidget {
  /// Creates a [ForgotPasswordPage].
  const ForgotPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: ForgotPasswordPageBody());
  }
}
