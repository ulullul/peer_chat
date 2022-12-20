import 'dart:convert';
import 'dart:typed_data';

import 'package:cryptography/cryptography.dart';

class CryptoService {
  const CryptoService._();
  static final kAlgorithm = Xchacha20.poly1305Aead();

  static const kNonceLength = 24, kMacLength = 16;

  static Future<Uint8List> encryptConcatenation(
      SecretKey secretKey, String plainText) async {
    final encrypt = (await kAlgorithm.encrypt(plainText.codeUnits, secretKey: secretKey,))
        .concatenation();
    return encrypt;
  }

  static Future<SecretBox> encrypt(
      SecretKey secretKey, String plainText) async {
    final encrypt = (await kAlgorithm.encrypt(plainText.codeUnits, secretKey: secretKey,));
    return encrypt;
  }

  static Future<String> base64Encrypt(
      SecretKey secretKey, String plainText) async {
    return base64Encode(await encryptConcatenation(secretKey, plainText));
  }

  static Future<Uint8List> decrypt(SecretKey secretKey, Uint8List box) async {
    final decrypted = await kAlgorithm.decrypt(
      SecretBox.fromConcatenation(
        box,
        nonceLength: kNonceLength,
        macLength: kMacLength,
      ),
      secretKey: secretKey,
    );

    return Uint8List.fromList(decrypted);
  }

  static Future<String> base64Decrypt(
    SecretKey secretKey,
    String base64SecretBox,
  ) async {
    final decrypted = await decrypt(secretKey, base64Decode(base64SecretBox));
    return utf8.decode(decrypted);
  }
}
