import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import 'package:locationmaster/modules/group/domain/group_model.dart';
import 'package:locationmaster/navigation/app_routes.dart';
import 'package:locationmaster/providers.dart';

import 'views/views.dart';
import 'widgets/slidable_tile.dart';

class GroupsListPage extends ConsumerWidget {
  const GroupsListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(groupwatcherProvider);

    _showModal(BuildContext context, {GroupModel? group}) {
      showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        enableDrag: true,
        isDismissible: true,
        useRootNavigator: true,
        backgroundColor: Colors.transparent,
        barrierColor: Colors.grey.withOpacity(0.1),
        builder: (ctx) => GestureDetector(
          behavior: HitTestBehavior.opaque,
          onTap: () {
            Navigator.of(context).pop();
          },
          child: AnimatedPadding(
            duration: const Duration(milliseconds: 150),
            padding: EdgeInsets.only(bottom: MediaQuery.of(ctx).viewInsets.bottom),
            curve: Curves.easeOut,
            child: group == null ? const CreateGroupView() : UpdateGroupView(groupModel: group),
          ),
        ),
      );
    }

    void _onAction(TileAction action, GroupModel _group) {
      if (action == TileAction.select) {
        // TODO: navigate to group details/locations list page
      }

      if (action == TileAction.update) {
        _showModal(context, group: _group);
      }

      if (action == TileAction.delete) {
        ref.read(groupActorProvider.notifier).deleteGroup(_group.id);
      }
    }

    return Scaffold(
      body: state.maybeMap(
        loading: (_) => const Center(child: CircularProgressIndicator()),
        groupsLoaded: (data) => GroupListView(
          groups: data.groups,
          onAction: _onAction,
        ),
        empty: (_) => const Text("Empty"),
        orElse: () => const Center(child: CircularProgressIndicator()),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _showModal(context);
        },
        child: const Icon(Icons.list),
      ),
    );
  }
}
