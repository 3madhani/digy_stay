import 'package:flutter/material.dart';

import '../../../../core/common/custom_app_bar.dart';
import 'widgets/login_view_body.dart';

class LoginView extends StatelessWidget {
  static const String routeName = 'login';

  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context: context, title: 'Login'),
      body: const LoginViewBody(),
    );
  }
}
