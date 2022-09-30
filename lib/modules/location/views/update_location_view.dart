import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:locationmaster/modules/location/domain/location_model.dart';
import 'package:locationmaster/modules/location/infrastructure/location_model_dto.dart';
import 'package:locationmaster/modules/location/widgets/location_form.dart';
import 'package:locationmaster/providers.dart';

class UpdateLocationView extends ConsumerStatefulWidget {
  final String groupId;
  final LocationModel locationModel;

  const UpdateLocationView({
    Key? key,
    required this.groupId,
    required this.locationModel,
  }) : super(key: key);

  @override
  ConsumerState<UpdateLocationView> createState() => _UpdateLocationViewState();
}

class _UpdateLocationViewState extends ConsumerState<UpdateLocationView> {
  late TextEditingController nameController;
  late TextEditingController descriptionController;

  onSubmit(String name, String? description) {
    ref.read(locationActorProvider.notifier).updateLocation(UpdateLocationPayload(
          id: widget.locationModel.id,
          name: name,
          description: description,
        ));
  }

  @override
  Widget build(BuildContext context) {
    return LocationForm(
      name: widget.locationModel.name,
      description: widget.locationModel.description,
      onSubmit: onSubmit,
      buttonText: "Update Location",
      coordinate: Coordinate(widget.locationModel.latitude, widget.locationModel.longitude),
    );
  }
}
