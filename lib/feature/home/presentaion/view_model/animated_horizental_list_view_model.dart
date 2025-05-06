import 'package:flutter/material.dart';

class AnimatedHorizontalListViewModel extends ChangeNotifier {
  late final PageController pageController;

  AnimatedHorizontalListViewModel(int itemCount) {
    pageController = PageController(
      viewportFraction: 0.99,
      initialPage: itemCount * 1000,
    );
  }

  double calculateScale(int index) {
    if (!pageController.hasClients ||
        !pageController.position.hasContentDimensions) {
      return 1.0;
    }
    double value = pageController.page! - index;
    return (1 - (value.abs() * 0.9)).clamp(0.0, 1.0);
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }
}
