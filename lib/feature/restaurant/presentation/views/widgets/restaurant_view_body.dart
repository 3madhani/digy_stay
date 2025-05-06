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
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: AppConst.horizontalPadding,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(20),
            margin: const EdgeInsets.only(top: 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: const LinearGradient(
                colors: [Color(0xFF4A90E2), Color(0xFF50E3C2)],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 10,
                  offset: Offset(0, 5),
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
          Text("Meal Type", style: AppTextStyles.semiBold20),
          const SizedBox(height: 5),
          ItemDropdownList(
            items: const ["Breakfast", "Lunch", "Dinner", "Brunch", "Snack"],
            selectedItem: "Breakfast",
          ),
          const SizedBox(height: 30),
          Text("Guests", style: AppTextStyles.semiBold20),
          const SizedBox(height: 5),
          ItemDropdownList(
            items: const ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10"],
            selectedItem: "1",
          ),
          const SizedBox(height: 50),
          CustomPrimaryButton(onPressed: () {}, title: "Confirm Booking"),
        ],
      ),
    );
  }
}
