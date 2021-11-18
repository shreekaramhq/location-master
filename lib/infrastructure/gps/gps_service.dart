import 'package:geolocator/geolocator.dart';
import 'package:injectable/injectable.dart';
import 'package:locationmaster/domain/location/i_gps_repository.dart';

class LocationAcessDenied implements Exception {
  LocationAcessDenied([String? message]);
}

class LocationAcessDeniedForever implements Exception {
  LocationAcessDeniedForever([String? message]);
}

@Injectable()
class GpsService {
  final IGpsRepository _gpsRepository;

  GpsService(this._gpsRepository);

  checkPermissions() async {
    bool _serviceEnabled = await _gpsRepository.isServiceEnabled;

    if (!_serviceEnabled) {
      throw Exception("Service not enabled");
    }

    LocationPermission _permissionStatus =
        await _gpsRepository.getPermissionStatus;

    if (_permissionStatus == LocationPermission.denied) {
      _permissionStatus = await _gpsRepository.requestPermission();

      if (_permissionStatus == LocationPermission.denied) {
        throw LocationAcessDenied("Location Access is not provided");
      }

      if (_permissionStatus == LocationPermission.deniedForever) {
        throw LocationAcessDeniedForever("Location Access denied forever");
      }
    }

    return true;
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
