import 'package:flutter/material.dart';
import 'package:locationmaster/domain/group/group_model.dart';

class GroupTile extends StatelessWidget {
  final GroupModel group;

  final Function(GroupModel group) onPressed;

  final Function(String groupId) onLongPressd;

  const GroupTile(
      {Key? key,
      required this.onPressed,
      required this.group,
      required this.onLongPressd})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(group.name),
      subtitle: Text(group.description ?? ""),
      onTap: () => onPressed(group),
      onLongPress: () {
        onLongPressd(group.id);
      },
    );
  }
}
