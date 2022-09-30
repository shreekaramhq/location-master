import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:locationmaster/shared/widgets/draggable_bottom_sheet.dart';

class GroupForm extends StatefulWidget {
  final Function(String name, String? description) onSubmit;
  final String? name;
  final String? description;
  final String buttonText;

  const GroupForm({
    Key? key,
    required this.onSubmit,
    this.name,
    this.description,
    required this.buttonText,
  }) : super(key: key);

  @override
  State<GroupForm> createState() => _GroupFormState();
}

class _GroupFormState extends State<GroupForm> {
  late TextEditingController nameController;
  late TextEditingController descriptionController;

  @override
  void initState() {
    nameController = TextEditingController(text: widget.name);
    descriptionController = TextEditingController(text: widget.description);

    super.initState();
  }

  onPressed() {
    final name = nameController.text.trim();

    if (name == '') {
      return;
    }

    widget.onSubmit(name, descriptionController.text);

    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return DraggableBottomSheet(
      maxChildSize: 0.4,
      initialChildSize: 0.4,
      minChildSize: 0.4,
      builder: (BuildContext context, ScrollController scrollController) {
        return SingleChildScrollView(
          physics: const ClampingScrollPhysics(),
          controller: scrollController,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const SizedBox(height: 24),
              _name(),
              const SizedBox(height: 24),
              _description(),
              const SizedBox(height: 24),
              TextButton(
                onPressed: onPressed,
                child: Text(
                  widget.buttonText,
                  style: const TextStyle(fontWeight: FontWeight.w600),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  TextFormField _description() {
    return TextFormField(
      controller: descriptionController,
      decoration: const InputDecoration(
        labelText: 'Description',
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: Colors.grey,
          ),
        ),
      ),
    );
  }

  TextFormField _name() {
    return TextFormField(
      controller: nameController,
      autofocus: true,
      decoration: const InputDecoration(
        labelText: 'Group Name *',
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: Colors.grey,
          ),
        ),
      ),
      validator: (v) => v == null ? "Name is needed" : "",
    );
  }
}
