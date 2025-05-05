import 'package:digy_stay/core/constants/app_const.dart';
import 'package:digy_stay/core/utils/app_colors.dart';
import 'package:digy_stay/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import 'home_grid_view.dart';

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
          const SizedBox(height: 24),
          HomeGridView(),
          const SizedBox(height: 24),
          Text(
            "Explore the world with us",
            style: AppTextStyles.bold24.copyWith(color: AppColors.primaryColor),
          ),
          const SizedBox(height: 16),
          Expanded(
            child: ListView(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              physics: const BouncingScrollPhysics(),
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 32.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width - 40,
                    decoration: BoxDecoration(
                      color: AppColors.primaryLightColor,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Iconsax.setting,
                          size: 70,
                          color: AppColors.primaryColor,
                        ),
                        const SizedBox(height: 16),
                        Text(
                          "Settings",
                          style: AppTextStyles.bold20.copyWith(
                            color: AppColors.primaryColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 24),
        ],
      ),
    );
  }
}
