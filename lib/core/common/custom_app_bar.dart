import 'package:flutter/material.dart';

import '../../feature/onboarding/presentation/views/onboarding_view.dart';
import '../utils/app_text_styles.dart';

AppBar buildAppBar({required BuildContext context, required String title}) {
  return AppBar(
    backgroundColor: Colors.white,
    leading: GestureDetector(
      onTap:
          () =>
              Navigator.pushReplacementNamed(context, OnBoardingView.routeName),
      child: const Icon(Icons.arrow_back_ios_new),
    ),
    centerTitle: true,
    title: Text(
      title,
      textAlign: TextAlign.center,
      style: AppTextStyles.bold19,
    ),
  );
}
