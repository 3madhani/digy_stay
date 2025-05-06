import 'package:flutter/material.dart';

import '../../../../../core/common/custom_button.dart';
import '../../../../../core/common/custom_text_form_field.dart';
import '../../../../../core/constants/app_const.dart';
import '../../../../home/presentaion/views/home_view.dart';
import 'create_account_text.dart';

class SignUpViewBody extends StatelessWidget {
  const SignUpViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: AppConst.horizontalPadding,
        ),
        child: Column(
          children: [
            const SizedBox(height: 24),
            const CustomTextFormField(
              hintText: 'Name & Surname',
              keyboardType: TextInputType.name,
              isPasswordField: false,
            ),
            const SizedBox(height: 16),
            const CustomTextFormField(
              hintText: 'Email',
              keyboardType: TextInputType.emailAddress,
              isPasswordField: false,
            ),
            const SizedBox(height: 16),
            const CustomTextFormField(
              hintText: "Password",
              keyboardType: TextInputType.visiblePassword,
              isPasswordField: true,
              suffixIcon: Padding(
                padding: EdgeInsets.only(right: 26.0),
                child: Icon(
                  Icons.remove_red_eye,
                  size: 24,
                  color: Color(0xffC9CECF),
                ),
              ),
            ),
            const SizedBox(height: 30),
            CustomPrimaryButton(title: 'Create New Account', onPressed: () {
              Navigator.pushNamed(context, HomeView.routeName);
            },
            ),
            const SizedBox(height: 26),
            AccountCreationText(
              titleText: "Have an account? ",
              subTitleText: "Log in",
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
