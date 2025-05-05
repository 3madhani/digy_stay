import 'package:digy_stay/core/utils/app_assets.dart';
import 'package:flutter/material.dart';

import '../../../../../core/constants/app_const.dart';
import '../../../../../core/services/shared_preferences_singleton.dart';
import '../../../../auth/presentation/views/login_view.dart';


class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          Assets.imagesLogo,
          fit: BoxFit.fitHeight,
          width: MediaQuery.of(context).size.width * 0.5,
          height: MediaQuery.of(context).size.height * 0.5,
        ),
      ],
    );
  }

  void excuteNavigation() {
    // Check if the onboarding view has been seen
    bool isOnboardingViewSeen = Prefs.getBool(AppConst.isOnboardingViewSeenKey);

    // If the onboarding view has been seen, navigate to the login view
    Future.delayed(const Duration(seconds: 3), () {
      if (mounted) {
        if (isOnboardingViewSeen) {
          // If the onboarding view has been seen, navigate to the login view
          Navigator.pushReplacementNamed(context, LoginView.routeName);
        } else {
          // If the onboarding view has not been seen, navigate to the onboarding view
          // Save the onboarding view seen status
          Navigator.pushReplacementNamed(context, OnBoardingView.routeName);
        }
      }
    });
  }

  @override
  void initState() {
    // Add any initialization logic here if needed
    excuteNavigation();

    super.initState();
  }
}
