import 'package:digy_stay/core/constants/app_const.dart';
import 'package:flutter/material.dart';

import 'feeature_card.dart';

class HomeGridView extends StatelessWidget {
  const HomeGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
        childAspectRatio: 0.82, // 👈 make cell taller to prevent overflow
      ),
      itemCount: AppConst.featureItems.length,
      itemBuilder: (context, index) {
        final item = AppConst.featureItems[index];
        return FeatureCard(
          color: item.color,
          icon: item.lottie,
          title: item.title,
        );
      },
    );
  }
}
