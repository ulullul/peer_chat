import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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

  Future<void> seeUserId() async {
    Get.defaultDialog(
      title: "User id",
      content: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: SelectableText(user.value!.uuid!,
                style: const TextStyle(fontSize: 13)),
          ),
          IconButton(
            onPressed: () {
              Clipboard.setData(
                ClipboardData(text: user.value!.uuid!),
              );
            },
            icon: const Icon(Icons.content_copy),
          ),
        ],
      ),
    );
  }
}
