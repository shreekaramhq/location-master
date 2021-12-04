import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:locationmaster/application/group/group_actor/group_actor_bloc.dart';
import 'package:locationmaster/domain/group/group_model.dart';

class GroupForm extends StatefulWidget {
  const GroupForm({Key? key}) : super(key: key);

  @override
  State<GroupForm> createState() => _GroupFormState();
}

class _GroupFormState extends State<GroupForm> {
  final _formKey = GlobalKey<FormState>();

  String name = "";

  String? description = "";

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      autovalidateMode: AutovalidateMode.always,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          TextFormField(
            autofocus: true,
            initialValue: name,
            decoration: const InputDecoration(labelText: "Name"),
            validator: (text) {
              if (text == null || text.isEmpty) {
                return 'Text is empty';
              }
              return null;
            },
            onChanged: (value) {
              setState(() {
                name = value;
              });
            },
          ),
          TextFormField(
            initialValue: description,
            autofocus: true,
            decoration: const InputDecoration(labelText: "Description"),
            onChanged: (value) {
              setState(() {
                description = value;
              });
            },
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: TextButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  final _group = GroupModel.empty()
                      .copyWith(name: name.trim(), description: description);

                  context
                      .read<GroupActorBloc>()
                      .add(GroupActorEvent.createGroup(_group));

                  Navigator.of(context).pop();
                }
              },
              child: const Text("Save Group"),
            ),
          )
        ],
      ),
    );
  }
}
