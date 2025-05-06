import 'package:digy_stay/core/constants/app_const.dart';
import 'package:digy_stay/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

import '../../view_model/light_ac_view_model.dart'; // 🌟 NEW: Syncfusion slider


class LightAcControl extends StatelessWidget {
  final String device; // "Light" or "AC"
  const LightAcControl({super.key, required this.device});

  @override
  Widget build(BuildContext context) {
    final viewModel = Provider.of<LightAcControlViewModel>(context);
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final isLightDevice = device == "Light";

    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: AppConst.horizontalPadding,
      ),
      child: Column(
        children: [
          // Power Switch Row
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Power', style: AppTextStyles.semiBold20),
              Switch(
                value: viewModel.isPowerOn,
                onChanged: viewModel.togglePower,
              ),
            ],
          ),

          const SizedBox(height: 20),

          // Label
          Text(
            isLightDevice ? "Brightness" : "Temperature",
            style: AppTextStyles.semiBold20,
          ),

          // 🌟 Fancy Syncfusion Slider
          SfSlider(
            value: viewModel.sliderValue,
            min: 0.0,
            max: 100.0,
            interval: 20,
            showTicks: true,
            showLabels: true,
            enableTooltip: true,
            activeColor:
                isLightDevice
                    ? Colors
                        .amber // 🌞 Brightness color
                    : Colors.blue, // 🌊 Temp color
            inactiveColor: Colors.grey.shade300,
            onChanged: viewModel.changeSlider,
            tooltipTextFormatterCallback: (
              dynamic actualValue,
              String formattedText,
            ) {
              return isLightDevice
                  ? '${actualValue.toInt()}%'
                  : '${actualValue.toInt()}°C';
            },
          ),

          // Value Label
          Text(
            isLightDevice
                ? '${viewModel.sliderValue.toInt()}%'
                : '${viewModel.sliderValue.toInt()}°C',
            style: AppTextStyles.semiBold20.copyWith(
              color:
                  viewModel.sliderValue == 0
                      ? Colors.grey
                      : isDark
                      ? Colors.white
                      : Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
