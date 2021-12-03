import 'package:locationmaster/domain/group/group_model.dart';

abstract class IGroupRepository {
  Stream<GroupModel> get groupStream;

  Future<List<GroupModel>> getAllGroups();

  Future<bool> deleteGroup(String groupId);

  Future<GroupModel> addGroup(GroupModel groupModel);

  Future<void> dispose();
}
