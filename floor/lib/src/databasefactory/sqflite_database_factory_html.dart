
import 'package:flutter/foundation.dart';
import 'package:sqflite/sqflite.dart';
import 'package:sqflite_common/sqlite_api.dart';
import 'package:sqflite_web/sqflite_web.dart';


// infers factory as nullable without explicit type definition
final DatabaseFactory sqfliteDatabaseFactory = () {
  if(kIsWeb){
    return databaseFactoryWeb;
  }
  else {
    throw UnsupportedError(
      'Platform is not supported by Floor.',
    );
  }
}();

extension DatabaseFactoryExtension on DatabaseFactory {
  Future<String> getDatabasePath(final String name) async {
    return inMemoryDatabasePath;
  }
}
