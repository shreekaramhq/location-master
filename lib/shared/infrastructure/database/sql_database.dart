import 'dart:async';

import 'package:locationmaster/modules/group/domain/group_model.dart';
import 'package:locationmaster/modules/group/infrastructure/group_model_dto.dart';
import 'package:sqflite/sqflite.dart';

import 'schema.dart';

// ignore: constant_identifier_names
const LOCATION_TABLE = "location";

// ignore: constant_identifier_names
const GROUPS_TABLE = "groups";

Future onCreateDatabase(Transaction txn) async {
  return txn.insert(
      GROUPS_TABLE, GroupModelDto.fromDomain(GroupModel.empty().copyWith(name: "Inbox")).toMap());
}

class SqlDatabase {
  static final _instance = SqlDatabase._();

  final Completer<Database> _dbOpenCompleter = Completer();

  static SqlDatabase get instance => _instance;

  static const String _dbPath = "location_master.db";

  static const int _version = 1;

  SqlDatabase._();

  // Database object accessor
  Future<Database> get database async {
    return _dbOpenCompleter.future;
  }

  initialiseDatabase(Future Function(Transaction txn) onCreate) async {
    final db = await openDatabase(
      _dbPath,
      version: _version,
      onCreate: (Database db, int version) async {
        await db.transaction((txn) async {
          await txn.execute(createGroupsTable);
          await txn.execute(createLocationTable);
          await onCreate(txn);
        });
      },
    );

    // Any code awaiting the Completer's future will now start executing
    _dbOpenCompleter.complete(db);
  }
}
