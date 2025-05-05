import 'package:iconsax/iconsax.dart';

import '../../feature/home/presentaion/views/widgets/feature_item.dart';
import '../utils/app_colors.dart';

class AppConst {
  static const horizontalPadding = 20.0;
  static const String isOnboardingViewSeenKey = 'isOnboardingViewSeen';

  static const List<FeatureItem> featureItems = [
    const FeatureItem(
      color: AppColors.primaryColor,
      icon: Iconsax.home,
      title: 'Room Control',
    ),
    const FeatureItem(
      color: AppColors.secondaryColor,
      icon: Iconsax.discover,
      title: 'Explore',
    ),
    const FeatureItem(
      color: AppColors.secondaryColor,
      icon: Iconsax.message,
      title: 'Messages',
    ),
    const FeatureItem(
      color: AppColors.primaryColor,
      icon: Iconsax.tag,
      title: 'Offers',
    ),
  ];
}
