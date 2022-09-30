import 'package:freezed_annotation/freezed_annotation.dart';

part 'location_actor_state.freezed.dart';

@freezed
class LocationActorState with _$LocationActorState {
  const factory LocationActorState.idle() = _Idle;

  const factory LocationActorState.busy() = _Busy;

  const factory LocationActorState.locationCreateSuccess(String message) = _LocationCreateSuccess;
  const factory LocationActorState.locationCreateError(String message) = _LocationCreateError;

  const factory LocationActorState.locationDeleteSuccess(String message) = _LocationDeleteSuccess;
  const factory LocationActorState.locationDeleteError(String message) = _LocationDeleteError;
}
