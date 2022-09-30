import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:locationmaster/modules/group/domain/group_model.dart';
import 'package:locationmaster/modules/group/domain/i_group_repository.dart';
import 'package:locationmaster/modules/group/providers/group_watcher_state.dart';
import 'package:locationmaster/modules/group/providers/providers.dart';
import 'package:locationmaster/shared/infrastructure/database/providers.dart';
import 'package:locationmaster/shared/infrastructure/database/sql_database.dart';
import 'package:mockito/mockito.dart';

import '../../../shared/infrastructure/database/sqldatabase_test.mocks.dart';
import "../infrastructure/group_repository_test.mocks.dart";

void main() {
  late SqlDatabase mockDatabase;
  late IGroupRepository mockGroupRespository;

  setUp(() {
    mockDatabase = MockSqlDatabase();
    mockGroupRespository = MockGroupRepository();
  });

  test('intial group list notifier state', () async {
    final group = GroupModel.empty();

    when(mockGroupRespository.getAllGroups()).thenAnswer((_) => Future.value([group]));

    final container = ProviderContainer(overrides: [
      sqlDatabaseProvider.overrideWithValue(mockDatabase),
      groupRepositoryProvider.overrideWithValue(mockGroupRespository),
    ]);

    final groups = container.read(groupwatcherProvider);

    expect(groups, const GroupWatcherState.initial());
  });

  test('`getGroups`', () async {
    final group = GroupModel.empty();

    reset(mockGroupRespository);

    when(mockGroupRespository.getAllGroups()).thenAnswer((_) => Future.value([group]));

    final container = ProviderContainer(overrides: [
      sqlDatabaseProvider.overrideWithValue(mockDatabase),
      groupRepositoryProvider.overrideWithValue(mockGroupRespository),
    ]);

    await container.read(groupwatcherProvider.notifier).getGroups();

    verify(mockGroupRespository.getAllGroups());

    final groups = container.read(groupwatcherProvider);

    expect(groups, GroupWatcherState.groupsLoaded([group]));
  });
}
