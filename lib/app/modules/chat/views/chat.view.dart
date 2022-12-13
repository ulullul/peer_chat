import 'package:flutter/material.dart';
import 'package:flutter_chat_ui/flutter_chat_ui.dart';

import 'package:get/get.dart';

import '../controllers/chat.controller.dart';

class ChatView extends GetView<ChatController> {
  const ChatView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: ObxValue((user) {
          return Text(
              '${controller.anotherUser.value.firstName!} ${controller.anotherUser.value.lastName!}');
        }, controller.user),
        centerTitle: true,
      ),
      body: ObxValue((isLoading) {
        if (isLoading.value) {
          return const Center(child: CircularProgressIndicator());
        }
        return Obx(() {
          return Chat(
            messages: controller.messages,
            onSendPressed: controller.addMessage,
            user: controller.user.value!,
            showUserAvatars: true,
            theme: DefaultChatTheme(
              primaryColor: Theme.of(context).colorScheme.primary,
            ),
          );
        });
      }, controller.isLoading),
    );
  }
}
