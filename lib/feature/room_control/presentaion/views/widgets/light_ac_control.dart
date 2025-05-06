import 'package:digy_stay/core/constants/app_const.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/app_text_styles.dart';

class LightAcControl extends StatefulWidget {
  final String device;
  const LightAcControl({super.key, required this.device});

  @override
  State<LightAcControl> createState() => _LightAcControlState();
}

class _LightAcControlState extends State<LightAcControl> {
  bool isPowerOn = true;
  double sliderValue = 50;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: AppConst.horizontalPadding,
      ),
      child: Column(
        children: [
          // Power Switch
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Power', style: AppTextStyles.semiBold20),
              Switch(
                value: isPowerOn,
                onChanged: (val) {
                  setState(() {
                    isPowerOn = val;
                  });
                },
              ),
            ],
          ),
          SizedBox(height: 20),

          // Label and Value in Row
          Text(
            widget.device == "Light" ? "Brightness" : "Temperature",
            style: AppTextStyles.semiBold20,
          ),

          // Slider
          Row(
            children: [
              Expanded(
                child: Slider(
                  value: sliderValue,
                  min: 0,
                  max: 100,
                  onChanged: (val) {
                    setState(() {
                      sliderValue = val;
                    });
                  },
                ),
              ),
              Text(
                '${sliderValue.toInt()}',
                style: AppTextStyles.semiBold20.copyWith(
                  color: sliderValue == 0 ? Colors.grey : Colors.black,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
