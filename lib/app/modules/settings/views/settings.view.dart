import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:peer_chat/app/core/widgets/user_avatar.dart';
import 'package:peer_chat/app/routes/app_pages.dart';

import '../controllers/settings.controller.dart';

class SettingsView extends GetView<SettingsController> {
  const SettingsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ObxValue((user) {
              if (user.value == null) return const SizedBox();
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 90,
                    height: 90,
                    child: UserAvatar(
                      user: user.value!,
                      fontSize: 32,
                    ),
                  ),
                  Text(
                    user.value!.fullName,
                    style: const TextStyle(fontSize: 32),
                  ),
                ],
              );
            }, controller.user),
            const SizedBox(height: 20),
            ElevatedButton.icon(
              onPressed: controller.export,
              icon: const Icon(Icons.import_export),
              label: const Text(
                'Export account',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
