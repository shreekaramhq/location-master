import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

import 'package:locationmaster/modules/group/domain/group_model.dart';

enum TileAction { update, delete, select }

class SlidableTile extends StatelessWidget {
  const SlidableTile({
    Key? key,
    required this.onAction,
    required GroupModel group,
    this.disabled = false,
  })  : _group = group,
        super(key: key);

  final Function(TileAction action, GroupModel _group) onAction;
  final GroupModel _group;
  final bool disabled;

  @override
  Widget build(BuildContext context) {
    return Slidable(
      key: ValueKey(_group.id),
      closeOnScroll: true,
      enabled: !disabled,
      startActionPane: ActionPane(
        motion: const ScrollMotion(),
        children: [
          SlidableAction(
            onPressed: (ctx) {
              onAction(TileAction.update, _group);
            },
            icon: Icons.edit,
            backgroundColor: Colors.blue,
            foregroundColor: Colors.white,
            autoClose: true,
          ),
        ],
      ),
      endActionPane: ActionPane(
        motion: const ScrollMotion(),
        children: [
          SlidableAction(
            onPressed: (ctx) {
              onAction(TileAction.delete, _group);
            },
            icon: Icons.delete,
            backgroundColor: Colors.red,
            foregroundColor: Colors.white,
            autoClose: true,
          ),
        ],
      ),
      child: ListTile(
        onTap: () {
          onAction(TileAction.select, _group);
        },
        title: Text(_group.name),
        subtitle: Text(_group.description ?? ""),
        leading: Text(
          _group.locationCount.toString(),
          style: const TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
