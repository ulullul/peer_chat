import 'package:flutter/material.dart';
import 'package:flutter_chat_ui/flutter_chat_ui.dart' hide UserAvatar;

import 'package:get/get.dart';
import 'package:peer_chat/app/core/widgets/user_avatar.dart';

import '../controllers/chat.controller.dart';

class ChatView extends GetView<ChatController> {
  const ChatView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: ObxValue((user) {
          return Text(
              '${controller.anotherUser.value!.firstName!} ${controller.anotherUser.value!.lastName!}');
        }, controller.user),
        centerTitle: true,
        actions: [
          Obx(() {
            if (controller.anotherLocalUser.value == null)
              return const SizedBox();
            return UserAvatar(user: controller.anotherLocalUser.value!);
          }),
        ],
      ),
      body: ObxValue(
        (isLoading) {
          if (isLoading.value) {
            return const Center(child: CircularProgressIndicator());
          }
          return Obx(() {
            print(controller.messages);
            return Chat(
              messages: controller.messages,
              onSendPressed: controller.addMessage,
              user: controller.user.value!,
              showUserAvatars: true,
              theme: DefaultChatTheme(
                userAvatarNameColors: const [
                  Color(0xfff5a2d9),
                ],
                primaryColor: Theme.of(context).colorScheme.primary,
              ),
            );
          });
        },
        controller.isLoading,
      ),
    );
  }
}
