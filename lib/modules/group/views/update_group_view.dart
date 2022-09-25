import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:locationmaster/modules/group/domain/group_model.dart';
import 'package:locationmaster/modules/group/widgets/group_form.dart';

import '../../group/providers/providers.dart';

class UpdateGroupView extends ConsumerWidget {
  final GroupModel groupModel;
  const UpdateGroupView({
    Key? key,
    required this.groupModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GroupForm(
      name: groupModel.name,
      description: groupModel.description,
      buttonText: "Update Group",
      onSubmit: (name, description) {
        ref.read(groupActorProvider.notifier).updateGroup(
              groupModel.copyWith(name: name, description: description),
            );
      },
    );
  }
}
