import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:geolocator/geolocator.dart';
import 'package:locationmaster/modules/location/infrastructure/location_model_dto.dart';
import 'package:locationmaster/modules/location/widgets/location_form.dart';
import 'package:locationmaster/providers.dart';

class AddLocationView extends ConsumerStatefulWidget {
  final String groupId;

  const AddLocationView({
    Key? key,
    required this.groupId,
  }) : super(key: key);

  @override
  ConsumerState<AddLocationView> createState() => _AddLocationViewState();
}

class _AddLocationViewState extends ConsumerState<AddLocationView> {
  late TextEditingController nameController;
  late TextEditingController descriptionController;

  Position? _location;

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      ref.read(gpsServiceProvider).getLocation().then((value) {
        setState(() {
          _location = value;
        });
      });
    });

    super.initState();
  }

  onSubmit(String name, String? description) {
    ref.read(locationActorProvider.notifier).createLocation(CreateLocationPayload(
          name: name,
          latitude: _location!.latitude,
          longitude: _location!.longitude,
          groupId: widget.groupId,
          description: description,
        ));
  }

  @override
  Widget build(BuildContext context) {
    if (_location == null) {
      return const Center(
        child: CircularProgressIndicator(),
      );
    }

    return LocationForm(
      onSubmit: onSubmit,
      buttonText: "Save Location",
      coordinate: Coordinate(_location!.latitude, _location!.longitude),
    );
  }
}
