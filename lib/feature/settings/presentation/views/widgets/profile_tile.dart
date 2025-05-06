import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../qr_code_screen.dart';

class ProfileTile extends StatelessWidget {
  const ProfileTile({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      minVerticalPadding: 40,
      title: const Text('Name'),
      leading: const CircleAvatar(radius: 30),
      trailing: IconButton(
        icon: const Icon(Iconsax.scan_barcode),
        onPressed: () {
          // Navigate to QR code screen
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const QrCodeScreen()),
          );
        },
      ),
    );
  }
}
