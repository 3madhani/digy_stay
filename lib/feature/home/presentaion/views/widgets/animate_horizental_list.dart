import 'package:digy_stay/core/utils/app_assets.dart';
import 'package:digy_stay/core/utils/app_text_styles.dart';
import 'package:digy_stay/feature/settings/presentation/views/settings_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:iconsax/iconsax.dart';
import 'package:provider/provider.dart';

import '../../view_model/animated_horizental_list_view_model.dart';
import 'list_view_continer.dart';

class AnimatedHorizontalList extends StatelessWidget {
  const AnimatedHorizontalList({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create:
          (_) => AnimatedHorizontalListViewModel(_listWidgets(context).length),
      child: Consumer<AnimatedHorizontalListViewModel>(
        builder: (context, viewModel, _) {
          final listWidgets = _listWidgets(context);

          return Expanded(
            child: PageView.builder(
              key: const PageStorageKey('animated_horizontal_list'),
              controller: viewModel.pageController,
              physics: const BouncingScrollPhysics(),
              itemBuilder: (context, index) {
                final currentIndex = index % listWidgets.length;

                return Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10.0),
                  child: AnimatedBuilder(
                    animation: viewModel.pageController,
                    builder: (context, child) {
                      final value = viewModel.calculateScale(index);

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
        },
      ),
    );
  }

  static List<Widget> _listWidgets(BuildContext context) {
    return [
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
        onTap: () => Navigator.pushNamed(context, SettingsScreen.routeName),
        icon: const Padding(
          padding: EdgeInsets.only(left: 20.0),
          child: Icon(Iconsax.setting, size: 120, color: Colors.white),
        ),
        title: Text(
          'Settings',
          style: AppTextStyles.bold28.copyWith(color: Colors.white),
        ),
      ),
    ];
  }
}
