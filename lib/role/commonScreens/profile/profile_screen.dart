
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_borla/role/commonScreens/notification/notification_screen.dart';
import 'package:project_borla/role/commonScreens/profile/edit_profile_screen.dart';
import 'package:project_borla/role/components/text/common_text.dart';

import '../../components/gradient_scafold.dart';
import 'innerWidget/language_bottom_sheet.dart';
import 'innerWidget/logout_bottom_sheet.dart';
import 'innerWidget/settingsListItems.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  void showLanguageBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true, // Allows full height if needed
      backgroundColor: Colors.transparent,
      builder: (context) => const LanguageSelectionBottomSheet(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GradientScaffold(
      appBar: AppBar(
        title: const CommonText(text: 'Profile', fontSize: 18, fontWeight: FontWeight.w500,),
      ),
      child: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Profile Header
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(color: const Color(0xFFE6E6E6)),
                ),
                child: Row(
                  children: [
                    const CircleAvatar(
                      radius: 32,
                      backgroundImage: NetworkImage(
                        'https://shorturl.at/WSMrn',
                      ),
                    ),
                    const SizedBox(width: 16),

                    const CommonText(
                      text: 'Borla Ghana',
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      textAlign: TextAlign.left,
                      maxLines: 1,
                    ),

                    const Spacer(),
                    InkWell(
                      onTap: () {
                        Get.to(()=> EditProfileScreen());
                      },
                        child: Icon(Icons.chevron_right, color: Colors.grey[600])),
                  ],
                ),
              ),

              const SizedBox(height: 40),

              const CommonText(
                text: 'Others',
                fontSize: 18,
                fontWeight: FontWeight.w700,
                color: Colors.black87,
                textAlign: TextAlign.left,
                maxLines: 1,
              ),

              const SizedBox(height: 16),

              // Settings items
              SettingsListItem(
                icon: Icons.lock_outline,
                title: 'Change Password',
                onTap: () {
                  Get.to(()=> EditProfileScreen());
                },
              ),
              SettingsListItem(
                icon: Icons.language,
                title: 'Change Language',
                onTap: () {
                  showLanguageBottomSheet(context);
                },
              ),
              SettingsListItem(
                icon: Icons.notifications_outlined,
                title: 'Notifications',
                onTap: () {
                  Get.to(()=> NotificationsScreen());
                },
              ),
              const SettingsListItem(
                icon: Icons.info_outline,
                title: 'About Us',
              ),
              const SettingsListItem(
                icon: Icons.privacy_tip_outlined,
                title: 'Privacy policy',
              ),
              const SettingsListItem(
                icon: Icons.description_outlined,
                title: 'Terms & Conditions',
              ),
              SettingsListItem(
                icon: Icons.logout,
                title: 'Logout',
                titleColor: Colors.red,
                iconColor: Colors.red,
                onTap: () {
                  showLogoutBottomSheet(context);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
