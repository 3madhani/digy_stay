import 'package:digy_stay/feature/onboarding/presentation/views/onboarding_view.dart';
import 'package:flutter/material.dart';

import '../utils/app_text_styles.dart';

AppBar buildAppBar({required BuildContext context, required String title}) {
  return AppBar(
    backgroundColor: Theme.of(context).colorScheme.primary,
    leading: GestureDetector(
      onTap:
          () =>
              title.toLowerCase() == "login"
                  ? Navigator.pushNamed(context, OnBoardingView.routeName)
                  : Navigator.pop(context),
      child: Icon(
        Icons.arrow_back_ios_new,
        color: Theme.of(context).colorScheme.onPrimary,
      ),
    ),
    centerTitle: true,
    title: Text(
      title,
      textAlign: TextAlign.center,
      style: AppTextStyles.bold23.copyWith(
        color: Theme.of(context).colorScheme.onPrimary,
      ),
    ),
  );
}
