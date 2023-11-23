import 'package:flutter/material.dart';
import 'package:project22/utils/app_images/app_images.dart';

import '../../utils/app_colors/colors.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 2,
      shadowColor: Colors.black26,
      backgroundColor: Colors.white,
      leading: IconButton(
        icon: const Icon(Icons.sort, color: AppColors.primary),
        onPressed: () {},
      ),
      title: Card(
        elevation: 3,
        shadowColor: Colors.black26,
        child: buildSearchTextField(context),
      ),
      actions: [
        buildAddEventButton(),
        IconButton(
          icon: const Icon(Icons.notifications_none,
              color: AppColors.primary, size: 30),
          onPressed: () {},
        ),
        buildProfileAvatar(),
        buildProfileName(),
      ],
    );
  }

  Widget buildSearchTextField(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        constraints: BoxConstraints(
          maxWidth: MediaQuery.of(context).size.width * 0.2,
          maxHeight: MediaQuery.of(context).size.height * 0.048,
        ),
        suffixIcon: IconButton(
          icon: Icon(Icons.search, color: Colors.grey.shade600),
          onPressed: () {},
        ),
        hintText: 'Search event or anything',
        hintStyle: TextStyle(color: Colors.grey.shade300),
        contentPadding:
            EdgeInsets.all(MediaQuery.of(context).size.height * 0.008),
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(2),
        ),
      ),
    );
  }

  Widget buildAddEventButton() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        onPressed: () {},
        child: const Text(
          'Add Event',
          style: TextStyle(color: Colors.white),
          textWidthBasis: TextWidthBasis.longestLine,
        ),
      ),
    );
  }

  Widget buildProfileAvatar() {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: CircleAvatar(
        backgroundImage: AssetImage(AppImages.profile),
      ),
    );
  }

  Widget buildProfileName() {
    return const Padding(
      padding: EdgeInsets.all(10),
      child: Center(
        child: Text(
          'Saima Gill',
          style: TextStyle(color: AppColors.primary, fontSize: 19),
        ),
      ),
    );
  }
}
