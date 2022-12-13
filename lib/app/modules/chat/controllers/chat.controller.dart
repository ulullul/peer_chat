import 'package:get/get.dart';
import 'package:peer_chat/app/data/database/daos/user.dao.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart' as types;
import 'package:peer_chat/app/data/entities/user.entity.dart';
import 'package:uuid/uuid.dart';

class ChatController extends GetxController {
  final isLoading = true.obs;
  final _userDao = UserDao();
  late final user = Rxn<types.User>();
  late final anotherUser = Rxn<types.User>();
  late final anotherLocalUser = Rxn<User>();
  final messages = RxList<types.Message>([]);

  @override
  void onInit() {
    super.onInit();
    anotherLocalUser.value = Get.arguments['user'] as User;
    anotherUser.value = types.User(
      id: anotherLocalUser.value!.id,
      firstName: anotherLocalUser.value!.fullName.split(' ')[0],
      lastName: anotherLocalUser.value!.fullName.split(' ')[1],
    );
    _init();
  }

  Future<void> _init() async {
    try {
      await Future.wait([
        loadUser(),
        loadMessages(),
      ]);
    } catch (e) {
      print(e);
    } finally {
      isLoading.value = false;
    }
  }

  Future<void> loadUser() async {
    final usr = await _userDao.getUser();
    final name = usr.fullName.split(' ');
    user.value = types.User(
      id: usr.id,
      firstName: name[0],
      lastName: name[1],
    );
  }

  Future<void> addMessage(types.PartialText message) async {
    final textMessage = types.TextMessage(
      author: messages.isNotEmpty && messages[0].author == user.value
          ? anotherUser.value!
          : user.value!,
      createdAt: DateTime.now().millisecondsSinceEpoch,
      id: const Uuid().v4(),
      text: message.text,
    );

    messages.insert(0, textMessage);
  }

  Future<void> loadMessages() async {
    messages.addAll([
      types.TextMessage(
        id: '1',
        text: 'Hello',
        author: user.value!,
        createdAt: DateTime.now().subtract(const Duration(days: 2)).second
      ),
      types.TextMessage(
        id: '2',
        text: 'Hello',
        author: anotherUser.value!,
      ),
    ]);
  }
}
