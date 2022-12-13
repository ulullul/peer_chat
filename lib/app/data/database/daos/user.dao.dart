import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:peer_chat/app/data/database/app_database.dart';
import 'package:peer_chat/app/data/entities/user.entity.dart';
import 'package:sembast/sembast.dart';

class UserDao {
  static const String kUsersDB = 'users';

  final _usersDB = intMapStoreFactory.store(kUsersDB);

  Future<Database> get _db async {
    return Get.find<Database>();
  }

  Future insert(User user) async {
    await _usersDB.add(await _db, user.toJson());
  }

  Future<List<User>> getAll() async {
    // Finder object can also sort data.
    /*final finder = Finder(sortOrders: [
      SortOrder('id'),
    ]);*/

    final recordSnapshots = await _usersDB.find(
      await _db,
    );

    // Making a List<Fruit> out of List<RecordSnapshot>
    return recordSnapshots.map((snapshot) {
      return User.fromJson(snapshot.value);
    } ).toList();/*recordSnapshots.map((snapshot) {
      final fruit = Fruit.fromMap(snapshot.value);
      // An ID is a key of a record from the database.
      fruit.id = snapshot.key;
      return fruit;
    }).toList();*/
  }
}