import 'package:flutter/material.dart';
import 'package:locationmaster/navigation/app_navigator.dart';
import 'package:locationmaster/styles/app_theme.dart';

class LocationMaster extends StatelessWidget {
  LocationMaster({Key? key}) : super(key: key);

  final _appRouter = AppNavigator.createAppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: "Location Master",
      theme: LocationMasterTheme.lightTheme,
      darkTheme: LocationMasterTheme.darkTheme,
      // themeMode: ThemeMode.dark,
      routerDelegate: _appRouter.routerDelegate,
      routeInformationParser: _appRouter.routeInformationParser,
      routeInformationProvider: _appRouter.routeInformationProvider,
    );
  }
}
