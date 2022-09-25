import 'package:geolocator/geolocator.dart';

abstract class IGpsRepository {
  Future<bool> get isServiceEnabled;

  Future<LocationPermission> get getPermissionStatus;

  Future<Position> getCurrentLocation();

  Future<LocationPermission> requestPermission();

  Future<bool> openLocationSettings();

  Future<bool> openAppSettings();
}
