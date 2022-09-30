import 'package:locationmaster/modules/location/infrastructure/location_model_dto.dart';
import 'package:locationmaster/shared/domain/stream_result.dart';

import 'location_model.dart';

abstract class ILocationRepository {
  Stream<StreamResult<LocationModel>> get locationStream;

  Future<List<LocationModel>> getLocations(String groupId);

  Future<List<LocationModel>> getAllLocations();

  Future<void> deleteLocation(String locationId);

  Future<void> createLocation(CreateLocationPayload payload);

  Future<void> updateLocation(UpdateLocationPayload payload);

  Future<void> createLocationPin();
}
