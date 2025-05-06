import 'package:flutter/material.dart';

import '../../../../../core/utils/app_colors.dart';

class ListViewContainer extends StatelessWidget {
  final Widget title;
  final Widget icon;
  final void Function()? onTap;

  const ListViewContainer({
    super.key,
    required this.title,
    required this.icon,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final colorScheme = Theme.of(context).colorScheme;

    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(24),
      splashColor:
          isDark
              ? colorScheme.secondary.withOpacity(0.5)
              : AppColors.primaryLightColor.withOpacity(0.5),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        width: MediaQuery.of(context).size.width * 0.85, // Wider container
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [colorScheme.secondary, colorScheme.primary],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(24),
          boxShadow: [
            BoxShadow(
              color:
                  isDark
                      ? Colors.white.withOpacity(0.3)
                      : Colors.black.withOpacity(0.1),
              blurRadius: 8,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [icon, const SizedBox(width: 10), title],
        ),
      ),
    );
  }
}
