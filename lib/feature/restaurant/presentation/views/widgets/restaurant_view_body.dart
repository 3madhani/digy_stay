import 'package:digy_stay/core/common/custom_button.dart';
import 'package:digy_stay/core/constants/app_const.dart';
import 'package:digy_stay/core/utils/app_assets.dart';
import 'package:digy_stay/core/utils/app_text_styles.dart';
import 'package:digy_stay/feature/restaurant/presentation/views/widgets/meal_drop_down.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RestaurantViewBody extends StatelessWidget {
  const RestaurantViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final colorScheme = Theme.of(context).colorScheme;

    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: AppConst.horizontalPadding,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Image Container with Gradient
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(20),
            margin: const EdgeInsets.only(top: 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(
                colors:
                    isDark
                        ? [
                          colorScheme.primary,
                          colorScheme.secondary,
                        ] // Dark gradient
                        : [
                          colorScheme.primary,
                          colorScheme.secondary,
                        ], // Light gradient
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              boxShadow: [
                BoxShadow(
                  color:
                      isDark
                          ? colorScheme.onSurface.withOpacity(
                            0.3,
                          ) // Light shadow for dark mode
                          : Colors.black12, // Shadow for light mode
                  blurRadius: 10,
                  offset: const Offset(0, 5),
                ),
              ],
            ),
            child: SvgPicture.asset(
              Assets.svgWaiterHoldingTrayInRestaurant,
              height: 200,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 35),

          // Meal Type Text
          Text(
            "Meal Type",
            style: AppTextStyles.semiBold24.copyWith(
              color: colorScheme.onSurface,
            ),
          ),
          const SizedBox(height: 5),

          // Meal Dropdown
          ItemDropdownList(
            items: const ["Breakfast", "Lunch", "Dinner", "Snack"],
            selectedItem: "Breakfast",
          ),

          const SizedBox(height: 30),

          // Guests Text
          Text(
            "Guests",
            style: AppTextStyles.semiBold24.copyWith(
              color: colorScheme.onSurface,
            ),
          ),
          const SizedBox(height: 5),

          // Guests Dropdown
          ItemDropdownList(
            items: const ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10"],
            selectedItem: "1",
          ),

          const SizedBox(height: 60),

          // Confirm Button
          CustomPrimaryButton(onPressed: () {}, title: "Confirm Booking"),
        ],
      ),
    );
  }
}
