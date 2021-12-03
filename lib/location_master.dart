import 'package:flutter/material.dart';

import 'package:locationmaster/config/router.dart';

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
      navigatorObservers: [Routes.rootRouteObserver],
      initialRoute: Routes.root,
      onGenerateRoute: LocationMasterRouter().onGenerateRoute,
    );
  }
}
