import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:locationmaster/location_master.dart';
import 'package:locationmaster/providers.dart';
import 'package:locationmaster/shared/infrastructure/database/sql_database.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  /// NOTE: we create the riverpod container so that we can
  /// access the db provider to initialise it
  final container = ProviderContainer();

  await container.read(sqlDatabaseProvider).initialiseDatabase(onCreateDatabase);

  await container.read(preferenceProvider.notifier).load();

  runZonedGuarded(
    () {
      runApp(
        UncontrolledProviderScope(
          container: container,
          child: LocationMaster(),
        ),
      );
    },
    (o, s) {
      if (kDebugMode) {
        print(o);
      }
    },
  );
}
