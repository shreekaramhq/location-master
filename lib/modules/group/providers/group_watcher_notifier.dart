import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:locationmaster/modules/group/domain/group_model.dart';
import 'package:locationmaster/modules/group/domain/i_group_repository.dart';

import './group_watcher_state.dart';

class GroupWatcherNotifier extends StateNotifier<GroupWatcherState> {
  final IGroupRepository _groupRepository;

  GroupWatcherNotifier(this._groupRepository) : super(const GroupWatcherState.initial()) {
    _groupRepository.groupStream.listen((event) {
      event.map(
        created: (_group) {
          state = state.maybeWhen(
            groupsLoaded: (groups) => GroupWatcherState.groupsLoaded([
              _group.value,
              ...groups,
            ]),
            orElse: () => GroupWatcherState.groupsLoaded([_group.value]),
          );
        },
        updated: (_group) {
          final group = _group.value as GroupModel;

          state = state.maybeWhen(
            groupsLoaded: (groups) {
              return GroupWatcherState.groupsLoaded(
                  groups.map((g) => g.id == group.id ? group : g).toList());
            },
            orElse: () => GroupWatcherState.groupsLoaded([_group.value]),
          );
        },
        error: (error) {},
        deleted: (data) {
          state = state.maybeWhen(
            groupsLoaded: (groups) {
              final _groups = groups.where((element) => element.id != data.value).toList();

              if (_groups.isEmpty) {
                return const GroupWatcherState.empty();
              }

              return GroupWatcherState.groupsLoaded(_groups);
            },
            orElse: () => const GroupWatcherState.empty(),
          );
        },
      );
    });
  }

  getGroups({bool? silently}) async {
    if (silently == false) {
      state = const GroupWatcherState.loading();
    }

    final response = await _groupRepository.getAllGroups();

    if (response.isEmpty) {
      state = const GroupWatcherState.empty();

      return;
    }

    state = GroupWatcherState.groupsLoaded(response.toList());
  }
}
