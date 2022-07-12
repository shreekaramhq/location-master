import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:locationmaster/modules/pages.dart';

import 'app_routes.dart';

abstract class AppNavigator {
  AppNavigator._();

  static GoRouter createAppRouter() {
    return GoRouter(
      initialLocation: AppRoutes.homePage.path,
      errorBuilder: (ctx, state) => const Scaffold(
        body: Center(
          child: Text("Not Found"),
        ),
      ),
      routes: [
        GoRoute(
          name: AppRoutes.splashPage.name,
          path: AppRoutes.splashPage.slashPath,
          builder: (ctx, state) => const SplashPage(),
        ),
        GoRoute(
          name: AppRoutes.homePage.name,
          path: AppRoutes.homePage.path,
          builder: (ctx, state) => const HomePage(),
        ),
      ],
    );
  }
}
