// ignore_for_file: avoid_print

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:locationmaster/domain/location/location_model.dart';
import 'package:locationmaster/infrastructure/location/location_service.dart';

part 'location_watcher_event.dart';
part 'location_watcher_state.dart';
part 'location_watcher_bloc.freezed.dart';

@Injectable()
class LocationWatcherBloc
    extends Bloc<LocationWatcherEvent, LocationWatcherState> {
  final LocationService _locationService;

  LocationWatcherBloc(this._locationService)
      : super(const LocationWatcherState.initial()) {
    on<_GetLocations>(_getLocations);
  }

  _getLocations(event, emit) async {
    try {
      final locations = await _locationService.getAllLocations();

      print(locations);

      // when the locations data is empty just return empty state rather than location state with empty data
      if (locations.isEmpty) {
        emit(const LocationWatcherState.empty());

        return;
      }

      emit(LocationWatcherState.locations(locations));
    } catch (e) {
      print(e);
    }
  }
}
