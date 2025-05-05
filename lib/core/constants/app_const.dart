import '../../feature/home/presentaion/views/widgets/feature_item.dart';
import '../utils/app_assets.dart';
import '../utils/app_colors.dart';

class AppConst {
  static const horizontalPadding = 20.0;
  static const String isOnboardingViewSeenKey = 'isOnboardingViewSeen';

  static const List<FeatureItem> featureItems = [
    FeatureItem(
      color: AppColors.primaryLightColor,
      lottie: Assets.lottiesHomeButton,
      title: 'Room Control',
    ),
    FeatureItem(
      color: AppColors.secondaryColor,
      lottie: Assets.lottiesFoodServed,
      title: 'Restaurant',
    ),
    FeatureItem(
      color: AppColors.secondaryColor,
      lottie: Assets.lottiesTexting,
      title: 'Support Chat',
    ),
    FeatureItem(
      color: AppColors.primaryLightColor,
      lottie: Assets.lottiesPriceTag,
      title: 'Offers',
    ),
  ];
}
