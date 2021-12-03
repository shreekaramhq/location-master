part of 'group_actor_bloc.dart';

@freezed
class GroupActorState with _$GroupActorState {
  const factory GroupActorState.initial() = _Initial;

  const factory GroupActorState.loading() = GroupLoading;

  const factory GroupActorState.error(String message) = GroupError;

  const factory GroupActorState.deleting() = GroupDeleting;
}
