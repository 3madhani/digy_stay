import 'package:digy_stay/core/common/custom_app_bar.dart';
import 'package:flutter/material.dart';

import 'widgets/room_control_view_body.dart';

class RoomControlView extends StatelessWidget {
  static const String routeName = 'roomControlView';
  const RoomControlView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context: context, title: "Room Control"),
      body: const RoomControlViewBody(),
    );
  }
}
