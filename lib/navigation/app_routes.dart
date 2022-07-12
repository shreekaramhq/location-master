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

  static final splashPage = AppRoute(name: "Splash", path: "splash");

  static final homePage = AppRoute(name: "Home", path: "/");
}
