import 'package:flutter/material.dart';

import '../../../../core/common/custom_app_bar.dart';
import 'widgets/sign_up_view_body.dart';

class SignUpView extends StatelessWidget {
  static const String routeName = 'signUpView';

  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(title: "Create Account", context: context),
      body: const SignUpViewBody(),
    );
  }
}
