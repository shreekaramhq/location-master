import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:locationmaster/modules/group/groups_list_page.dart';
import 'package:locationmaster/providers.dart';

class HomePage extends ConsumerStatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  ConsumerState<HomePage> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  int selectedIndex = 0;

  @override
  void initState() {
    ref.read(groupwatcherProvider.notifier).getGroups();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Location Master"),
      ),
      body: IndexedStack(
        index: selectedIndex,
        children: [
          const GroupsListPage(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: SizedBox(
                  width: 250,
                  child: SvgPicture.asset(
                    'assets/trip.svg',
                    semanticsLabel: 'Acme Logo',
                    fit: BoxFit.scaleDown,
                  ),
                ),
              ),
              const Text("Plan your trips"),
              const Text("coming soon"),
            ],
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (int index) {
          setState(() {
            selectedIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.inbox), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.train), label: "Trips"),
        ],
        currentIndex: selectedIndex,
      ),
    );
  }
}