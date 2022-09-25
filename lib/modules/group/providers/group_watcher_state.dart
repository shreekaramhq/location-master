import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:locationmaster/modules/group/domain/group_model.dart';

part 'group_watcher_state.freezed.dart';

@freezed
class GroupWatcherState with _$GroupWatcherState {
  const factory GroupWatcherState.initial() = _Initial;
  const factory GroupWatcherState.loading() = GroupsLoading;
  const factory GroupWatcherState.empty() = GroupsEmpty;
  const factory GroupWatcherState.groupsLoaded(List<GroupModel> groups) = GroupsLoaded;
  const factory GroupWatcherState.error(String message) = GroupsError;
}
