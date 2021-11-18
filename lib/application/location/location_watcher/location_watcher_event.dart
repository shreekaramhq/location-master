part of 'location_watcher_bloc.dart';

@freezed
class LocationWatcherEvent with _$LocationWatcherEvent {
  const factory LocationWatcherEvent.getLocations() = _GetLocations;
}
