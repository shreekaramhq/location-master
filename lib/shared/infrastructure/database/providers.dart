import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:locationmaster/shared/infrastructure/database/sql_database.dart';

final sqlDatabaseProvider = Provider<SqlDatabase>((ref) => SqlDatabase.instance);
