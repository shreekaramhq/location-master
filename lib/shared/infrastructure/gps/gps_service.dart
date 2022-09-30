import 'package:geolocator/geolocator.dart';

import 'i_gps_repository.dart';

class LocationAcessDenied implements Exception {
  LocationAcessDenied([String? message]);
}

class LocationAcessDeniedForever implements Exception {
  LocationAcessDeniedForever([String? message]);
}

class GpsService {
  final IGpsRepository _gpsRepository;

  GpsService(this._gpsRepository);

  Future<bool> get isServiceEnabled => _gpsRepository.isServiceEnabled;

  Future<LocationPermission> checkPermissions() async {
    return _gpsRepository.getPermissionStatus;
  }

  Future<LocationPermission> requestPermission() async {
    final status = await _gpsRepository.requestPermission();

    return status;
  }

  Future<Position> getLocation() async {
    await checkPermissions();

    final Position _locationData = await _gpsRepository.getCurrentLocation();

    return _locationData;
  }

  Future<bool> openLocationSettings() async {
    return _gpsRepository.openLocationSettings();
  }

  Future<bool> openAppSettings() async {
    return _gpsRepository.openAppSettings();
  }
}
