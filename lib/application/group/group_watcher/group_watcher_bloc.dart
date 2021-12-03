import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:locationmaster/domain/group/group_model.dart';
import 'package:locationmaster/infrastructure/group/group_service.dart';

part 'group_watcher_event.dart';
part 'group_watcher_state.dart';
part 'group_watcher_bloc.freezed.dart';

@Injectable()
class GroupWatcherBloc extends Bloc<GroupWatcherEvent, GroupWatcherState> {
  final GroupService _groupService;

  late final StreamSubscription _streamController;

  GroupWatcherBloc(this._groupService) : super(const _Initial()) {
    _streamController = _groupService.groupStream.listen((group) {
      add(_AddGroup(group));
    });

    on<_GetGroups>(_onGetGroups);

    on<_AddGroup>(_onAddGroup);
  }

  @override
  Future<void> close() async {
    await _streamController.cancel();

    await _groupService.dispose();

    return super.close();
  }

  _onGetGroups(_GetGroups event, emit) async {
    try {
      final groups = await _groupService.getAllGroups();

      if (groups.isEmpty) {
        emit(const GroupWatcherState.empty());
        return;
      }

      emit(GroupWatcherState.groupsLoaded(groups));
    } catch (e) {
      emit(GroupWatcherState.error(e.toString()));
    }
  }

  _onAddGroup(_AddGroup event, emit) async {
    final group = event.groupModel;

    state.maybeWhen(
      groupsLoaded: (groups) {
        emit(GroupWatcherState.groupsLoaded([...groups, group]));
      },
      orElse: () {
        emit(GroupWatcherState.groupsLoaded([group]));
      },
    );
  }
}
