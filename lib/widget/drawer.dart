import 'package:flutter/material.dart';

import 'colors.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: MediaQuery.of(context).size.width > 800 ? MediaQuery.of(context).size.width * 0.20 :MediaQuery.of(context).size.width * 0.30,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.045,
              bottom: MediaQuery.of(context).size.height * 0.045),
              child: RichText(
                text: const TextSpan(
                  children: [
                    TextSpan(
                        text: 'THINK.',
                        style: TextStyle(
                            fontSize: 31,
                            color: AppColors.primary,
                            fontWeight: FontWeight.w700)),
                    TextSpan(
                        text: 'ai',
                        style: TextStyle(
                            fontSize: 31,
                            color: AppColors.secondary,
                            fontWeight: FontWeight.w700)),
                  ],
                ),
              ),
            ),
            ListTile(
              onTap: () {},
              leading: const Icon(Icons.grid_view, color: AppColors.primary),
              title: const Text('Dashboard'),
            ),
            ListTile(
              onTap: () {},
              leading: const SizedBox(
                height: 20,
                width: 20,
                child: Image(
                  image: AssetImage('lib/icons/invitation.png'),
                  color: AppColors.primary,
                ),
              ),
              title: const Text('Invitation'),
            ),
            ListTile(
              onTap: () {},
              leading: const SizedBox(
                height: 20,
                width: 20,
                child: Image(
                  image: AssetImage('lib/icons/edit.png'),
                  color: AppColors.primary,
                ),
              ),
              title: const Text('Registration'),
            ),
            ListTile(
              onTap: () {},
              leading: const SizedBox(
                height: 20,
                width: 20,
                child: Image(
                  image: AssetImage('lib/icons/user.png'),
                  color: AppColors.primary,
                ),
              ),
              title: const Text('Profile'),
            ),
            ListTile(
              onTap: () {},
              leading: const Icon(Icons.event, color: AppColors.primary),
              title: const Text('Event Detail'),
            ),
            ListTile(
              onTap: () {},
              leading: const Icon(Icons.verified, color: AppColors.primary),
              title: const Text('AI Assistant'),
            ),
            ListTile(
              onTap: () {},
              leading: const Icon(Icons.grid_view, color: AppColors.primary),
              title: const Text('Circles Create'),
            ),
            ListTile(
              onTap: () {},
              leading: const SizedBox(
                height: 20,
                width: 20,
                child: Image(
                  image: AssetImage('lib/icons/team.png'),
                  color: AppColors.primary,
                ),
              ),
              title: const Text('Circles'),
              trailing: const Icon(Icons.arrow_forward_ios),
            ),
            ListTile(
              onTap: () {},
              leading: const Icon(Icons.grid_view, color: AppColors.primary),
              title: const Text('Gen AI Idea'),
            ),
            ListTile(
              onTap: () {},
              leading: const Icon(Icons.grid_view, color: AppColors.primary),
              title: const Text('Event Day'),
            ),
            ListTile(
              onTap: () {},
              leading: const Icon(Icons.grid_view, color: AppColors.primary),
              title: const Text('Ideas'),
              trailing: const Icon(Icons.arrow_forward_ios),
            ),
            ListTile(
              onTap: () {},
              leading: const Icon(Icons.grid_view, color: AppColors.primary),
              title: const Text('Event\'s Top Idea'),
            ),
            ListTile(
              onTap: () {},
              leading: const Icon(Icons.grid_view, color: AppColors.primary),
              title: const Text('5 Steps'),
            ),
            ListTile(
              onTap: () {},
              leading: const Icon(Icons.grid_view, color: AppColors.primary),
              title: const Text('Report Form'),
            ),

            SizedBox(height: MediaQuery.of(context).size.height * 0.45),

            ListTile(
              onTap: () {},
              leading: const Icon(Icons.settings, color: AppColors.primary),
              title: const Text('Settings'),
            ),

            ListTile(
              onTap: () {},
              leading: const Icon(Icons.logout, color: AppColors.primary),
              title: const Text('Log Out'),
            ),


          ],
        ),
      ),
    );
  }
}
