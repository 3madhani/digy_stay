import 'package:digy_stay/core/constants/app_const.dart';
import 'package:digy_stay/core/utils/app_colors.dart';
import 'package:digy_stay/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: AppConst.horizontalPadding,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Digy Stay",
            style: AppTextStyles.bold28.copyWith(color: AppColors.primaryColor),
          ),
          const SizedBox(height: 16),
          Text(
            "Welcome back, John Doe!\nYour ultimate travel companion awaits.",
            style: AppTextStyles.regular16.copyWith(
              color: AppColors.primaryLightColor,
              height: 1.5, // Adds nice line spacing
            ),
          ),
        ],
      ),
    );
  }
}
