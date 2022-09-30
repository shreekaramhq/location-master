import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:locationmaster/modules/location/domain/location_model.dart';

import '../domain/i_location_repository.dart';
import 'location_watcher_state.dart';

class LocationWatcherNotifier extends StateNotifier<LocationWatcherState> {
  final ILocationRepository _locationRepository;

  LocationWatcherNotifier(this._locationRepository) : super(const LocationWatcherState.initial()) {
    _locationRepository.locationStream.listen((event) {
      event.mapOrNull(
        created: (data) {
          final _location = data.value;

          state = state.maybeWhen(
            locationsLoaded: (groups) => LocationWatcherState.locationsLoaded([
              _location,
              ...groups,
            ]),
            orElse: () => LocationWatcherState.locationsLoaded([_location]),
          );
        },
        deleted: (data) {
          state = state.maybeWhen(
            locationsLoaded: (groups) {
              final _locations = groups.where((element) => element.id != data.value).toList();

              if (_locations.isEmpty) {
                return const LocationWatcherState.empty();
              }

              return LocationWatcherState.locationsLoaded(_locations);
            },
            orElse: () => const LocationWatcherState.empty(),
          );
        },
        updated: (_location) {
          final location = _location.value as LocationModel;

          state = state.maybeWhen(
            locationsLoaded: (locations) {
              return LocationWatcherState.locationsLoaded(
                locations.map((g) => g.id == location.id ? location : g).toList(),
              );
            },
            orElse: () => LocationWatcherState.locationsLoaded([location]),
          );
        },
      );
    });
  }

  getLocations(String groupId) async {
    state = const LocationWatcherState.initial();

    final locations = await _locationRepository.getLocations(groupId);

    if (locations.isEmpty) {
      state = const LocationWatcherState.empty();
      return;
    }

    state = LocationWatcherState.locationsLoaded(locations);
  }
}
