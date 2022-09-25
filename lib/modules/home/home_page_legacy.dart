// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:locationmaster/modules/group/domain/group_model.dart';
// import 'package:locationmaster/modules/home/providers/group_actor_state.dart';
// import 'package:locationmaster/providers.dart';
// import 'package:locationmaster/styles/app_theme.dart';

// import 'create_group_view.dart';

// class HomePageLegacy extends ConsumerStatefulWidget {
//   const HomePageLegacy({Key? key}) : super(key: key);

//   @override
//   ConsumerState<HomePageLegacy> createState() => _HomePageState();
// }

// class _HomePageState extends ConsumerState<HomePageLegacy> {
//   @override
//   void initState() {
//     ref.read(groupwatcherProvider.notifier).getGroups();
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return const HomePageView();
//   }
// }

// class HomePageView extends ConsumerWidget {
//   const HomePageView({Key? key}) : super(key: key);

//   showMessage(BuildContext context, String message, {Color? color = Colors.green}) {
//     return ScaffoldMessenger.of(context).showSnackBar(
//       SnackBar(
//         backgroundColor: color,
//         content: Text(
//           message,
//           style: const TextStyle(fontSize: 16),
//         ),
//         duration: const Duration(milliseconds: 500),
//         behavior: SnackBarBehavior.floating,
//       ),
//     );
//   }

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Location Master"),
//         centerTitle: true,
//       ),
//       body: Builder(
//         builder: (ctx) {
//           final state = ref.watch(groupwatcherProvider);

//           return state.maybeMap(
//             orElse: () {
//               return const Center(child: CircularProgressIndicator());
//             },
//             groupsLoaded: (data) {
//               return listview(data.groups, ref);
//             },
//             empty: (_) => Center(
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   SizedBox(
//                     width: 250,
//                     child: SvgPicture.asset(
//                       'assets/trip.svg',
//                       semanticsLabel: 'Acme Logo',
//                       fit: BoxFit.scaleDown,
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           );
//         },
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           _showModal(context);
//         },
//         child: const Icon(
//           Icons.list,
//           size: 30,
//         ),
//       ),
//       resizeToAvoidBottomInset: true,
//       bottomNavigationBar: BottomNavigationBar(
//         onTap: (int index) {},
//         items: const [
//           BottomNavigationBarItem(icon: Icon(Icons.inbox), label: "Home"),
//           BottomNavigationBarItem(icon: Icon(Icons.train), label: "Trips"),
//         ],
//         // height: 60,
//         // surfaceTintColor: Colors.white,
//         currentIndex: 0,
//       ),
//       // bottomNavigationBar: NavigationBar(
//       //   onDestinationSelected: (int index) {},
//       //   destinations: const [
//       //     NavigationDestination(icon: Icon(Icons.inbox), label: "Home"),
//       //     NavigationDestination(icon: Icon(Icons.train), label: "Trips"),
//       //   ],
//       //   // height: 60,
//       //   // surfaceTintColor: Colors.white,
//       //   selectedIndex: 0,
//       // ),
//     );
//   }

//   _showModal(BuildContext context) {
//     showModalBottomSheet(
//       context: context,
//       isScrollControlled: true,
//       enableDrag: true,
//       isDismissible: true,
//       useRootNavigator: true,
//       // constraints: BoxConstraints.loose(MediaQuery.of(context).size),
//       backgroundColor: Colors.transparent,
//       barrierColor: Colors.grey.withOpacity(0.1),
//       builder: (ctx) => GestureDetector(
//           behavior: HitTestBehavior.opaque,
//           onTap: () {
//             Navigator.of(context).pop();
//           },
//           child: AnimatedPadding(
//             duration: const Duration(milliseconds: 150),
//             padding: EdgeInsets.only(bottom: MediaQuery.of(ctx).viewInsets.bottom),
//             curve: Curves.easeOut,
//             child: const CreateGroupView(),
//           )),
//     );
//   }

//   RefreshIndicator listview(List<GroupModel> groups, WidgetRef ref) {
//     return RefreshIndicator(
//       onRefresh: () async {
//         // context.read<GroupWatcherBloc>().add(const GroupWatcherEvent.getGroups());
//         ref.read(groupwatcherProvider.notifier).getGroups();
//       },
//       child: ListView.separated(
//         physics: const BouncingScrollPhysics(),
//         itemBuilder: (ctx, index) {
//           final group = groups[index];
//           return ListTile(
//             onTap: () {
//               // GoRouter.of(context).pushNamed(
//               //   AppRoutes.groupPage.name,
//               //   params: {"id": group.id},
//               //   extra: group,
//               // );
//               ref.read(groupActorProvider.notifier).deleteGroup(group.id);
//             },
//             // leading: leading(group),
//             title: Text(
//               group.name,
//               style: const TextStyle(fontWeight: FontWeight.w500),
//             ),
//             subtitle: Text("${group.locationCount} Locations"),
//             contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
//             dense: false,
//           );
//         },
//         separatorBuilder: (_, i) => const Divider(
//           height: 1,
//           color: Colors.grey,
//           indent: 16,
//           endIndent: 16,
//         ),
//         itemCount: groups.length,
//       ),
//     );
//   }

//   Container leading(GroupModel group) {
//     return Container(
//       height: 60,
//       width: 60,
//       padding: const EdgeInsets.all(12),
//       decoration: BoxDecoration(
//         color: Color(group.backgroundColor),
//         borderRadius: const BorderRadius.all(Radius.circular(30)),
//       ),
//       child: Center(
//         child: Icon(
//           group.icon,
//           size: 36,
//           color: Color(group.iconColor),
//         ),
//       ),
//     );
//   }
// }
