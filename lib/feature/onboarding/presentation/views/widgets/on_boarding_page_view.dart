import 'package:flutter/material.dart';

import '../../../../../core/utils/app_assets.dart';
import 'page_view_item.dart';

class OnBoardingPageView extends StatelessWidget {
  final PageController pageController;
  const OnBoardingPageView({super.key, required this.pageController});

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageController,
      children: [
        PageViewItem(
          isLastPage: true,
          title: "Discover and Book Your Perfect Stay Anywhere.",
          image: Assets.svgHotelBooking,
        ),
        const PageViewItem(
          isLastPage: false,
          title: "Manage Every Detail of Your Stay \nwith Ease.",
          image: Assets.svgRoomControl,
        ),
      ],
    );
  }
}
