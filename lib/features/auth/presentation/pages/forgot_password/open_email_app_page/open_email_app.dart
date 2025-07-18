import 'package:fitzen/features/auth/presentation/pages/forgot_password/open_email_app_page/open_email_app_body.dart';
import 'package:flutter/material.dart';

/// Entry widget for the Open Email App screen.
class OpenEmailAppPage extends StatelessWidget {
  /// Creates an [OpenEmailAppPage].
  const OpenEmailAppPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: OpenEmailAppPageBody());
  }
}
