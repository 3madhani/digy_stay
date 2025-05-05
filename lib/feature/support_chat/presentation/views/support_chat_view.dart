import 'package:flutter/material.dart';

import '../../../../core/common/custom_app_bar.dart';

class SupportChatView extends StatelessWidget {
  static const String routeName = 'supportChatView';
  const SupportChatView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context: context, title: 'Offers'),
      body: const Center(child: Text('Support Chat View Body')),
    );
  }
}
