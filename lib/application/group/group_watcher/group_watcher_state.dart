part of 'group_watcher_bloc.dart';

@freezed
class GroupWatcherState with _$GroupWatcherState {
  const factory GroupWatcherState.initial() = _Initial;
  const factory GroupWatcherState.loading() = GroupsLoading;
  const factory GroupWatcherState.empty() = GroupsEmpty;
  const factory GroupWatcherState.groupsLoaded(List<GroupModel> groups) =
      GroupsLoaded;
  const factory GroupWatcherState.error(String message) = GroupsError;
}
