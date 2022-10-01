import 'package:flutter/material.dart';
import 'package:locationmaster/shared/widgets/draggable_bottom_sheet.dart';
import 'package:locationmaster/styles/app_colors.dart';

class Coordinate {
  final double latitude;
  final double longitude;

  Coordinate(this.latitude, this.longitude);
}

class LocationForm extends StatefulWidget {
  final Function(String name, String? description) onSubmit;
  final String? name;
  final String? description;
  final String buttonText;
  final Coordinate coordinate;

  const LocationForm({
    Key? key,
    required this.onSubmit,
    this.name,
    this.description,
    required this.buttonText,
    required this.coordinate,
  }) : super(key: key);

  @override
  State<LocationForm> createState() => _LocationFormState();
}

class _LocationFormState extends State<LocationForm> {
  late TextEditingController nameController;
  late TextEditingController descriptionController;

  @override
  void initState() {
    nameController = TextEditingController(text: widget.name);
    descriptionController = TextEditingController(text: widget.description);

    super.initState();
  }

  onPressed() {
    // FIXME: make more reusable
    final name = nameController.text.trim();

    if (name == '') {
      return;
    }

    widget.onSubmit(name, descriptionController.text.trim());

    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return DraggableBottomSheet(
        initialChildSize: 0.5,
        minChildSize: 0.5,
        maxChildSize: 0.7,
        builder: (context, scrollController) {
          return SingleChildScrollView(
            physics: const ClampingScrollPhysics(),
            controller: scrollController,
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextFormField(
                    autofocus: widget.name == null,
                    controller: nameController,
                    // initialValue: _location?.latitude.toString() ?? "",
                    decoration: const InputDecoration(
                      labelText: 'Location Name *',
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(bottom: 8.0),
                            child: Text(
                              "Latitude",
                              style: TextStyle(
                                color: kcMediumGreyColor,
                                fontSize: 12,
                              ),
                            ),
                          ),
                          Text(
                            "${widget.coordinate.latitude.toString()}\u00B0N",
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(width: 80),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(bottom: 8.0),
                            child: Text(
                              "Logitude",
                              style: TextStyle(
                                color: kcMediumGreyColor,
                                fontSize: 12,
                              ),
                            ),
                          ),
                          Text(
                            "${widget.coordinate.longitude.toString()}\u00B0E",
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    controller: descriptionController,
                    decoration: const InputDecoration(
                      labelText: 'Description',
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: TextButton.icon(
                      onPressed: onPressed,
                      label: Text(
                        widget.buttonText,
                        style: const TextStyle(fontWeight: FontWeight.w600),
                      ),
                      icon: const Icon(Icons.location_pin),
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }
}
