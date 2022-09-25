import 'package:freezed_annotation/freezed_annotation.dart';

part 'group_actor_state.freezed.dart';

@freezed
class GroupActorState with _$GroupActorState {
  const factory GroupActorState.idle() = _Idle;

  const factory GroupActorState.busy() = _Busy;

  const factory GroupActorState.groupCreateSuccess(String message) = _GroupCreateSuccess;
  const factory GroupActorState.groupCreateError(String message) = _GroupCreateError;

  const factory GroupActorState.groupDeleteSuccess(String message) = _GroupDeleteSuccess;
  const factory GroupActorState.groupDeleteError(String message) = _GroupDeleteError;
}
