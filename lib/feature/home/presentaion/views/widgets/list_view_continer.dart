import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_text_styles.dart';

class ListViewContainer extends StatelessWidget {
  const ListViewContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width - 42,
      decoration: BoxDecoration(
        color: AppColors.primaryLightColor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Iconsax.setting, size: 70, color: AppColors.primaryColor),
          const SizedBox(height: 16),
          Text(
            "Settings",
            style: AppTextStyles.bold20.copyWith(color: AppColors.primaryColor),
          ),
        ],
      ),
    );
  }
}
