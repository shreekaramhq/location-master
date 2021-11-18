part of 'location_watcher_bloc.dart';

@freezed
class LocationWatcherState with _$LocationWatcherState {
  const factory LocationWatcherState.initial() = InitialLocations;
  const factory LocationWatcherState.loading() = LocationsLoading;
  const factory LocationWatcherState.empty() = LocationsEmpty;
  const factory LocationWatcherState.locations(List<LocationModel> locations) =
      Locations;
  const factory LocationWatcherState.error() = LocationsError;
}
