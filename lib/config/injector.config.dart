// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../application/group/group_actor/group_actor_bloc.dart' as _i16;
import '../application/group/group_watcher/group_watcher_bloc.dart' as _i14;
import '../application/location/location_actor/location_actor_bloc.dart'
    as _i15;
import '../application/location/location_watcher/location_watcher_bloc.dart'
    as _i12;
import '../domain/group/i_group_repository.dart' as _i7;
import '../domain/location/i_gps_repository.dart' as _i3;
import '../domain/location/i_location_repository.dart' as _i9;
import '../infrastructure/database/database.dart' as _i5;
import '../infrastructure/gps/gps_repository.dart' as _i4;
import '../infrastructure/gps/gps_service.dart' as _i6;
import '../infrastructure/group/group_repository.dart' as _i8;
import '../infrastructure/group/group_service.dart' as _i13;
import '../infrastructure/location/location_repository.dart' as _i10;
import '../infrastructure/location/location_service.dart'
    as _i11; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.lazySingleton<_i3.IGpsRepository>(() => _i4.GpsRepository());
  gh.lazySingleton<_i5.SqlDatabase>(() => _i5.SqlDatabase());
  gh.factory<_i6.GpsService>(() => _i6.GpsService(get<_i3.IGpsRepository>()));
  gh.lazySingleton<_i7.IGroupRepository>(
      () => _i8.GroupRepository(get<_i5.SqlDatabase>()));
  gh.lazySingleton<_i9.ILocationRepository>(
      () => _i10.LocationRepository(get<_i5.SqlDatabase>()));
  gh.factory<_i11.LocationService>(
      () => _i11.LocationService(get<_i9.ILocationRepository>()));
  gh.factory<_i12.LocationWatcherBloc>(
      () => _i12.LocationWatcherBloc(get<_i11.LocationService>()));
  gh.factory<_i13.GroupService>(
      () => _i13.GroupService(get<_i7.IGroupRepository>()));
  gh.factory<_i14.GroupWatcherBloc>(
      () => _i14.GroupWatcherBloc(get<_i13.GroupService>()));
  gh.factory<_i15.LocationActorBloc>(
      () => _i15.LocationActorBloc(get<_i11.LocationService>()));
  gh.factory<_i16.GroupActorBloc>(
      () => _i16.GroupActorBloc(get<_i13.GroupService>()));
  return get;
}
