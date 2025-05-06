import 'package:flutter/material.dart';

import '../../../../../core/utils/app_text_styles.dart';

class OrDividerWidget extends StatelessWidget {
  const OrDividerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final dividerColor =
        Theme.of(context).brightness == Brightness.dark
            ? Colors
                .white // Light divider in dark mode
            : Theme.of(
              context,
            ).colorScheme.onSurface; // Gray divider in light mode

    return Row(
      children: [
        Expanded(child: Divider(color: dividerColor)),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18),
          child: Text(
            'OR',
            textAlign: TextAlign.center,
            style: AppTextStyles.semiBold16,
          ),
        ),
        Expanded(child: Divider(color: dividerColor)),
      ],
    );
  }
}
