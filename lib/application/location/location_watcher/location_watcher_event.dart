part of 'location_watcher_bloc.dart';

@freezed
class LocationWatcherEvent with _$LocationWatcherEvent {
  const factory LocationWatcherEvent.getLocation(String groupId) = _GetLocation;
  const factory LocationWatcherEvent.getLocations() = _GetLocations;
}
