import 'package:digy_stay/core/utils/app_assets.dart';
import 'package:digy_stay/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:iconsax/iconsax.dart';

import 'list_view_continer.dart';

class AnimatedHorizontalList extends StatefulWidget {
  const AnimatedHorizontalList({super.key});

  @override
  State<AnimatedHorizontalList> createState() => _AnimatedHorizontalListState();
}

class _AnimatedHorizontalListState extends State<AnimatedHorizontalList> {
  late PageController _pageController;

  final List listWidgets = [
    ListViewContainer(
      icon: SvgPicture.asset(Assets.svgUser, height: 120, width: 120),
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Welcome back,',
            style: AppTextStyles.bold23.copyWith(color: Colors.white),
          ),
          const SizedBox(height: 5),
          Text(
            'John Doe!',
            style: AppTextStyles.semiBold20.copyWith(color: Colors.white),
          ),
        ],
      ),
    ),
    ListViewContainer(
      icon: Padding(
        padding: const EdgeInsets.only(left: 20.0),
        child: Icon(Iconsax.setting, size: 120, color: Colors.white),
      ),
      title: Text(
        'Settings',
        style: AppTextStyles.semiBold24.copyWith(color: Colors.white),
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: PageView.builder(
        key: const PageStorageKey('animated_horizontal_list'),
        controller: _pageController,
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          final currentIndex = index % listWidgets.length;

          return Padding(
            padding: const EdgeInsets.only(left: 10, right: 10.0),
            child: AnimatedBuilder(
              animation: _pageController,
              builder: (context, child) {
                double value = 1.0;
                if (_pageController.position.haveDimensions) {
                  value = _pageController.page! - index;
                  value = (1 - (value.abs() * 0.9)).clamp(0.0, 1.0);
                }

                return Transform.scale(
                  scale: value,
                  child: Transform.rotate(
                    angle: (1 - value) * 0.2,
                    child: child,
                  ),
                );
              },
              child: listWidgets[currentIndex],
            ),
          );
        },
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    // Start from a large middle page to enable infinite scroll
    _pageController = PageController(
      viewportFraction: 0.99,
      initialPage: listWidgets.length * 1000,
    );
  }
}
