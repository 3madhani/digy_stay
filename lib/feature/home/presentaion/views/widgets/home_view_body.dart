import 'package:digy_stay/core/constants/app_const.dart';
import 'package:digy_stay/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';

import 'animate_horizental_list.dart';
import 'home_grid_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: AppConst.horizontalPadding,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Digy Stay",
            style: AppTextStyles.bold28.copyWith(
              color: Theme.of(context).colorScheme.primary,
              fontSize: 30,
            ),
          ),
          const SizedBox(height: 14),
          Divider(
            color:
                Theme.of(context).brightness == Brightness.dark
                    ? Colors.white
                    : Theme.of(context).colorScheme.primary,
            thickness: 1,
          ),
          const SizedBox(height: 10),
          AnimatedHorizontalList(),
          const SizedBox(height: 10),
          Divider(
            color:
                Theme.of(context).brightness == Brightness.dark
                    ? Colors.white
                    : Theme.of(context).colorScheme.primary,
            thickness: 1,
          ),

          const SizedBox(height: 24),

          HomeGridView(),
          const SizedBox(height: 60),
        ],
      ),
    );
  }
}
