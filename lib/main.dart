import 'dart:async';

import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:locationmaster/config/injector.dart';
import 'package:locationmaster/location_master.dart';
import 'package:locationmaster/shared/infrastructure/database/database.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  configureInjection(Environment.prod);

  await getIt<SqlDatabase>().initialiseDatabase();

  runZonedGuarded(
    () {
      runApp(LocationMaster());
    },
    (o, s) {},
  );
}
