import 'package:locationmaster/domain/location/location_model.dart';

abstract class ILocationRepository {
  Future<List<LocationModel>> getLocation(String groupId);

  Future<void> deleteLocation(String locationId);

  Future<void> addLocation(LocationModel location);
}
