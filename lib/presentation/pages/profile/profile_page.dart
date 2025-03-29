import 'package:casl_fit/presentation/assets/asset_index.dart';
import 'package:casl_fit/presentation/pages/profile/widgets/custom_switch.dart';
import 'package:casl_fit/presentation/pages/profile/widgets/menu_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text('Profile', style: TextStyle(color: Colors.white)),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.settings, color: Colors.white),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('assets/profile.jpg'),
            ),
            const SizedBox(height: 10),
            const Text(
              'Mondi Morris',
              style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const Text(
              'mondimorris@gmail.com',
              style: TextStyle(color: Colors.grey),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _infoCard('Weight', '65.5 kg'),
                _infoCard('Height', '5.7 Fit'),
                _infoCard('Age', '25 Years'),
              ],
            ),
            const SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.grey[900],
                borderRadius: BorderRadius.circular(12),
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Go Premium & Unlock More!', style: TextStyle(color: Colors.white)),
                  Icon(Icons.arrow_forward_ios, color: Colors.white),
                ],
              ),
            ),
            const SizedBox(height: 20),
          MenuItem(
            title: "Edit Profile",
            icon:AppIcons.profile,
            switchValue: true,
            onSwitchChanged: (value) {
            },
          ),
            MenuItem(
              title: "Notification",
              icon:AppIcons.notification,
              switchValue: true,
              hasSwitch: true,
              onSwitchChanged: (value) {
              },
            ),
            MenuItem(
              title: "Setting",
              icon:AppIcons.settings,
              switchValue: true,
              onSwitchChanged: (value) {
              },
            ),

            const SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: AppTheme.colors.primary,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16.r),
                ),
              ),
              onPressed: () {},
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      height: 16.sp,
                      AppIcons.logout,
                      colorFilter: ColorFilter.mode(AppTheme.colors.secondary, BlendMode.srcIn),
                    ),
                    const SizedBox(width: 8),
                    Text('Log Out', style: TextStyle(color: AppTheme.colors.secondary)),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _infoCard(String title, String value) {
    return Column(
      children: [
        Text(title, style: const TextStyle(color: Colors.grey)),
        const SizedBox(height: 5),
        Text(value, style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
      ],
    );
  }


}
