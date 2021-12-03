part of 'group_actor_bloc.dart';

@freezed
class GroupActorEvent with _$GroupActorEvent {
  const factory GroupActorEvent.started() = _Started;

  const factory GroupActorEvent.createGroup(GroupModel group) = _CreateGroup;

  const factory GroupActorEvent.deleteGroup(String groupId) = _DeleteGroup;
}
