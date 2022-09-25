import 'dart:async';

import 'package:locationmaster/modules/group/domain/group_model.dart';
import 'package:locationmaster/modules/group/domain/i_group_repository.dart';
import 'package:locationmaster/modules/group/infrastructure/group_model_dto.dart';
import 'package:locationmaster/shared/domain/stream_result.dart';
import 'package:locationmaster/shared/infrastructure/database/sql_database.dart';
import 'package:locationmaster/shared/infrastructure/database/queries.dart';

dispose(GroupRepository instance) {
  instance.dispose();
}

class GroupRepository implements IGroupRepository {
  final SqlDatabase _sqlDatabase;

  GroupRepository(this._sqlDatabase);

  final StreamController<StreamResult<GroupModel>> _groupStreamController =
      StreamController.broadcast();

  @override
  Stream<StreamResult<GroupModel>> get groupStream => _groupStreamController.stream;

  @override
  Future<GroupModel> createGroup(GroupModel groupModel) async {
    final dto = GroupModelDto.fromDomain(groupModel);

    final _db = await _sqlDatabase.database;

    final batch = _db.batch();

    batch.insert(GROUPS_TABLE, dto.toMap());

    batch.rawQuery(selectGroupByIdQuery, [dto.id]);

    final results = await batch.commit();

    final groups = results.last as List<Map<String, Object?>>;

    final group = groups.map((e) => GroupModelDto.fromMap(e).toDomain()).toList().last;

    _groupStreamController.sink.add(StreamResult.created(group));

    return group;
  }

  @override
  Future<bool> deleteGroup(String groupId) async {
    try {
      final _db = await _sqlDatabase.database;

      await _db.delete(
        GROUPS_TABLE,
        where: 'id = ?',
        whereArgs: [groupId],
      );

      _groupStreamController.sink.add(StreamResult.deleted(groupId));

      return true;
    } catch (e) {
      print(e);

      return false;
    }
  }

  @override
  Future<List<GroupModel>> getAllGroups() async {
    final _db = await _sqlDatabase.database;

    final result = await _db.rawQuery(selectGroupsQuery);

    final groups = result.map((e) => GroupModelDto.fromMap(e).toDomain()).toList();

    return groups;
  }

  @override
  dispose() async {
    await _groupStreamController.close();
  }

  @override
  Future<GroupModel> updateGroup(
      {required String groupId, required String name, String? description}) async {
    final payload = UpdateGroupPayload(
      name: name,
      updatedAt: DateTime.now().toIso8601String(),
      description: description,
    );

    final _db = await _sqlDatabase.database;

    final batch = _db.batch();

    batch.update(GROUPS_TABLE, payload.toMap(), where: "id=?", whereArgs: [groupId]);

    batch.rawQuery(selectGroupByIdQuery, [groupId]);

    final results = await batch.commit();

    final groups = results.last as List<Map<String, Object?>>;

    final group = groups.map((e) => GroupModelDto.fromMap(e).toDomain()).toList().last;

    _groupStreamController.sink.add(StreamResult.updated(group));

    return group;
  }
}
