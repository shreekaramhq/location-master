import 'package:geolocator/geolocator.dart';
import 'package:injectable/injectable.dart';
import 'package:locationmaster/domain/location/i_gps_repository.dart';

@LazySingleton(as: IGpsRepository)
class GpsRepository implements IGpsRepository {
  @override
  Future<bool> get isServiceEnabled => Geolocator.isLocationServiceEnabled();

  @override
  Future<LocationPermission> get getPermissionStatus =>
      Geolocator.checkPermission();

  @override
  Future<Position> getCurrentLocation() async {
    return Geolocator.getCurrentPosition();
  }

  @override
  Future<LocationPermission> requestPermission() async {
    return Geolocator.requestPermission();
  }

  @override
  Future<bool> openLocationSettings() async {
    return Geolocator.openLocationSettings();
  }

  @override
  Future<bool> openAppSettings() async {
    return Geolocator.openAppSettings();
  }
}
