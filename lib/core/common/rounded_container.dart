import 'package:digy_stay/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';

import '../utils/app_colors.dart';

class RoundedContainer extends StatelessWidget {
  final String title;

  final IconData iconData;
  final Function(BuildContext)? onTap;
  const RoundedContainer({
    super.key,
    required this.title,
    required this.iconData,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final colorScheme = Theme.of(context).colorScheme;

    return GestureDetector(
      onTap: () => onTap?.call(context),
      child: Column(
        children: [
          Container(
            width: 120,
            height: 120,
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors:
                    isDark
                        ? [colorScheme.secondary, colorScheme.primary]
                        : [colorScheme.secondary, colorScheme.primary],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              borderRadius: BorderRadius.circular(100),
              boxShadow: [
                BoxShadow(
                  color:
                      isDark
                          ? Colors.white.withOpacity(0.2)
                          : Colors.black.withOpacity(0.1),
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
              color: isDark ? Colors.white : AppColors.primaryColor,
            ),
          ),
        ],
      ),
    );
  }
}
