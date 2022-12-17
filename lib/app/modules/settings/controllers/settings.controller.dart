import 'dart:convert';

import 'package:get/get.dart';
import 'package:peer_chat/app/data/database/daos/user.dao.dart';
import 'package:peer_chat/app/data/entities/user.entity.dart';
import 'package:sembast/sembast.dart';
import 'package:sembast/utils/sembast_import_export.dart';

class SettingsController extends GetxController {
  final _userDao = UserDao();
  final user = Rxn<User>();
  final _db = Get.find<Database>();

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
    _getUser();
  }

  Future<void> _getUser() async {
    user.value = await _userDao.getUser();
  }

  Future<void> export() async {
    var content = await exportDatabase(_db);
// Save as text
    var saved = jsonEncode(content);
    print(saved);
  }
}
