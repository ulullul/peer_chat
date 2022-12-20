import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:get/get.dart';
import 'package:peer_chat/app/core/base_controller.dart';
import 'package:peer_chat/app/data/database/app_database.dart';
import 'package:peer_chat/app/data/database/daos/user.dao.dart';
import 'package:peer_chat/app/data/entities/user.entity.dart';
import 'package:peer_chat/app/data/secure_storage/password_storage.dart';
import 'package:peer_chat/app/routes/app_pages.dart';
import 'package:peer_chat/app/services/hash.service.dart';
import 'package:peer_chat/app/services/key.service.dart';
import 'package:sembast/sembast.dart';
import 'package:uuid/uuid.dart';

enum AuthForm {
  fullName,
  login,
  password,
}

class AuthController extends BaseController {
  final _passwordStorage = Get.find<PasswordStorage>();
  final formKey = GlobalKey<FormBuilderState>();

  void submit() async {
    if (!formKey.currentState!.saveAndValidate()) return;
    const uuid = Uuid();
    final password = await HashService.base64Hash(
        formKey.currentState!.value[AuthForm.password.name]);
    User user = User(
      id: uuid.v1(),
      fullName: formKey.currentState!.value[AuthForm.fullName.name],
      username: formKey.currentState!.value[AuthForm.login.name],
      password: password,
    );

    final keyService = KeyService();
    final keys = await keyService.generateNewKeyPairFromUserSeed(user);

    final genUuid = uuid.v1();
    user = user.copyWith(
      keyPairData: base64Encode((await keys.extract()).bytes),
      uuid: genUuid,
      id: genUuid,
    );

    print(user.uuid);
    print(user);
    inspect(user);

    await _passwordStorage.writePassword(
      user.password,
    );

    await Get.putAsync<Database>(
      () async => AppDatabase.instance.create(
        (await _passwordStorage.readPassword())!,
      ),
      permanent: true,
    );
    await _insertUserToDB(user);

    Get.offNamed(Routes.HOME);
  }

  Future<void> _insertUserToDB(User user) async {
    final userDao = UserDao();
    await userDao.insert(user);
  }

  void import() {
    //TODO: try to decrypt database
  }
}
