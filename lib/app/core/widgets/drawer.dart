import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:peer_chat/app/core/widgets/user_avatar.dart';
import 'package:peer_chat/app/data/entities/user.entity.dart';

import '../../routes/app_pages.dart';

class AppDrawer extends StatefulWidget {
  const AppDrawer({
    Key? key,
    required this.user,
  }) : super(key: key);

  final User user;

  @override
  State<AppDrawer> createState() => _AppDrawerState();
}

class _AppDrawerState extends State<AppDrawer> {
  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      widthFactor: 0.7,
      child: Container(
        color: Colors.white,
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              child: Column(
                children: [
                  UserAvatar(
                    user: widget.user,
                    radius: 30,
                    fontSize: 20,
                  ),
                  const SizedBox(height: 30,),
                  Text(
                    widget.user.fullName,
                    style: const TextStyle(fontSize: 25),
                  ),
                ],
              ),
            ),
            ListTile(
              title: const Text('All chats'),
              leading: Icon(Icons.all_inbox),
              onTap: () {
                Get.toNamed(Routes.ALL_CHATS);
              },
            ),
            ListTile(
              title: const Text('Home'),
              leading: Icon(Icons.all_inbox),
              onTap: () {
                Get.toNamed(Routes.HOME);
              },
            ),
            ListTile(
              title: const Text('Settings'),
              leading: Icon(Icons.settings),
              onTap: () {
                Get.toNamed(Routes.SETTINGS);
              },
            ),
          ],
        ),
      ),
    );
  }
}
