import 'package:digy_stay/core/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../../../../../core/utils/app_text_styles.dart';

class FeatureCard extends StatelessWidget {
  final String title;
  final Color color;
  final String icon;
  final String routeName;

  const FeatureCard({
    super.key,
    required this.title,
    required this.color,
    required this.icon,
    required this.routeName,
  });

  @override
  Widget build(BuildContext context) {
    return InkResponse(
      splashColor: color.withOpacity(0.4),
      borderRadius: BorderRadius.circular(12),
      onTap: () {
        Navigator.pushNamed(context, routeName);
      },
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            width: 170,
            height: 170,
            child: Card(
              color: color,
              elevation: 6,
              shadowColor:
                  Theme.of(context).brightness == Brightness.dark
                      ? Colors.white.withOpacity(0.3)
                      : color.withOpacity(0.9),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: Center(child: LottieBuilder.asset(icon)),
            ),
          ),
          const SizedBox(height: 8),
          Text(
            title,
            textAlign: TextAlign.center,
            style: AppTextStyles.bold20.copyWith(
              color:
                  Theme.of(context).brightness == Brightness.dark
                      ? Colors.white
                      : AppColors.primaryColor,
            ),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}
