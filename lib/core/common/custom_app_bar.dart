import 'package:digy_stay/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

import '../utils/app_text_styles.dart';

AppBar buildAppBar({required BuildContext context, required String title}) {
  return AppBar(
    backgroundColor: AppColors.primaryColor,
    leading: GestureDetector(
      onTap: () => Navigator.pop(context),
      child: const Icon(Icons.arrow_back_ios_new, color: Colors.white),
    ),
    centerTitle: true,
    title: Text(
      title,
      textAlign: TextAlign.center,
      style: AppTextStyles.bold19.copyWith(color: Colors.white),
    ),
  );
}
