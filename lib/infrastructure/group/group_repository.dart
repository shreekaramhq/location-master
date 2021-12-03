import 'dart:async';

import 'package:injectable/injectable.dart';
import 'package:locationmaster/domain/group/group_model.dart';
import 'package:locationmaster/domain/group/i_group_repository.dart';
import 'package:locationmaster/infrastructure/database/database.dart';
import 'package:locationmaster/infrastructure/database/queries.dart';
import 'package:locationmaster/infrastructure/group/group_model_dto.dart';

@LazySingleton(as: IGroupRepository)
class GroupRepository implements IGroupRepository {
  final SqlDatabase _sqlDatabase;

  GroupRepository(this._sqlDatabase);

  final StreamController<GroupModel> _groupStreamController =
      StreamController.broadcast();

  @override
  Stream<GroupModel> get groupStream => _groupStreamController.stream;

  @override
  Future<GroupModel> addGroup(GroupModel groupModel) async {
    final dto = GroupModelDto.fromDomain(groupModel);

    final batch = _sqlDatabase.instance.batch();

    batch.insert("groups", dto.toMap());

    batch.rawQuery(selectGroupByIdQuery, [dto.id]);

    final results = await batch.commit();

    final groups = results.last as List<Map<String, Object?>>;

    final group =
        groups.map((e) => GroupModelDto.fromMap(e).toDomain()).toList().last;

    _groupStreamController.sink.add(group);

    return group;
  }

  @override
  Future<bool> deleteGroup(String groupId) async {
    try {
      await _sqlDatabase.instance.delete(
        GROUPS_TABLE,
        where: 'id = ?',
        whereArgs: [groupId],
      );

      return true;
    } catch (e) {
      print(e);

      return false;
    }
  }

  @override
  Future<List<GroupModel>> getAllGroups() async {
    final result = await _sqlDatabase.instance.rawQuery(
      selectGroupsQuery,
    );

    return result.map((e) => GroupModelDto.fromMap(e).toDomain()).toList();
  }

  @override
  dispose() async {
    await _groupStreamController.close();
  }
}
