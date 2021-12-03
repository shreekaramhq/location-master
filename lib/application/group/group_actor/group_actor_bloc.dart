import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:locationmaster/domain/group/group_model.dart';
import 'package:locationmaster/infrastructure/group/group_service.dart';

part 'group_actor_event.dart';
part 'group_actor_state.dart';
part 'group_actor_bloc.freezed.dart';

@Injectable()
class GroupActorBloc extends Bloc<GroupActorEvent, GroupActorState> {
  final GroupService _groupService;

  GroupActorBloc(this._groupService) : super(const _Initial()) {
    on<_CreateGroup>(_onCreateGroup);
    on<_DeleteGroup>(_onDeleteGroup);
  }

  _onCreateGroup(_CreateGroup event, emit) async {
    emit(const GroupActorState.loading());

    try {
      final result = await _groupService.createGroup(event.group);

      // print(result);

      emit(const _Initial());
    } catch (e) {
      print("error: $e");
    }
  }

  _onDeleteGroup(_DeleteGroup event, emit) async {
    emit(const GroupActorState.loading());

    try {
      final result = await _groupService.deleteGroup(event.groupId);

      emit(const _Initial());
    } catch (e) {
      print(e);
    }
  }
}
