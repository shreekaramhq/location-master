import 'package:flutter_test/flutter_test.dart';
import 'package:locationmaster/modules/group/domain/group_model.dart';
import 'package:locationmaster/modules/group/domain/i_group_repository.dart';
import 'package:locationmaster/modules/group/infrastructure/group_repository.dart';
import 'package:locationmaster/shared/infrastructure/database/schema.dart';
import 'package:locationmaster/shared/infrastructure/database/sql_database.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:sqflite/sqlite_api.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart';

import '../../../shared/infrastructure/database/sqldatabase_test.mocks.dart';

class MockDatabase extends Mock implements Database {}

/// NOTE:
/// When testing a module that module should not be mocked only
/// its dependencies should be mocked
@GenerateMocks([GroupRepository])
void main() {
  late SqlDatabase mockDatabase;
  late IGroupRepository groupRepository;

  sqfliteFfiInit();

  setUp(() async {
    mockDatabase = MockSqlDatabase();
    groupRepository = GroupRepository(mockDatabase);

    var db = await databaseFactoryFfi.openDatabase(
      inMemoryDatabasePath,
      options: OpenDatabaseOptions(
        version: 1,
        onCreate: (Database db, int version) async {
          await db.transaction((txn) async {
            await txn.execute(createGroupsTable);
            await txn.execute(createLocationTable);
          });
        },
      ),
    );

    when(mockDatabase.database).thenAnswer((realInvocation) => Future.value(db));
  });

  test('group repository ...', () async {
    final result = GroupModel.empty().copyWith(name: "Anekal");

    final group = await groupRepository.createGroup(result);

    expect(group.name, 'Anekal');
  });

  test('get groups ...', () async {
    final result = GroupModel.empty().copyWith(name: "Anekal");

    final group = await groupRepository.createGroup(result);

    final groups = await groupRepository.getAllGroups();

    expect(groups, [group]);
  });
}
