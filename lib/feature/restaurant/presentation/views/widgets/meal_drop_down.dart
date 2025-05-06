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
        border: Border.all(color: colorScheme.secondary, width: 1.5),
        borderRadius: BorderRadius.circular(12),
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<String>(
          elevation: 6,
          borderRadius: BorderRadius.circular(12), // For the popup border
          dropdownColor: isDark ? Colors.grey[900] : Colors.white,
          value: selectedMeal,
          icon: Icon(
            Iconsax.arrow_down_1,
            color: colorScheme.onSurface,
            size: 30,
          ),
          items:
              widget.items.map((String item) {
                return DropdownMenuItem<String>(
                  value: item,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8,
                      vertical: 8,
                    ),
                    child: Text(
                      item,
                      style: AppTextStyles.semiBold20.copyWith(
                        color: colorScheme.onSurface,
                      ),
                    ),
                  ),
                );
              }).toList(),
          onChanged: (String? newValue) {
            setState(() {
              selectedMeal = newValue!;
            });
          },
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
