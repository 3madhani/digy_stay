import 'package:digy_stay/core/common/custom_app_bar.dart';
import 'package:flutter/material.dart';

class OffersView extends StatelessWidget {
  static const String routeName = 'offersView';
  const OffersView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context: context, title: 'Offers'),
      body: const Center(child: Text('Offers View Body')),
    );
  }
}
