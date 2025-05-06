import 'package:digy_stay/core/utils/app_colors.dart';
import 'package:digy_stay/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ItemDropdownList extends StatefulWidget {
  final List<String> items;
  final String selectedItem;

  const ItemDropdownList({
    super.key,
    required this.items,
    required this.selectedItem,
  });

  @override
  State<ItemDropdownList> createState() => _ItemDropdownListState();
}

class _ItemDropdownListState extends State<ItemDropdownList> {
  late String selectedMeal;

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final colorScheme = Theme.of(context).colorScheme;

    return Container(
      height: 65,
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 12),
      decoration: BoxDecoration(
        border: Border.all(
          color:
              isDark
                  ? colorScheme.onSurface.withOpacity(
                    0.6,
                  ) // Light border in dark mode
                  : AppColors.primaryLightColor, // Dark border in light mode
          width: 1.5,
        ),
        borderRadius: BorderRadius.circular(12),
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<String>(
          borderRadius: BorderRadius.circular(12),
          value: selectedMeal, // Use the local state variable here
          items:
              widget.items.map((String item) {
                return DropdownMenuItem<String>(
                  value: item,
                  child: Text(
                    item,
                    style: AppTextStyles.semiBold20.copyWith(
                      color:
                          isDark
                              ? colorScheme
                                  .onSurface // Light text in dark mode
                              : AppColors
                                  .primaryColor, // Dark text in light mode
                    ),
                  ),
                );
              }).toList(),
          onChanged: (String? newValue) {
            setState(() {
              selectedMeal = newValue!;
            });
          },
          icon: Icon(
            Iconsax.arrow_down_1,
            color: isDark ? colorScheme.onSurface : AppColors.primaryColor,
            size: 30,
          ),
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    selectedMeal = widget.selectedItem;
  }
}
