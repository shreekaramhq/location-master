import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import 'package:locationmaster/modules/group/domain/group_model.dart';
import 'package:locationmaster/navigation/app_routes.dart';
import 'package:locationmaster/providers.dart';
import 'package:locationmaster/styles/app_colors.dart';

import 'views/views.dart';
import 'widgets/slidable_tile.dart';

class GroupsListPage extends ConsumerStatefulWidget {
  const GroupsListPage({Key? key}) : super(key: key);

  @override
  ConsumerState<GroupsListPage> createState() => _GroupsListPageState();
}

class _GroupsListPageState extends ConsumerState<GroupsListPage> with RouteAware {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      ref.read(groupwatcherProvider.notifier).getGroups();
    });
    super.initState();
  }

  @override
  void didChangeDependencies() {
    routeObserver.subscribe(this, ModalRoute.of(context) as dynamic);

    super.didChangeDependencies();
  }

  @override
  void dispose() {
    routeObserver.unsubscribe(this);

    super.dispose();
  }

  @override
  void didPopNext() {
    ref.read(groupwatcherProvider.notifier).getGroups(silently: true);

    super.didPopNext();
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(groupwatcherProvider);

    _showModal(BuildContext context, {GroupModel? group}) {
      showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        enableDrag: true,
        isDismissible: false,
        useRootNavigator: true,
        backgroundColor: Colors.transparent,
        barrierColor: Colors.grey.withOpacity(0.1),
        constraints: BoxConstraints.loose(MediaQuery.of(context).size),
        builder: (ctx) => GestureDetector(
          behavior: HitTestBehavior.opaque,
          onTap: () {
            // Navigator.of(context).pop();
          },
          child: AnimatedPadding(
            duration: const Duration(milliseconds: 150),
            padding: EdgeInsets.only(bottom: MediaQuery.of(ctx).viewInsets.bottom),
            curve: Curves.easeOut,
            child: group == null ? const CreateGroupView() : UpdateGroupView(groupModel: group),
          ),
        ),
      );
    }

    void _onAction(TileAction action, GroupModel _group) {
      if (action == TileAction.select) {
        GoRouter.of(context).pushNamed(
          AppRoutes.groupPage.name,
          extra: _group,
          params: {"id": _group.id},
        );
      }

      if (action == TileAction.update) {
        _showModal(context, group: _group);
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
                      ref.read(groupActorProvider.notifier).deleteGroup(_group.id);

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
                content: const Text(
                  "This will delete all the locations in this group",
                  style: TextStyle(
                    color: kcMediumGreyColor,
                  ),
                  textAlign: TextAlign.left,
                ),
                contentPadding: const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
              );
            });
      }
    }

    return Scaffold(
      body: state.maybeMap(
        loading: (_) => const Center(child: CircularProgressIndicator()),
        groupsLoaded: (data) => GroupListView(
          groups: data.groups,
          onAction: _onAction,
        ),
        empty: (_) => const Text("Empty"),
        orElse: () => const Center(child: CircularProgressIndicator()),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _showModal(context);
        },
        child: const Icon(Icons.list),
      ),
    );
  }
}
