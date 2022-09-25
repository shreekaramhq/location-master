import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:locationmaster/shared/infrastructure/gps/gps_repository.dart';
import 'package:locationmaster/shared/infrastructure/gps/gps_service.dart';
import 'package:locationmaster/shared/infrastructure/gps/i_gps_repository.dart';

final gpsRepositoryProvider = Provider<IGpsRepository>((ref) => GpsRepository());

final gpsServiceProvider = Provider((ref) {
  final _gpsRepository = ref.watch(gpsRepositoryProvider);

  return GpsService(_gpsRepository);
});
