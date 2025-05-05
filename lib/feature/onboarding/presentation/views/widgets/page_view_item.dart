import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../core/constants/app_const.dart';
import '../../../../../core/services/shared_preferences_singleton.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_text_styles.dart';
import '../../../../auth/presentation/views/login_view.dart';

class PageViewItem extends StatelessWidget {
  final String image;
  final String title;
  final bool isLastPage;

  const PageViewItem({
    super.key,
    required this.title,
    required this.image,
    required this.isLastPage,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        if (isLastPage)
          GestureDetector(
            onTap: () => _onSkip(context),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Skip',
                    style: AppTextStyles.semiBold24.copyWith(
                      color: AppColors.secondaryTextColor,
                    ),
                  ),
                  const SizedBox(width: 4),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: AppColors.secondaryTextColor,
                    size: 18,
                  ),
                ],
              ),
            ),
          )
        else
          const SizedBox.shrink(),
        const SizedBox(height: 60),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: SvgPicture.asset(
            image,
            fit: BoxFit.contain,
            height: 300, // Add height to make images consistent
          ),
        ),

        const SizedBox(height: 24),
        Text(
          title,
          textAlign: TextAlign.center,
          style: AppTextStyles.semiBold20.copyWith(height: 1.4),
        ),
      ],
    );
  }

  void _onSkip(BuildContext context) {
    Prefs.setBool(AppConst.isOnboardingViewSeenKey, true);
    Navigator.of(context).pushReplacementNamed(LoginView.routeName);
  }
}
