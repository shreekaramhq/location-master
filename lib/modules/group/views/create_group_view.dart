import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:locationmaster/modules/group/domain/group_model.dart';
import 'package:locationmaster/modules/group/widgets/group_form.dart';
import 'package:locationmaster/providers.dart';

class CreateGroupView extends ConsumerWidget {
  const CreateGroupView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GroupForm(
      buttonText: "Create Group",
      onSubmit: (name, description) {
        ref.read(groupActorProvider.notifier).createGroup(
              GroupModel.empty().copyWith(name: name, description: description),
            );
      },
    );
  }
}
