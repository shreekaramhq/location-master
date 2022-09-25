import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:locationmaster/navigation/app_navigator.dart';
import 'package:locationmaster/providers.dart';
import 'package:locationmaster/styles/master_theme.dart';

class LocationMaster extends ConsumerWidget {
  LocationMaster({Key? key}) : super(key: key);

  final _appRouter = AppNavigator.createAppRouter();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final preference = ref.watch(preferenceProvider);

    /// FIXME: theme needs to be fixed
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: "Location Master",
      theme: MasterTheme.lightTheme(),
      themeMode: preference.theme == AppTheme.light ? ThemeMode.light : ThemeMode.dark,
      routerDelegate: _appRouter.routerDelegate,
      routeInformationParser: _appRouter.routeInformationParser,
      routeInformationProvider: _appRouter.routeInformationProvider,
    );
  }
}
