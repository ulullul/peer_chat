import 'package:get/get.dart';
import 'package:peer_chat/app/data/entities/user.entity.dart';

class AllChatsController extends GetxController {
  final users1 = [
    const User(
      id: '1',
      fullName: 'Pavlo Hubin',
      username: 'phubin',
      password: 'phubin',
      isConnected: true,
    ),
    const User(
      id: '2',
      fullName: 'Vadym Slobodyanuk',
      username: 'phubin',
      password: 'phubin',
      isConnected: true,
    ),
    const User(
      id: '3',
      fullName: 'Andrii Usatenko',
      username: 'phubin',
      password: 'phubin',
    ),
    const User(
      id: '4',
      fullName: 'Vasya Pupkin',
      username: 'phubin',
      password: 'phubin',
    ),
  ];

  final users = <User>[].obs;

  void addUser(User user) {
    users.add(user);
  }

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
