import 'dart:convert';
import 'dart:typed_data';

import 'package:get/get.dart';
import 'package:peer_chat/app/data/secure_storage/secure_storage_provider.dart';
import 'package:peer_chat/app/services/hash.service.dart';

class PasswordStorage {
  final _secureStorage = Get.find<SecureStorageProvider>();
  static const _kPasswordKey = 'password';
  Future<String?> readPassword() async {
    final base64Password = await _secureStorage.read(_kPasswordKey);
    if (base64Password == null) return null;
    return base64Password;
  }

  Future<void> writePassword(String password) async {
    _secureStorage.write(
      _kPasswordKey,
      await HashService.base64Hash(password),
    );
  }

  Future<bool> isPasswordSet() {
    return _secureStorage.isSet(_kPasswordKey);
  }
}
