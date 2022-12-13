import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class SecureStorageProvider {
  late final FlutterSecureStorage _storage;
  SecureStorageProvider init() {
    _storage = const FlutterSecureStorage();
    return this;
  }

  Future<void> write(String key, String data) {
    return _storage.write(key: key, value: data);
  }
  
  Future<String?> read(String key) {
    return _storage.read(key: key);
  }

  Future<bool> isSet(String key) async {
    return await _storage.containsKey(key: key);
  }
}
