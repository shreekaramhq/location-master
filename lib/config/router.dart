import 'package:flutter/material.dart';
import 'package:locationmaster/domain/group/group_model.dart';
import 'package:locationmaster/domain/location/location_model.dart';
import 'package:locationmaster/presentation/home/home_screen.dart';
import 'package:locationmaster/presentation/location/location_list_screen.dart';

class LocationListArguments {
  final GroupModel group;

  LocationListArguments(this.group);
}

class LocationFormScreenArguments {
  final LocationModel location;

  LocationFormScreenArguments(this.location);
}

class Routes {
  static final RouteObserver<ModalRoute> rootRouteObserver =
      RouteObserver<ModalRoute>();

  static const root = "/";

  static const home = "/home";

  static const groupForm = "/groupForm";

  static const locations = "/locations";

  static const locationForm = "/locationForm";
}

class LocationMasterRouter {
  Route onGenerateRoute(RouteSettings settings) {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) =>
          _getRoute(context, settings),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        // const begin = Offset(1.0, 0.0);
        // final end = Offset.zero;
        // final curve = Curves.ease;

        // final tween =
        //     Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

        return FadeTransition(
          // position: animation.drive(tween),
          opacity: animation,
          child: child,
        );
      },
    );

    // return PageRouteBuilder(
    //   pageBuilder: (context, animation, secondaryAnimation) =>
    //       _getRoute(context, settings),
    //   transitionsBuilder: (context, animation, secondaryAnimation, child) {
    //     const begin = Offset(1.0, 0.0);
    //     final end = Offset.zero;
    //     final curve = Curves.ease;

    //     final tween =
    //         Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

    //     return SlideTransition(
    //       position: animation.drive(tween),
    //       child: child,
    //     );
    //   },
    // );
  }

  Widget _getRoute(BuildContext context, RouteSettings settings) {
    switch (settings.name) {
      case Routes.root:
        return const HomeScreen();

      case Routes.home:
        return const HomeScreen();

      case Routes.locations:
        final arguments = settings.arguments as LocationListArguments;

        return LocationListScreen(groupModel: arguments.group);

      default:
        return const HomeScreen();
    }
  }
}
