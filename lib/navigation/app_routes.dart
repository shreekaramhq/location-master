import 'package:flutter/material.dart';

import '../modules/group/group_route_observer.dart';

class AppRoute {
  final String name;
  final String path;

  AppRoute({
    required this.name,
    required this.path,
  });

  String get slashPath => "/$path";
}

abstract class AppRoutes {
  AppRoutes._();

  static final homePage = AppRoute(name: "home", path: "/");

  static final groupListPage = AppRoute(name: "groups", path: "groups");

  static final groupPage = AppRoute(name: "group", path: "groups/:id");
}

final RouteObserver<ModalRoute> routeObserver = GroupRouteObserver();

final navigatorKey = GlobalKey<NavigatorState>();
