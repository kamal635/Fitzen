import 'package:fitzen/features/auth/presentation/pages/forgot_password/reset_password_page/reset_password_body.dart';
import 'package:flutter/material.dart';

/// Entry widget for the Reset Password screen.
class ResetPasswordPage extends StatelessWidget {
  /// Creates a [ResetPasswordPage].
  const ResetPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: ResetPasswordPageBody());
  }
}
