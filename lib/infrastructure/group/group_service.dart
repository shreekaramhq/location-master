import 'package:injectable/injectable.dart';
import 'package:locationmaster/domain/group/group_model.dart';
import 'package:locationmaster/domain/group/i_group_repository.dart';

@Injectable()
class GroupService {
  final IGroupRepository _groupRepository;

  GroupService(this._groupRepository);

  Stream<GroupModel> get groupStream => _groupRepository.groupStream;

  Future<GroupModel> createGroup(GroupModel groupModel) async {
    return _groupRepository.addGroup(groupModel);
  }

  Future<bool> deleteGroup(String groupId) async {
    return _groupRepository.deleteGroup(groupId);
  }

  Future<List<GroupModel>> getAllGroups() {
    return _groupRepository.getAllGroups();
  }

  Future<void> dispose() async {
    await _groupRepository.dispose();
  }
}
