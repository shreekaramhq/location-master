import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:locationmaster/modules/group/domain/group_model.dart';
import 'package:locationmaster/modules/group/domain/i_group_repository.dart';
import 'package:locationmaster/modules/group/providers/group_actor_state.dart';
import 'package:state_notifier/state_notifier.dart';

class GroupActorNotifier extends StateNotifier<GroupActorState> {
  final IGroupRepository _groupRepository;

  GroupActorNotifier(this._groupRepository) : super(const GroupActorState.idle());

  createGroup(GroupModel group) async {
    state = const GroupActorState.busy();
    await _groupRepository.createGroup(group);
    // The group provider can be refreshed/group provider can subscribe to repository to refresh list
    state = const GroupActorState.groupCreateSuccess("Group create success");
  }

  updateGroup(GroupModel group) async {
    state = const GroupActorState.busy();
    await _groupRepository.updateGroup(
      groupId: group.id,
      name: group.name,
      description: group.description,
    );

    state = const GroupActorState.groupCreateSuccess("Group update success");
  }

  deleteGroup(String groupId) async {
    state = const GroupActorState.busy();

    await _groupRepository.deleteGroup(groupId);
    // somehow needs to be notified to the groups provider

    state = const GroupActorState.groupDeleteSuccess("Group delete success");
  }
}
