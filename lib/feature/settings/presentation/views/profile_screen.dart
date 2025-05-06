import 'package:digy_stay/core/common/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:provider/provider.dart';

import '../view_model/profile_view_model.dart';
import 'widgets/profile_info_card.dart';
import 'widgets/profile_info_card_static.dart';
import 'widgets/profile_picture.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => ProfileViewModel(),
      child: Consumer<ProfileViewModel>(
        builder: (context, viewModel, child) {
          return Scaffold(
            appBar: AppBar(title: const Text('Profile')),
            body: Padding(
              padding: const EdgeInsets.all(16),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    // Profile Picture
                    const ProfilePicture(),

                    const SizedBox(height: 16),

                    // Name Field
                    ProfileInfoCard(
                      icon: Iconsax.user_octagon,
                      label: 'Name',
                      controller: viewModel.nameController,
                      isEnabled: viewModel.enableName,
                      onEdit: viewModel.toggleEditName,
                    ),

                    // About Field
                    ProfileInfoCard(
                      icon: Iconsax.information,
                      label: 'About',
                      controller: viewModel.aboutController,
                      isEnabled: viewModel.enableAbout,
                      onEdit: viewModel.toggleEditAbout,
                    ),

                    // Email Info
                    const ProfileInfoCardStatic(
                      icon: Iconsax.direct,
                      title: 'Email',
                      subtitle: 'qk2Bq@example.com',
                    ),

                    // Join Date Info
                    const ProfileInfoCardStatic(
                      icon: Iconsax.calendar_1,
                      title: 'Join Date',
                      subtitle: '2023-10-01',
                    ),

                    const SizedBox(height: 40),

                    // Save Button
                    CustomPrimaryButton(
                      color: Theme.of(context).colorScheme.primary,
                      title: 'Save',
                      onPressed: viewModel.saveProfile,
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
