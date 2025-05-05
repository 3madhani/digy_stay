import 'package:digy_stay/core/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/constants/app_const.dart';
import '../../../../../core/services/shared_preferences_singleton.dart';
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
        Visibility(
          visible: isLastPage,
          child: GestureDetector(
            onTap: () {
              // Save the onboarding view seen status
              Prefs.setBool(AppConst.isOnboardingViewSeenKey, true);
              Navigator.of(context).pushReplacementNamed(LoginView.routeName);
            },
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Text(
                    'Skip',
                    style: AppTextStyles.semiBold24.copyWith(
                      color: AppColors.primaryLightColor,
                    ),
                  ),
                  const SizedBox(width: 8),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: AppColors.primaryLightColor,
                    size: 20,
                  ),
                ],
              ),
            ),
          ),
        ),
        SvgPicture.asset(image, fit: BoxFit.fill),

        const SizedBox(height: 16),
        Text(title, textAlign: TextAlign.center, style: AppTextStyles.bold23),
      ],
    );
  }
}
