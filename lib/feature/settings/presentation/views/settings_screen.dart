import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import 'profile_screen.dart';
import 'widgets/dark_tile.dart';
import 'widgets/navigation_tile.dart';
import 'widgets/profile_tile.dart';
import 'widgets/sign_out_tile.dart';
import 'widgets/theme_tile.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});
  static const String routeName = '/settings';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Settings')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const ProfileTile(),
            NavigationTile(
              title: 'Profile',
              icon: Iconsax.user,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ProfileScreen(),
                  ),
                );
              },
            ),
            const ThemeTile(),
            const DarkModeTile(),
            const SignOutTile(),
          ],
        ),
      ),
    );
  }
}
