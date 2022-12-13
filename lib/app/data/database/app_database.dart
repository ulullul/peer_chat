import 'dart:async';

import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:peer_chat/app/data/secure_storage/password_storage.dart';
import 'package:sembast/sembast.dart';
import 'package:sembast/sembast_io.dart';

import 'encrypt_codec.dart';

class AppDatabase {

  // Singleton instance
  static final AppDatabase _singleton = AppDatabase._();

  // Singleton accessor
  static AppDatabase get instance => _singleton;

  // Completer is used for transforming synchronous code into asynchronous code.
  Completer<Database>? _dbOpenCompleter;

  // A private constructor. Allows us to create instances of AppDatabase
  // only from within the AppDatabase class itself.
  AppDatabase._();

  Database? _database;

  // Database object accessor
  Future<Database> get database async {
    // If completer is null, AppDatabaseClass is newly instantiated, so database is not yet opened
    if (_dbOpenCompleter == null) {
      _dbOpenCompleter = Completer();
      // Calling _openDatabase will also complete the completer with database instance
      _openDatabase();
    }
    // If the database is already opened, awaiting the future will happen instantly.
    // Otherwise, awaiting the returned future will take some time - until complete() is called
    // on the Completer in _openDatabase() below.
    return _dbOpenCompleter!.future;
  }

  Future _openDatabase() async {
    final passwordStorage = Get.find<PasswordStorage>();

    var codec = getEncryptSembastCodec(password: (await passwordStorage.readPassword())!);
    // Get a platform-specific directory where persistent app data can be stored
    final appDocumentDir = await getApplicationDocumentsDirectory();
    // Path with the form: /platform-specific-directory/chat.db
    final dbPath = join(appDocumentDir.path, 'chat.db');

    final database = await databaseFactoryIo.openDatabase(dbPath, codec: codec);
    // Any code awaiting the Completer's future will now start executing
    _dbOpenCompleter!.complete(database);
  }

  Future<Database> create(String password) async {
    _dbOpenCompleter ??= Completer();
    var codec = getEncryptSembastCodec(password: password);
    // Get a platform-specific directory where persistent app data can be stored
    final appDocumentDir = await getApplicationDocumentsDirectory();
    // Path with the form: /platform-specific-directory/chat.db
    final dbPath = join(appDocumentDir.path, 'chat.db');

    final database = await databaseFactoryIo.openDatabase(dbPath, codec: codec);
    // Any code awaiting the Completer's future will now start executing
    _dbOpenCompleter!.complete(database);
    return _dbOpenCompleter!.future;
  }
}