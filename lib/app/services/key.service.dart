import 'dart:convert';

import 'package:cryptography/cryptography.dart';
import 'package:peer_chat/app/data/entities/user.entity.dart';
import 'package:peer_chat/app/services/hash.service.dart';

class KeyService {
  final _algorithm = X25519();

  Future<SimpleKeyPair> generateNewKeyPair() async {
    return await _algorithm.newKeyPair();
  }

  Future<SimpleKeyPair> generateNewKeyPairFromUserSeed(User user) async {
    return await _algorithm.newKeyPairFromSeed(
      await HashService.hash(
        user.getSeed(),
      ),
    );
  }

  Future<PublicKey> extractPublicKey(SimpleKeyPair pair) async {
    return await pair.extractPublicKey();
  }

  Future<SecretKey> getSharedKey({
    required KeyPair keyPair,
    required PublicKey remotePublicKey,
  }) async {
    return await _algorithm.sharedSecretKey(
        keyPair: keyPair, remotePublicKey: remotePublicKey);
  }
}
