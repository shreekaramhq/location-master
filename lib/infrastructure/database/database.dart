// ignore_for_file: constant_identifier_names

import 'package:injectable/injectable.dart';
import 'package:locationmaster/infrastructure/database/schema.dart';
import 'package:sqflite/sqflite.dart';

const LOCATIONS_TABLE = "locations";

const GROUPS_TABLE = "groups";

@LazySingleton()
class SqlDatabase {
  late Database instance;

  final String dbPath = "location_master.db";

  final int version = 1;

  initialiseDatabase() async {
    instance = await openDatabase(
      dbPath,
      version: version,
      onCreate: (Database db, int version) async {
        await db.transaction((txn) async {
          await txn.execute(createGroupsTable);
          await txn.execute(createLocationsTable);
        });
      },
    );
  }
}
