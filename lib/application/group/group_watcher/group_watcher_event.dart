part of 'group_watcher_bloc.dart';

@freezed
class GroupWatcherEvent with _$GroupWatcherEvent {
  const factory GroupWatcherEvent.getGroups() = _GetGroups;

  const factory GroupWatcherEvent.addGroup(GroupModel groupModel) = _AddGroup;
}
