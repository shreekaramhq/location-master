import 'package:locationmaster/modules/group/domain/group_model.dart';
import 'package:locationmaster/shared/domain/stream_result.dart';

abstract class IGroupRepository {
  Stream<StreamResult<GroupModel>> get groupStream;

  Future<List<GroupModel>> getAllGroups();

  Future<GroupModel> createGroup(GroupModel groupModel);
  Future<GroupModel> updateGroup({
    required String groupId,
    required String name,
    String? description,
  });

  Future<bool> deleteGroup(String groupId);

  Future<void> dispose();
}
