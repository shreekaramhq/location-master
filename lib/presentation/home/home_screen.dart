import 'package:flutter/material.dart';
import 'package:locationmaster/presentation/group/grouplist_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Location Master"),
        centerTitle: true,
      ),
      body: const GroupListScreen(),
    );
  }
}
