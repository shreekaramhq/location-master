import 'package:locationmaster/domain/location/location_model.dart';

abstract class ILocationRepository {
  Future<List<LocationModel>> getAllLocations();

  Future<void> deleteLocation(String locationId);

  Future<void> addLocation(LocationModel location);
}
