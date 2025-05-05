import 'package:flutter/material.dart';

import 'list_view_continer.dart';

class AnimatedHorizontalList extends StatefulWidget {
  const AnimatedHorizontalList({super.key});

  @override
  State<AnimatedHorizontalList> createState() => _AnimatedHorizontalListState();
}

class _AnimatedHorizontalListState extends State<AnimatedHorizontalList> {
  final PageController _pageController = PageController(
    viewportFraction: 0.9, // Increased from 0.8 to 0.9 for wider cards
  );

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: PageView.builder(
        controller: _pageController,
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          return AnimatedBuilder(
            animation: _pageController,
            builder: (context, child) {
              double value = 1.0;
              if (_pageController.position.haveDimensions) {
                value = _pageController.page! - index;
                value = (1 - (value.abs() * 0.7)).clamp(0.0, 1.0);
              }

              return Transform.scale(
                scale: value,
                child: Transform.rotate(angle: (1 - value) * 0.2, child: child),
              );
            },
            child: const ListViewContainer(),
          );
        },
      ),
    );
  }
}
