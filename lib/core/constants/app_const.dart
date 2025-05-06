import 'package:digy_stay/core/common/rounded_container.dart';
import 'package:flutter/material.dart';

import '../../feature/home/presentaion/views/widgets/feature_item.dart';
import '../../feature/offers/presentation/views/offers_view.dart';
import '../../feature/restaurant/presentation/views/restaurant_view.dart';
import '../../feature/room_control/presentaion/views/room_control_view.dart';
import '../../feature/support_chat/presentation/views/support_chat_view.dart';
import '../utils/app_assets.dart';
import '../utils/app_colors.dart';

class AppConst {
  static const horizontalPadding = 20.0;
  static const String isOnboardingViewSeenKey = 'isOnboardingViewSeen';

  static const List<FeatureItem> featureItems = [
    FeatureItem(
      routeName: RoomControlView.routeName,
      color: AppColors.primaryLightColor,
      lottie: Assets.lottiesHomeButton,
      title: 'Room Control',
    ),
    FeatureItem(
      routeName: RestaurantView.routeName,
      color: AppColors.secondaryColor,
      lottie: Assets.lottiesFoodServed,
      title: 'Restaurant',
    ),
    FeatureItem(
      routeName: SupportChatView.routeName,
      color: AppColors.secondaryColor,
      lottie: Assets.lottiesTexting,
      title: 'Support Chat',
    ),
    FeatureItem(
      routeName: OffersView.routeName,
      color: AppColors.primaryLightColor,
      lottie: Assets.lottiesPriceTag,
      title: 'Offers',
    ),
  ];

  static List<Widget> roomItems = [
    RoundedContainer(title: "Light", iconData: Icons.lightbulb),
    RoundedContainer(title: "AC", iconData: Icons.ac_unit),
    RoundedContainer(title: "Curtains", iconData: Icons.curtains),
    RoundedContainer(title: "TV", iconData: Icons.tv),
  ];
}
