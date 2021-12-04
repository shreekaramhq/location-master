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
    // return GestureDetector(
    //   onTap: () => onPressed(group),
    //   child: Card(
    //     color: Colors.indigo.withOpacity(0.5),
    //     child: Padding(
    //       padding: const EdgeInsets.all(16.0),
    //       child: Column(
    //         crossAxisAlignment: CrossAxisAlignment.start,
    //         children: [
    //           Padding(
    //             padding: const EdgeInsets.only(bottom: 8.0),
    //             child: Text(
    //               group.name,
    //               style: const TextStyle(
    //                 color: Colors.white,
    //                 fontSize: 20,
    //               ),
    //             ),
    //           ),
    //           Text(
    //             group.description ?? "",
    //             style: const TextStyle(
    //               color: Colors.white,
    //               fontSize: 14,
    //             ),
    //           ),
    //         ],
    //       ),
    //     ),
    //   ),
    // );

    return Card(
      color: Colors.indigo.withOpacity(0.5),

      // margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
      child: ListTile(
        contentPadding: const EdgeInsets.all(12),
        dense: true,
        // leading: Icon(Icons.album, size: 45),
        title: Padding(
          padding: const EdgeInsets.only(bottom: 8.0),
          child: Text(
            group.name,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
        ),
        subtitle: Text(
          group.description ?? "",
          style: const TextStyle(
            color: Colors.white,
            fontSize: 14,
          ),
        ),
        onTap: () => onPressed(group),
      ),
    );
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
