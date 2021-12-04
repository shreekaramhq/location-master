import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:locationmaster/application/location/location_actor/location_actor_bloc.dart';
import 'package:locationmaster/application/location/location_watcher/location_watcher_bloc.dart';
import 'package:locationmaster/config/injector.dart';
import 'package:locationmaster/domain/group/group_model.dart';
import 'package:locationmaster/domain/location/location_model.dart';
import 'package:locationmaster/infrastructure/gps/gps_service.dart';
import 'package:locationmaster/presentation/location/widgets/location_form_view.dart';
import 'package:url_launcher/url_launcher.dart';

class LocationListScreen extends StatelessWidget {
  final GroupModel groupModel;

  const LocationListScreen({Key? key, required this.groupModel})
      : super(key: key);

  onPressed(LocationModel locationModel, BuildContext ctx) async {
    showModalBottomSheet(
      context: ctx,
      builder: (context) {
        return SizedBox(
          height: 120,
          child: ListView(
            children: [
              ListTile(
                title: const Text("Open"),
                leading: const Icon(Icons.open_in_new),
                onTap: () async {
                  final mapurl =
                      "google.navigation:q=${locationModel.latitude}, ${locationModel.longitude}";

                  if (await canLaunch(mapurl)) {
                    Navigator.of(context).pop();

                    await launch(mapurl);
                  } else {
                    // print("could not launch");
                  }
                },
              ),
              // ListTile(
              //   title: const Text("Edit"),
              //   leading: const Icon(Icons.edit),
              //   onTap: () {
              //     Navigator.of(context).pop();

              //     showModalBottomSheet(
              //       context: context,
              //       isScrollControlled: true,
              //       shape: const RoundedRectangleBorder(
              //         borderRadius:
              //             BorderRadius.vertical(top: Radius.circular(12.0)),
              //       ),
              //       builder: (ctx) {
              //         return LocationFormView(locationModel: locationModel);
              //       },
              //     );
              //   },
              // ),
              ListTile(
                title: const Text("Delete"),
                leading: const Icon(Icons.delete),
                onTap: () {
                  onDelete(locationModel.id, ctx);

                  Navigator.pop(context);
                },
              ),
            ],
          ),
        );
      },
    );
    return;
  }

  Widget _emptyListView(LocationsEmpty _) {
    return Stack(
      children: [
        ListView(),
        Align(
          heightFactor: 0.8,
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              // Icon(
              //   Icons.flutter_dash,
              //   size: 100,
              // ),
              Icon(
                Icons.location_on,
                size: 100,
                color: Colors.indigo,
              ),
              SizedBox(
                height: 12,
              ),
              SizedBox(
                child: Text(
                  "You dont have any locations saved",
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }

  Widget _errorListView(LocationsError _) {
    return Center(
      child: ListView(
        children: const [
          Center(
            child: SizedBox(
              child: Text("Error Occurred"),
            ),
          )
        ],
      ),
    );
  }

  onDelete(String id, BuildContext ctx) {
    ctx.read<LocationActorBloc>().add(LocationActorEvent.deleteLocation(id));
  }

  Widget _locationsListView(Locations data) {
    return ListView.builder(
      itemCount: data.locations.length,
      itemBuilder: (ctx, index) {
        final location = data.locations[index];

        return ListTile(
          title: Text(
            location.name,
            style: const TextStyle(fontSize: 18, color: Colors.blueGrey),
          ),
          subtitle: Text(location.description ?? ""),
          onTap: () => onPressed.call(location, ctx),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<LocationWatcherBloc>()
        ..add(LocationWatcherEvent.getLocation(groupModel.id)),
      child: BlocListener<LocationActorBloc, LocationActorState>(
        listener: (context, state) {
          state.whenOrNull(initial: () {
            context
                .read<LocationWatcherBloc>()
                .add(LocationWatcherEvent.getLocation(groupModel.id));
          });
        },
        child: BlocBuilder<LocationWatcherBloc, LocationWatcherState>(
          builder: (context, state) {
            return Scaffold(
              appBar: AppBar(
                title: Text(groupModel.name),
              ),
              body: state.maybeMap(
                empty: _emptyListView,
                locations: _locationsListView,
                error: _errorListView,
                orElse: () => const Center(
                  child: SizedBox(
                    child: CircularProgressIndicator(),
                  ),
                ),
              ),
              floatingActionButton: FloatingActionButton(
                onPressed: () async {
                  GpsService _service = getIt<GpsService>();

                  try {
                    await _service.checkPermissions();

                    final _location = await getIt<GpsService>().getLocation();

                    final _locationModel = LocationModel.empty().copyWith(
                      latitude: _location.latitude.toString(),
                      longitude: _location.longitude.toString(),
                      groupId: groupModel.id,
                    );

                    showModalBottomSheet(
                      context: context,
                      isScrollControlled: true,
                      shape: const RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.vertical(top: Radius.circular(12.0)),
                      ),
                      builder: (ctx) {
                        return LocationFormView(
                          locationModel: _locationModel,
                          onSave: () {
                            Navigator.of(context).pop();
                          },
                        );
                      },
                    );
                  } catch (e) {
                    print(e);
                  }
                },
                child: const Icon(Icons.location_pin),
              ),
            );
          },
        ),
      ),
    );
  }
}
