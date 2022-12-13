import 'dart:convert';

import 'package:cryptography/cryptography.dart';

class HashService {
  static final _hashAlg = Sha256();

  static Future<String> base64Hash(String value) async {
    final hashed = await _hashAlg.hash(value.codeUnits);
    return base64Encode(hashed.bytes);
  }

  static Future<List<int>> hash(List<int> value) async {
    final hashed = await _hashAlg.hash(value);
    return hashed.bytes;
  }
}