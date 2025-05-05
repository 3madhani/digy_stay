import 'package:digy_stay/core/common/custom_app_bar.dart';
import 'package:flutter/material.dart';

class RestaurantView extends StatelessWidget {
  static const String routeName = 'restaurantView';
  const RestaurantView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context: context, title: 'Restaurant'),
      body: const Center(child: Text('Restaurant View Body')),
    );
  }
}
