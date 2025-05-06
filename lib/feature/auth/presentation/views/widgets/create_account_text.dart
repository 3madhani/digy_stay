import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/app_text_styles.dart';

class AccountCreationText extends StatelessWidget {
  final String titleText;
  final String subTitleText;
  final void Function() onTap;

  const AccountCreationText({
    super.key,
    required this.titleText,
    required this.subTitleText,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Text.rich(
      TextSpan(
        text: titleText,
        style: AppTextStyles.semiBold16.copyWith(
          color: colorScheme.onSurface,
          // Gray in light mode
        ),
        children: [
          TextSpan(
            recognizer: TapGestureRecognizer()..onTap = onTap,
            text: subTitleText,
            style: AppTextStyles.semiBold16.copyWith(
              color:
                  Theme.of(
                    context,
                  ).colorScheme.primary, // Keeps primary color for subtitle
            ),
          ),
        ],
      ),
    );
  }
}
