import 'package:digy_stay/core/common/custom_app_bar.dart';
import 'package:digy_stay/feature/restaurant/presentation/views/widgets/restaurant_view_body.dart';
import 'package:flutter/material.dart';

class RestaurantView extends StatelessWidget {
  static const String routeName = 'restaurantView';
  const RestaurantView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context: context, title: 'Restaurant Booking'),
      body: RestaurantViewBody(),
    );
  }
}
