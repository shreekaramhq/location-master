import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:locationmaster/modules/location/domain/i_location_repository.dart';
import 'package:locationmaster/modules/location/infrastructure/location_model_dto.dart';

import 'location_actor_state.dart';

class LocationActorNotifier extends StateNotifier<LocationActorState> {
  final ILocationRepository _locationRepository;

  LocationActorNotifier(this._locationRepository) : super(const LocationActorState.idle());

  createLocation(CreateLocationPayload payload) async {
    try {
      state = const LocationActorState.busy();

      await _locationRepository.createLocation(payload);

      state = const LocationActorState.locationCreateSuccess("Location created successfily");
    } catch (e) {
      state = const LocationActorState.locationCreateError("Error creating locarion");
    }
  }

  deleteLocation(String id) async {
    try {
      state = const LocationActorState.busy();

      await _locationRepository.deleteLocation(id);

      state = const LocationActorState.locationDeleteSuccess("Location deleted successfily");
    } catch (e) {
      state = const LocationActorState.locationDeleteError("Error deleting locarion");
    }
  }

  updateLocation(UpdateLocationPayload payload) async {
    try {
      state = const LocationActorState.busy();
      await _locationRepository.updateLocation(payload);

      state = const LocationActorState.locationCreateSuccess("Location update success");
    } catch (e) {
      state = const LocationActorState.locationDeleteError("Error updating locarion");
    }
  }
}
