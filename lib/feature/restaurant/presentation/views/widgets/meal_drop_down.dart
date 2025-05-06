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
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 12),
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.primaryLightColor, width: 1.5),
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
                    style: AppTextStyles.semiBold16.copyWith(
                      color: AppColors.primaryColor,
                    ),
                  ),
                );
              }).toList(),
          onChanged: (String? newValue) {
            setState(() {
              selectedMeal = newValue!;
            });
          },
          icon: Icon(Iconsax.arrow_down, color: AppColors.primaryColor),
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
