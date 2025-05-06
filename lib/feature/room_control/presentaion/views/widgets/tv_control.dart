import 'package:flutter/material.dart';

import '../../../../../core/utils/app_text_styles.dart';

class TvControl extends StatefulWidget {
  const TvControl({super.key});

  @override
  State<TvControl> createState() => _TvControlState();
}

class _TvControlState extends State<TvControl> {
  bool isOn = true;
  int volume = 50;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // TV Buttons
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(onPressed: volumeUp, icon: Icon(Icons.volume_up)),
            IconButton(onPressed: volumeDown, icon: Icon(Icons.volume_off)),
            IconButton(
              onPressed: togglePower,
              icon: Icon(Icons.power_settings_new),
            ),
          ],
        ),
        SizedBox(height: 10),

        // Show status
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'TV is ',
              style: AppTextStyles.semiBold20.copyWith(color: Colors.grey),
            ),
            Text(
              isOn ? 'On' : 'Off',
              style: AppTextStyles.semiBold20.copyWith(
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Volume: ',
              style: AppTextStyles.semiBold20.copyWith(color: Colors.grey),
            ),
            Text(
              '$volume',
              style: AppTextStyles.semiBold20.copyWith(
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
          ],
        ),
      ],
    );
  }

  void togglePower() {
    setState(() {
      isOn = !isOn;
    });
  }

  void volumeDown() {
    setState(() {
      if (volume > 0) volume -= 10;
    });
  }

  void volumeUp() {
    setState(() {
      if (volume < 100) volume += 10;
    });
  }
}
