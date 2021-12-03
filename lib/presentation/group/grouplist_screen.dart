import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:locationmaster/application/group/group_actor/group_actor_bloc.dart';
import 'package:locationmaster/application/group/group_watcher/group_watcher_bloc.dart';
import 'package:locationmaster/config/router.dart';
import 'package:locationmaster/domain/group/group_model.dart';
import 'package:locationmaster/presentation/group/widgets/group_form.dart';
import 'package:locationmaster/presentation/group/widgets/group_tile.dart';

class GroupListScreen extends StatefulWidget {
  const GroupListScreen({Key? key}) : super(key: key);

  @override
  State<GroupListScreen> createState() => _GroupListScreenState();
}

class _GroupListScreenState extends State<GroupListScreen> {
  _onPressed() {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(12.0)),
      ),
      builder: (ctx) {
        return Padding(
          padding: EdgeInsets.only(
            bottom: MediaQuery.of(ctx).viewInsets.bottom,
          ),
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
            child: const GroupForm(),
          ),
        );
      },
    );
  }

  Widget _onGroupsLoaded(List<GroupModel> groups) {
    return ListView.builder(
      physics: const BouncingScrollPhysics(),
      itemCount: groups.length,
      itemBuilder: (ctx, index) {
        final _group = groups[index];

        return GroupTile(
          group: _group,
          onPressed: (GroupModel group) {
            Navigator.pushNamed(context, Routes.locations,
                arguments: LocationListArguments(group));
          },
          onLongPressd: (id) {
            ctx.read<GroupActorBloc>().add(GroupActorEvent.deleteGroup(id));
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<GroupWatcherBloc, GroupWatcherState>(
        builder: (context, state) {
          return state.maybeWhen(
            groupsLoaded: _onGroupsLoaded,
            empty: () {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(Icons.hourglass_empty, size: 48),
                  Center(
                    child: Text(
                      "Groups are empty",
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                ],
              );
            },
            error: (s) {
              return const Center(
                child: Text("Error getting lists"),
              );
            },
            orElse: () {
              return const Center(child: CircularProgressIndicator());
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _onPressed,
        child: const Icon(Icons.location_city),
      ),
    );
  }
}
