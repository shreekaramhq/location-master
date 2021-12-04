import 'package:flutter/material.dart';
import 'package:locationmaster/application/location/location_actor/location_actor_bloc.dart';
import 'package:locationmaster/domain/location/location_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LocationFormView extends StatefulWidget {
  final LocationModel locationModel;

  final void Function() onSave;

  const LocationFormView(
      {Key? key, required this.locationModel, required this.onSave})
      : super(key: key);

  @override
  State<LocationFormView> createState() => _LocationFormViewState();
}

class _LocationFormViewState extends State<LocationFormView> {
  String name = "";

  String description = "";

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        bottom: MediaQuery.of(context).viewInsets.bottom,
      ),
      child: Container(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            TextFormField(
              initialValue: widget.locationModel.name,
              decoration: const InputDecoration(labelText: "Name *"),
              autofocus: true,
              validator: (text) {
                if (text == null || text.isEmpty) {
                  return 'Name is empty';
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
              initialValue: widget.locationModel.description,
              decoration: const InputDecoration(labelText: "Description"),
              autofocus: true,
              onChanged: (value) {
                setState(() {
                  description = value;
                });
              },
            ),
            Row(
              children: [
                Expanded(
                  child: TextFormField(
                    enabled: false,
                    initialValue: widget.locationModel.latitude,
                    decoration: const InputDecoration(labelText: "Latitude"),
                  ),
                ),
                Expanded(
                  child: TextFormField(
                    enabled: false,
                    initialValue: widget.locationModel.longitude,
                    decoration: const InputDecoration(labelText: "Longitude"),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Expanded(
                  flex: 0,
                  child: TextButton(
                    child: const Text("Save Location"),
                    onPressed: name == ""
                        ? null
                        : () {
                            context.read<LocationActorBloc>().add(
                                  LocationActorEvent.saveLocation(
                                    widget.locationModel.copyWith(
                                      name: name,
                                      description: description,
                                    ),
                                  ),
                                );

                            widget.onSave();
                          },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
