import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:locationmaster/modules/group/domain/group_model.dart';
import 'package:locationmaster/providers.dart';

import '../widgets/slidable_tile.dart';

class GroupListView extends ConsumerWidget {
  final List<GroupModel> groups;
  final Function(TileAction action, GroupModel _group) onAction;

  const GroupListView({Key? key, required this.groups, required this.onAction}) : super(key: key);

  showMessage(BuildContext context, String message, {Color? color = Colors.green}) {
    return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        backgroundColor: color,
        content: Text(
          message,
          style: const TextStyle(fontSize: 16),
        ),
        duration: const Duration(milliseconds: 500),
        behavior: SnackBarBehavior.floating,
      ),
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen<GroupActorState>(groupActorProvider, (GroupActorState? p, GroupActorState c) {
      c.whenOrNull(
        groupCreateSuccess: (message) {
          showMessage(context, message, color: Colors.green);
        },
        groupDeleteSuccess: (message) {
          showMessage(context, message, color: Colors.redAccent);
        },
      );
    });

    return ListView.separated(
      separatorBuilder: (context, index) => const Divider(height: 1),
      itemCount: groups.length,
      itemBuilder: (ctx, index) {
        final _group = groups[index];

        return SlidableTile(
          onAction: onAction,
          group: _group,
          disabled: groups.length == 1,
        );
      },
    );
  }
}
