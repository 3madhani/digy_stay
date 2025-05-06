import 'package:digy_stay/core/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:iconsax/iconsax.dart';
import 'package:provider/provider.dart';

import '../../../../settings/presentation/view_model/settings_view_model.dart';

class ThemeTile extends StatelessWidget {
  const ThemeTile({super.key});

  @override
  Widget build(BuildContext context) {
    final viewModel = Provider.of<SettingsViewModel>(context);

    return Card(
      elevation: 3,
      child: ListTile(
        onTap: () => _showColorPicker(context, viewModel),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        title: const Text('Theme'),
        leading: const Icon(Iconsax.color_swatch),
      ),
    );
  }

  void _showColorPicker(BuildContext context, SettingsViewModel viewModel) {
    showDialog(
      context: context,
      builder:
          (context) => AlertDialog(
            title: const Text('Pick Theme Color'),
            content: SingleChildScrollView(
              child: BlockPicker(
                availableColors: const [
                  AppColors.primaryColor,
                  AppColors.primaryLightColor,
                  AppColors.secondaryColor,
                  AppColors.secondaryLightColor,
                  Color(0xFF4A90E2), // Soft Blue
                  Color(0xFF50E3C2), // Mint
                  Color(0xFFF5A623), // Warm Orange
                  Color(0xFF7ED321), // Lime Green
                  Color(0xFFBD10E0), // Soft Purple
                  Color(0xFFFF6F61), // Coral
                  Color(0xFF2D9CDB), // Sky Blue
                  Color(0xFF27AE60), // Emerald Green
                  Color(0xFFA29BFE), // Lavender
                  Color(0xFFEB5757), // Soft Red
                  Color(0xFF56CCF2), // Light Blue
                  Color(0xFFC0C0C0), // Silver
                  Color(0xFFE6E6FA), // Lavender Blush
                  Color(0xFFD3D3D3), // Light Gray
                ],
                pickerColor: viewModel.selectedColor,
                onColorChanged: viewModel.changeThemeColor,
              ),
            ),
            actions: [
              TextButton(
                child: const Text('Done'),
                onPressed: () => Navigator.pop(context),
              ),
            ],
          ),
    );
  }
}
