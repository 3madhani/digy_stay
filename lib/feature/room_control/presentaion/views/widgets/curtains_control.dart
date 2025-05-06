import 'package:flutter/material.dart';

import '../../../../../core/utils/app_text_styles.dart';

class CurtainsControl extends StatefulWidget {
  const CurtainsControl({super.key});

  @override
  State<CurtainsControl> createState() => _CurtainsControlState();
}

class _CurtainsControlState extends State<CurtainsControl> {
  bool isOpen = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Curtains Switch
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Curtains', style: AppTextStyles.semiBold20),
            Switch(
              value: isOpen,
              onChanged: (val) {
                setState(() {
                  isOpen = val;
                });
              },
            ),
          ],
        ),
        SizedBox(height: 10),

        // Status Text
        Text(
          isOpen ? 'Curtains are Open' : 'Curtains are Closed',
          style: AppTextStyles.semiBold20.copyWith(color: Colors.grey),
        ),
        SizedBox(height: 20),
      ],
    );
  }
}
