part of 'location_actor_bloc.dart';

@freezed
class LocationActorEvent with _$LocationActorEvent {
  const factory LocationActorEvent.saveLocation(LocationModel locationModel) =
      _SaveLocation;

  const factory LocationActorEvent.deleteLocation(String locationId) =
      _DeleteLocation;
}
