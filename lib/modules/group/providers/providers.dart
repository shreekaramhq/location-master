import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:locationmaster/modules/group/domain/i_group_repository.dart';
import 'package:locationmaster/modules/group/infrastructure/group_repository.dart';
import 'package:locationmaster/shared/infrastructure/database/providers.dart';

import 'group_actor_notifier.dart';
import 'group_actor_state.dart';
import 'group_watcher_notifier.dart';
import 'group_watcher_state.dart';

final groupRepositoryProvider =
    Provider<IGroupRepository>((ref) => GroupRepository(ref.watch(sqlDatabaseProvider)));

final groupwatcherProvider = StateNotifierProvider<GroupWatcherNotifier, GroupWatcherState>(
    (ref) => GroupWatcherNotifier(ref.watch(groupRepositoryProvider)));

final groupActorProvider = StateNotifierProvider<GroupActorNotifier, GroupActorState>(
    (ref) => GroupActorNotifier(ref.watch(groupRepositoryProvider)));
