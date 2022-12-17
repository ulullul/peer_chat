import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:peer_chat/app/core/widgets/user_avatar.dart';
import 'package:peer_chat/app/routes/app_pages.dart';

import '../controllers/all_chats.controller.dart';

class AllChatsView extends GetView<AllChatsController> {
  const AllChatsView({Key? key}) : super(key: key);

  void _newContactMock() {
    Get.defaultDialog(
      title: 'New contact',
      middleText: "Andrii Prytula wants to make a connection",
      textConfirm: 'Accept',
      textCancel: 'Decline',
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: GestureDetector(
          onTap: _newContactMock,
          child: const Text(
            'Select chat',
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () => Get.toNamed(Routes.SETTINGS),
            icon: Icon(
              Icons.settings,
            ),
          ),
        ],
      ),
      body: ListView.separated(
        itemBuilder: (_, index) {
          final user = controller.users1[index];
          return ListTile(
            leading: UserAvatar(
              user: user,
            ),
            trailing: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if (!user.isConnected)
                  Icon(
                    Icons.connect_without_contact,
                    color: Colors.red.shade300,
                  ),
                if (user.isConnected)
                  Icon(
                    Icons.connect_without_contact,
                    color: Colors.green.shade300,
                  ),
              ],
            ),
            title: Text(user.fullName),
            onTap: () {
              if (user.isConnected) {
                Get.toNamed(Routes.CHAT, arguments: {
                  'user': user,
                });
              } else {
                Get.defaultDialog(
                  title: 'New contact',
                  middleText:
                      "Are you sure you want to add ${user.fullName} to Your contacts",
                  textConfirm: 'Yes',
                  textCancel: 'No',
                );
              }
            },
          );
        },
        separatorBuilder: (_, __) => Container(
          height: 1,
          color: Colors.grey.shade400,
        ),
        itemCount: controller.users1.length,
      ),
    );
  }
}
