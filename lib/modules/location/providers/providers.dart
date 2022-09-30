import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:locationmaster/modules/location/domain/i_location_repository.dart';
import 'package:locationmaster/modules/location/providers/location_actor_notifier.dart';
import 'package:locationmaster/modules/location/providers/location_actor_state.dart';
import 'package:locationmaster/shared/infrastructure/database/providers.dart';

import '../infrastructure/location_repository.dart';
import 'location_watcher_notifier.dart';
import 'location_watcher_state.dart';

final locationRepositoryProvider =
    Provider<ILocationRepository>((ref) => LocationRepository(ref.watch(sqlDatabaseProvider)));

final locationWatcherProvider =
    StateNotifierProvider<LocationWatcherNotifier, LocationWatcherState>((ref) {
  return LocationWatcherNotifier(ref.watch(locationRepositoryProvider));
});

final locationActorProvider =
    StateNotifierProvider<LocationActorNotifier, LocationActorState>((ref) {
  return LocationActorNotifier(ref.watch(locationRepositoryProvider));
});
