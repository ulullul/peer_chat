import 'package:cryptography/cryptography.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:peer_chat/app/data/entities/user.entity.dart';

void main() {
  late final User longDataUser, shortDataUser;
  const int kSeedLength = 32;
  final Sha256 kHashAlg = Sha256();

  setUpAll(() {
    shortDataUser = const User(id: '1', fullName:'u', username: 'u', password: 'p');
    longDataUser = const User(
      id: '2',
      fullName: 'u',
      username: 'very_very_long_data_user_name_for_test',
      password: 'very_very_long_data_user_password_for_test1234\$',
    );
  });

  group('Users seed length equals $kSeedLength', () {
    test('Short data user seed length equals $kSeedLength', () async {
      final hash = await kHashAlg.hash(shortDataUser.getSeed());
      expect(hash.bytes.length, kSeedLength);
    });

    test('Long data user seed length equals $kSeedLength', () async {
      final hash = await kHashAlg.hash(longDataUser.getSeed());
      expect(hash.bytes.length, kSeedLength);
    });
  });
}
