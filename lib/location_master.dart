import 'package:flutter/material.dart';

class LocationMaster extends StatelessWidget {
  const LocationMaster({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Location Master',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Scaffold(
        body: Center(
          child: Text("Location Master"),
        ),
      ),
    );
  }
}
