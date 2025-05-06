import 'package:digy_stay/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';

import '../utils/app_colors.dart';

class RoundedContainer extends StatelessWidget {
  const RoundedContainer({super.key, required this.title, required this.iconData});

  final String title;
  final IconData iconData;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 120,
          height: 120,
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              colors: [Color(0xFF4A90E2), Color(0xFF50E3C2)],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            borderRadius: BorderRadius.circular(100),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                blurRadius: 10,
                offset: const Offset(0, 4),
              ),
            ],
          ),
          child: Icon(iconData, color: Colors.white, size: 70),
        ),
        const SizedBox(height: 10),
        Text(
          title,
          style: AppTextStyles.semiBold24.copyWith(
            color: AppColors.primaryColor,
          ),
        ),
      ],
    );
  }
}
