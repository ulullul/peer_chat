import 'package:collection/collection.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:peer_chat/app/data/entities/user.entity.dart';
import 'package:peer_chat/app/services/key.service.dart';

void main() {
  late User bob, alice;
  late KeyService keyService;

  setUp(() async {
    keyService = KeyService();
    bob = const User(id: '1',fullName: 'Bob', username: 'bob', password: 'bobpassword');
    alice = const User(id: '2',fullName: 'Alice', username: 'alice', password: 'alicepassword');
  });

  test('Shared keys are the same', () async {
    final aliceKey = await keyService.generateNewKeyPairFromUserSeed(alice);
    final bobKey = await keyService.generateNewKeyPairFromUserSeed(bob);

    final alicePublicKey = await aliceKey.extractPublicKey();
    final bobPublicKey = await bobKey.extractPublicKey();

    final aliceSharedKey = await keyService.getSharedKey(
      keyPair: aliceKey,
      remotePublicKey: bobPublicKey,
    );

    final bobSharedKey = await keyService.getSharedKey(
      keyPair: bobKey,
      remotePublicKey: alicePublicKey,
    );

    final aliceSharedKeyBytes = await aliceSharedKey.extractBytes();
    final bobSharedKeyBytes = await bobSharedKey.extractBytes();

    expect(const ListEquality().equals(aliceSharedKeyBytes, bobSharedKeyBytes), true);
  });
}
