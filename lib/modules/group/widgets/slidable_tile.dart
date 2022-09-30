import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

import 'package:locationmaster/modules/group/domain/group_model.dart';
import 'package:locationmaster/styles/app_colors.dart';

enum TileAction { update, delete, select }

class SlidableTile extends StatefulWidget {
  const SlidableTile({
    ValueKey? key,
    required this.onAction,
    required GroupModel group,
    this.disabled = false,
  })  : _group = group,
        super(key: key);

  final Function(TileAction action, GroupModel _group) onAction;
  final GroupModel _group;
  final bool disabled;

  @override
  State<SlidableTile> createState() => _SlidableTileState();
}

const _key = ValueKey("groups");

class _SlidableTileState extends State<SlidableTile> with SingleTickerProviderStateMixin {
  late SlidableController _controller;

  @override
  void initState() {
    _controller = SlidableController(this);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SlidableAutoCloseBehavior(
      child: Slidable(
        groupTag: widget._group.id,
        closeOnScroll: true,
        enabled: !widget.disabled,
        startActionPane: ActionPane(
          motion: const ScrollMotion(),
          children: [
            SlidableAction(
              onPressed: (ctx) {
                widget.onAction(TileAction.update, widget._group);
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
                widget.onAction(TileAction.update, widget._group);
              },
              icon: Icons.edit,
              backgroundColor: Colors.blue,
              foregroundColor: Colors.white,
              autoClose: true,
            ),
            SlidableAction(
              onPressed: (ctx) {
                widget.onAction(TileAction.delete, widget._group);
              },
              icon: Icons.delete,
              backgroundColor: Colors.red,
              foregroundColor: Colors.white,
              autoClose: true,
            ),
          ],
        ),
        child: Builder(builder: (context) {
          return ListTile(
            onTap: () {
              // Slidable.of(context)?.close();
              // SlidableGroupNotification.dispatch(
              //   context,
              //   SlidableAutoCloseNotification(
              //     groupTag: widget._group.id,
              //     controller: Slidable.of(context)!,
              //   ),
              //   assertParentExists: false,
              // );

              widget.onAction(TileAction.select, widget._group);
            },
            title: Text(widget._group.name),
            subtitle: Text(widget._group.description ?? ""),
            trailing: widget._group.locationCount > 0
                ? Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        widget._group.locationCount.toString().padLeft(2, '0'),
                        style: const TextStyle(fontSize: 20, color: kcBluish),
                      ),
                      const Text(
                        "Places",
                        style: TextStyle(color: kcMediumGreyColor),
                      ),
                    ],
                  )
                : null,
          );
        }),
      ),
    );
  }
}
