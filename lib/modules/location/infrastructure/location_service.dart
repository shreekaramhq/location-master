import '../domain/i_location_repository.dart';
import '../domain/location_model.dart';

class LocationService {
  final ILocationRepository _locationRepository;

  LocationService(this._locationRepository);

  Future<List<LocationModel>> getLocations(String groupId) async {
    return _locationRepository.getLocations(groupId);
  }

  Future<List<LocationModel>> getAllLocations() async {
    return _locationRepository.getAllLocations();
  }

  Future<void> addLocation(LocationModel locationModel) async {
    // return _locationRepository.createLocation(locationModel);
  }

  Future<void> deleteLocation(String locationId) async {
    return _locationRepository.deleteLocation(locationId);
  }
}
