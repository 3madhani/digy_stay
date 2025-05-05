import 'package:digy_stay/core/common/custom_app_bar.dart';
import 'package:flutter/material.dart';

class RoomControlView extends StatelessWidget {
  const RoomControlView({super.key});
  static const String routeName = 'roomControlView';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context: context, title: 'Room Control'),
      body: const Center(
        child: Text('Room Control View Body'),
      ),
    );
  }
}