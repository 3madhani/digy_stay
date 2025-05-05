import 'package:digy_stay/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/app_text_styles.dart';

class FeatureCard extends StatelessWidget {
  final String title;
  final Color color;
  final IconData icon;

  const FeatureCard({
    super.key,
    required this.title,
    required this.color,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return InkResponse(
      splashColor: color.withOpacity(0.4),
      borderRadius: BorderRadius.circular(12),
      onTap: () {
        debugPrint('Tapped on $title');
      },
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Card(
            elevation: 6,
            shadowColor: color.withOpacity(0.9),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            child: Container(
              width: 170,
              height: 170,
              decoration: BoxDecoration(
                color: color,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Center(child: Icon(icon, size: 70, color: Colors.white)),
            ),
          ),
          const SizedBox(height: 8),
          Text(
            title,
            textAlign: TextAlign.center,
            style: AppTextStyles.bold20.copyWith(color: AppColors.primaryColor),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}
