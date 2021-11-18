import 'package:injectable/injectable.dart';
import 'package:locationmaster/domain/location/i_location_repository.dart';
import 'package:locationmaster/domain/location/location_model.dart';

@Injectable()
class LocationService {
  final ILocationRepository _locationRepository;

  LocationService(this._locationRepository);

  Future<List<LocationModel>> getAllLocations() async {
    return _locationRepository.getAllLocations();
  }

  Future<void> addLocation(LocationModel locationModel) async {
    return _locationRepository.addLocation(locationModel);
  }

  Future<void> deleteLocation(String locationId) async {
    return _locationRepository.deleteLocation(locationId);
  }
}
