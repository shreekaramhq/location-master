import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:locationmaster/domain/location/location_model.dart';
import 'package:locationmaster/infrastructure/location/location_service.dart';

part 'location_actor_event.dart';
part 'location_actor_state.dart';
part 'location_actor_bloc.freezed.dart';

@Injectable()
class LocationActorBloc extends Bloc<LocationActorEvent, LocationActorState> {
  final LocationService _locationService;

  LocationActorBloc(this._locationService) : super(const Initial()) {
    on<_SaveLocation>(_saveLocation);

    on<_DeleteLocation>(_deleteLocation);
  }

  _saveLocation(_SaveLocation event, emit) async {
    emit(const LocationActorState.saving());

    try {
      await _locationService.addLocation(event.locationModel);

      emit(const LocationActorState.initial());
    } catch (e) {
      print(e);

      emit(LocationActorState.error(e.toString()));
    }
  }

  _deleteLocation(_DeleteLocation event, emit) async {
    emit(const LocationActorState.deleting());

    try {
      await _locationService.deleteLocation(event.locationId);

      emit(const LocationActorState.initial());
    } catch (e) {
      emit(LocationActorState.error(e.toString()));
    }
  }
}
