import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:geolocator/geolocator.dart';
import 'package:locationmaster/modules/group/domain/group_model.dart';
import 'package:locationmaster/modules/group/widgets/slidable_tile.dart';
import 'package:locationmaster/modules/location/domain/location_model.dart';
import 'package:locationmaster/modules/location/views/location_list.view.dart';
import 'package:locationmaster/modules/location/views/update_location_view.dart';
import 'package:locationmaster/providers.dart';
import 'package:url_launcher/url_launcher.dart';

import 'views/add_location_view.dart';

class LocationListPage extends ConsumerStatefulWidget {
  final GroupModel group;
  const LocationListPage({Key? key, required this.group}) : super(key: key);

  @override
  ConsumerState<LocationListPage> createState() => _LocationListPageState();
}

class _LocationListPageState extends ConsumerState<LocationListPage> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      ref.read(locationWatcherProvider.notifier).getLocations(widget.group.id);
    });

    _handlePermission();

    super.initState();
  }

  Future _handlePermission({Function()? okCallback, Function()? deniedForeverCallback}) async {
    final service = ref.read(gpsServiceProvider);

    final _permission = await service.checkPermissions();

    switch (_permission) {
      case LocationPermission.denied:
        await service.requestPermission();
        break;

      case LocationPermission.deniedForever:
        if (deniedForeverCallback != null) {
          deniedForeverCallback();
        }
        break;

      case LocationPermission.always:
      case LocationPermission.whileInUse:
        if (okCallback != null) {
          okCallback();
        }
        break;

      default:
        break;
    }
  }

  _askPermissionDialog({required Function() okCallback, required Function() cancelCallback}) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          actions: [
            TextButton(
              onPressed: cancelCallback,
              child: const Text("Cancel"),
            ),
            TextButton(
              onPressed: okCallback,
              child: const Text("Open Settings"),
            )
          ],
          title: const Text("Need Access to GPS"),
          content: const Text(
            "Please Enable location to contiue",
            textAlign: TextAlign.center,
          ),
          alignment: Alignment.center,
          icon: const Icon(Icons.location_off),
          titlePadding: const EdgeInsets.only(bottom: 0),
          contentPadding: const EdgeInsets.only(bottom: 0, left: 20, right: 20, top: 8),
          insetPadding: const EdgeInsets.symmetric(horizontal: 20),
        );
      },
    );
  }

  _showModal({LocationModel? locationModel}) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      enableDrag: true,
      isDismissible: false,
      useRootNavigator: true,
      constraints: BoxConstraints.loose(MediaQuery.of(context).size),
      backgroundColor: Colors.transparent,
      barrierColor: Colors.grey.withOpacity(0.1),
      builder: (ctx) => GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: () {
          // Navigator.of(context).pop();
        },
        child: AnimatedPadding(
          duration: const Duration(milliseconds: 150),
          padding: EdgeInsets.only(bottom: MediaQuery.of(ctx).viewInsets.bottom),
          curve: Curves.easeOut,
          child: locationModel == null
              ? AddLocationView(
                  groupId: widget.group.id,
                )
              : UpdateLocationView(
                  groupId: widget.group.id,
                  locationModel: locationModel,
                ),
        ),
      ),
    );
  }

  void _onAction(TileAction action, LocationModel _location) async {
    if (action == TileAction.select) {
      // final mapurl = "google.navigation:q=${_location.latitude}, ${_location.longitude}";

      // final mapurl =
      //     "https://www.google.com/maps/search/?api=1&query=${_location.latitude},${_location.longitude}";

      final mapurl = "geo:0,0?q=${_location.latitude},${_location.longitude}";

      if (await canLaunchUrl(Uri.parse(mapurl))) {
        // Navigator.of(context).pop();

        await launchUrl(Uri.parse(mapurl));
      } else {
        debugPrint("could not launch");

        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            backgroundColor: Colors.redAccent,
            content: Text(
              "Could not open google maps",
              style: TextStyle(fontSize: 16),
            ),
            duration: Duration(milliseconds: 500),
            behavior: SnackBarBehavior.floating,
          ),
        );
      }
    }

    if (action == TileAction.update) {
      _showModal(locationModel: _location);
    }

    if (action == TileAction.delete) {
      showDialog(
          context: context,
          builder: (ctx) {
            return AlertDialog(
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text("CANCEL"),
                ),
                TextButton(
                  onPressed: () {
                    ref.read(locationActorProvider.notifier).deleteLocation(_location.id);

                    Navigator.pop(context);
                  },
                  child: const Text(
                    "CONFIRM",
                    style: TextStyle(
                      color: Colors.red,
                    ),
                  ),
                ),
              ],
              title: const Text(
                "Are you sure?",
                textAlign: TextAlign.left,
              ),
              contentPadding: const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
            );
          });
    }
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(locationWatcherProvider);

    return Scaffold(
      appBar: AppBar(
        title: state.maybeWhen(
          orElse: () => Text(widget.group.name),
          locationsLoaded: (data) => Text(
            "${widget.group.name} (${data.length})",
          ),
        ),
        centerTitle: true,
      ),
      body: state.maybeMap(
        loading: (_) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        },
        empty: (_) => const Center(child: Text("No locations are added")),
        error: (_) {
          return Center(
            child: Text("An error occured fetching the list: ${_.message}"),
          );
        },
        locationsLoaded: (data) => LocationListView(
          locations: data.locations,
          onAction: _onAction,
        ),
        orElse: () {
          return const Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: onPressed,
        child: const Icon(Icons.add_location),
      ),
    );
  }

  void onPressed() async {
    await _handlePermission(
      okCallback: () {
        _showModal();
      },
      deniedForeverCallback: () => _askPermissionDialog(
        cancelCallback: () {
          Navigator.pop(context);
        },
        okCallback: () {
          final service = ref.read(gpsServiceProvider);
          service.openLocationSettings();
          Navigator.pop(context);
        },
      ),
    );
  }
}
