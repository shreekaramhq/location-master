import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:locationmaster/modules/pages.dart';

import 'app_routes.dart';

class SlideTransitionPage extends CustomTransitionPage<void> {
  SlideTransitionPage({
    required LocalKey key,
    required Widget child,
  }) : super(
            key: key,
            transitionsBuilder: (c, animation, a2, child) => SlideTransition(
                  position: animation.drive(_offsetTween),
                  child: child,
                ),
            child: child);

  static final _offsetTween = Tween<Offset>(
    begin: const Offset(1, 0),
    end: Offset.zero,
  ).chain(CurveTween(curve: Curves.easeIn));
}

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
          name: AppRoutes.homePage.name,
          path: AppRoutes.homePage.path,
          pageBuilder: (BuildContext context, GoRouterState state) => NoTransitionPage<void>(
            key: state.pageKey,
            child: const HomePage(),
          ),
        ),
      ],
    );
  }
}
