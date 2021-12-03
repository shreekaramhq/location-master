import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:locationmaster/application/group/group_actor/group_actor_bloc.dart';
import 'package:locationmaster/application/group/group_watcher/group_watcher_bloc.dart';
import 'package:locationmaster/application/location/location_actor/location_actor_bloc.dart';
import 'package:locationmaster/config/injector.dart';
import 'package:locationmaster/infrastructure/database/database.dart';
import 'package:locationmaster/location_master.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  configureInjection(Environment.prod);

  await getIt<SqlDatabase>().initialiseDatabase();

  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => getIt<GroupActorBloc>()),
        BlocProvider(
            create: (context) => getIt<GroupWatcherBloc>()
              ..add(const GroupWatcherEvent.getGroups())),
        BlocProvider(create: (context) => getIt<LocationActorBloc>()),
      ],
      child: const LocationMaster(),
    ),
  );
}
