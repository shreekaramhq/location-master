import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:locationmaster/modules/group/widgets/slidable_tile.dart';
import 'package:locationmaster/modules/location/domain/location_model.dart';
import 'package:locationmaster/modules/location/providers/location_actor_state.dart';
import 'package:locationmaster/providers.dart';
import 'package:locationmaster/styles/app_colors.dart';

class LocationListView extends ConsumerWidget {
  final List<LocationModel> locations;
  final Function(TileAction action, LocationModel _location) onAction;

  const LocationListView({Key? key, required this.locations, required this.onAction})
      : super(key: key);

  showMessage(BuildContext context, String message, {Color? color = Colors.green}) {
    return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        backgroundColor: color,
        content: Text(
          message,
          style: const TextStyle(fontSize: 16),
        ),
        duration: const Duration(milliseconds: 500),
        behavior: SnackBarBehavior.floating,
      ),
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen<LocationActorState>(
      locationActorProvider,
      (LocationActorState? p, LocationActorState c) {
        c.whenOrNull(
          locationCreateSuccess: (message) {
            showMessage(context, message, color: Colors.green);
          },
          locationDeleteSuccess: (message) {
            showMessage(context, message, color: Colors.redAccent);
          },
        );
      },
    );

    return ListView.separated(
      separatorBuilder: (ctx, index) => const Divider(
        height: 1,
        color: kcMediumGreyColor,
      ),
      itemCount: locations.length,
      itemBuilder: (ctx, index) {
        final _location = locations[index];

        return Slidable(
          key: ValueKey(_location.id),
          endActionPane: ActionPane(
            motion: const ScrollMotion(),
            children: [
              SlidableAction(
                onPressed: (ctx) {
                  onAction(TileAction.delete, _location);
                },
                icon: Icons.delete,
                backgroundColor: Colors.red,
                foregroundColor: Colors.white,
              )
            ],
          ),
          child: ListTile(
            onTap: () {
              onAction(TileAction.select, _location);
            },
            title: Text(_location.name),
            subtitle: Text(_location.description ?? ""),
            trailing: Column(
              children: [
                Text(
                  "${_location.latitude.toStringAsFixed(2)}\u00B0N",
                  style: const TextStyle(fontSize: 16),
                ),
                Text(
                  "${_location.longitude.toStringAsFixed(2)}\u00B0E",
                  style: const TextStyle(fontSize: 16),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
