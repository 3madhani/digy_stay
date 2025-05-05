import 'package:digy_stay/feature/home/presentaion/views/home_view.dart';
import 'package:flutter/material.dart';

import '../../../../../core/common/custom_button.dart';
import '../../../../../core/common/custom_text_form_field.dart';
import '../../../../../core/constants/app_const.dart';
import '../../../../../core/utils/app_assets.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_text_styles.dart';
import '../sign_up_view.dart';
import 'create_account_text.dart';
import 'or_divider_widget.dart';
import 'social_login_button.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: AppConst.horizontalPadding,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 24),
              const CustomTextFormField(
                isPasswordField: false,
                keyboardType: TextInputType.emailAddress,
                hintText: 'Email',
              ),

              const SizedBox(height: 16),
              const CustomTextFormField(
                isPasswordField: true,
                keyboardType: TextInputType.visiblePassword,
                hintText: 'Password',
                suffixIcon: Padding(
                  padding: EdgeInsets.only(right: 26.0),
                  child: Icon(
                    Icons.remove_red_eye,
                    size: 24,
                    color: Color(0xffC9CECF),
                  ),
                ),
              ),

              const SizedBox(height: 16),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Forgot Password?",
                  style: AppTextStyles.semiBold13.copyWith(
                    color: AppColors.primaryLightColor,
                  ),
                ),
              ),
              const SizedBox(height: 33),

              CustomPrimaryButton(title: 'Login', onPressed: () {
                Navigator.pushNamed(context, HomeView.routeName);
              }),
              const SizedBox(height: 33),

              AccountCreationText(
                titleText: 'Don\'t have an account?',
                subTitleText: ' Create one',
                onTap: () {
                  Navigator.pushNamed(context, SignUpView.routeName);
                },
              ),
              const SizedBox(height: 33),

              const OrDividerWidget(),
              const SizedBox(height: 16),
              SocialLoginButton(
                title: 'Login with Google',
                onPressed: () {},
                iconPath: Assets.svgGoogleIcons,
              ),
              const SizedBox(height: 16),

              const SizedBox(height: 16),
              SocialLoginButton(
                title: 'Login with Facebook',
                onPressed: () {},
                iconPath: Assets.svgFacebookIcons,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
