import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:locationmaster/modules/location/domain/location_model.dart';

part "location_watcher_state.freezed.dart";

@freezed
class LocationWatcherState with _$LocationWatcherState {
  const factory LocationWatcherState.initial() = _Initial;
  const factory LocationWatcherState.loading() = LocationsLoading;
  const factory LocationWatcherState.empty() = LocationsEmpty;
  const factory LocationWatcherState.locationsLoaded(List<LocationModel> locations) =
      LocationsLoaded;
  const factory LocationWatcherState.error(String message) = LocationsError;
}
