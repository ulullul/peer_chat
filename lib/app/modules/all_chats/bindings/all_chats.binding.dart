import 'package:get/get.dart';

import '../controllers/all_chats.controller.dart';

class AllChatsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AllChatsController>(
      () => AllChatsController(),
    );
  }
}
