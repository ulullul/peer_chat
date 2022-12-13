import 'package:cryptography/cryptography.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:peer_chat/app/data/entities/user.entity.dart';
import 'package:peer_chat/app/services/crypto.service.dart';
import 'package:peer_chat/app/services/key.service.dart';

void main() {
  late final SecretKey sharedKey;
  const kOriginalMessage = 'Hello Bob, i`m Alice';

  setUpAll(() async {
    final keyService = KeyService();
    final aliceKey = await keyService.generateNewKeyPairFromUserSeed(
        const User(id:'1', fullName: 'u',username: 'u', password: 'p')..getSeed());
    final bobKey = await keyService.generateNewKeyPairFromUserSeed(
        const User(id: '2', fullName: 'u', username: 'p', password: 'u')..getSeed());

    final bobPublicKey = await bobKey.extractPublicKey();

    sharedKey = await keyService.getSharedKey(
      keyPair: aliceKey,
      remotePublicKey: bobPublicKey,
    );
  });

  test('Decrypted message is equals to original message', () async {
    final encryptedMessage = await CryptoService.base64Encrypt(sharedKey, kOriginalMessage);
    final decryptedMessage = await CryptoService.base64Decrypt(sharedKey, encryptedMessage);
    expect(decryptedMessage == kOriginalMessage, true);
  });
}
