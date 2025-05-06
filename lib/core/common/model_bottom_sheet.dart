import 'package:digy_stay/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../feature/room_control/presentaion/view_model/light_ac_view_model.dart';
import '../../feature/room_control/presentaion/views/widgets/curtains_control.dart';
import '../../feature/room_control/presentaion/views/widgets/light_ac_control.dart';
import '../../feature/room_control/presentaion/views/widgets/tv_control.dart';

void showControlSheet(BuildContext context, String device) {
  showModalBottomSheet(
    context: context,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
    ),
    builder: (context) {
      return Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('$device Control', style: AppTextStyles.bold23),
            SizedBox(height: 20),

            // Light & AC Controls
            if (device == "Light" || device == "AC")
              ChangeNotifierProvider(
                create: (_) => LightAcControlViewModel(),
                child: LightAcControl(device: device),
              ),

            // Curtains Control
            if (device == "Curtains") CurtainsControl(),

            // TV Control
            if (device == "TV") TvControl(),
          ],
        ),
      );
    },
  );
}
