import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

final DatabaseFactory sqfliteDatabaseFactory = () {
  throw UnsupportedError('Platform  is not supported by Floor.');
}();

extension DatabaseFactoryExtension on DatabaseFactory {
  Future<String> getDatabasePath(final String name) => throw UnsupportedError('Platform  is not supported by Floor.');
}
