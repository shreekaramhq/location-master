// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../application/location/location_actor/location_actor_bloc.dart'
    as _i11;
import '../application/location/location_watcher/location_watcher_bloc.dart'
    as _i10;
import '../domain/location/i_gps_repository.dart' as _i3;
import '../domain/location/i_location_repository.dart' as _i7;
import '../infrastructure/database/database.dart' as _i5;
import '../infrastructure/gps/gps_repository.dart' as _i4;
import '../infrastructure/gps/gps_service.dart' as _i6;
import '../infrastructure/location/location_repository.dart' as _i8;
import '../infrastructure/location/location_service.dart'
    as _i9; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.lazySingleton<_i3.IGpsRepository>(() => _i4.GpsRepository());
  gh.lazySingleton<_i5.SqlDatabase>(() => _i5.SqlDatabase());
  gh.factory<_i6.GpsService>(() => _i6.GpsService(get<_i3.IGpsRepository>()));
  gh.lazySingleton<_i7.ILocationRepository>(
      () => _i8.LocationRepository(get<_i5.SqlDatabase>()));
  gh.factory<_i9.LocationService>(
      () => _i9.LocationService(get<_i7.ILocationRepository>()));
  gh.factory<_i10.LocationWatcherBloc>(
      () => _i10.LocationWatcherBloc(get<_i9.LocationService>()));
  gh.factory<_i11.LocationActorBloc>(
      () => _i11.LocationActorBloc(get<_i9.LocationService>()));
  return get;
}
