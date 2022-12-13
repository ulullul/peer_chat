import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:get/get.dart';
import 'package:peer_chat/app/core/base_controller.dart';
import 'package:peer_chat/app/data/database/app_database.dart';
import 'package:peer_chat/app/data/database/daos/user.dao.dart';
import 'package:peer_chat/app/data/entities/user.entity.dart';
import 'package:peer_chat/app/data/secure_storage/password_storage.dart';
import 'package:peer_chat/app/routes/app_pages.dart';
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
    final user = User(
      id: uuid.v4(),
      fullName:
          formKey.currentState!.value[AuthForm.fullName.name],
      username: formKey.currentState!.value[AuthForm.login.name],
      password: formKey.currentState!.value[AuthForm.password.name],
    );

    await _passwordStorage.writePassword(
      user.password,
    );

    await Get.putAsync<Database>(
      () async => AppDatabase.instance.create(
        (await _passwordStorage.readPassword())!,
      ),permanent: true,
    );
    Get.offNamed(Routes.HOME);
    _insertUserToDB(user);
  }

  _insertUserToDB(User user) {
    final userDao = UserDao();
    userDao.insert(user);
  }

  void import() {
    //TODO: try to decrypt database
  }
}
