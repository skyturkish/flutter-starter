import 'package:flutter/material.dart';
import 'package:flutter_starter/core/constants/navigation/navigation_constants.dart';
import 'package:flutter_starter/views/detail_view.dart';
import 'package:flutter_starter/views/error_view.dart';

class NavigationRoute {
  NavigationRoute._init();

  static final NavigationRoute _instance = NavigationRoute._init();

  static NavigationRoute get instance => _instance;

  Route<dynamic> generateRoute(RouteSettings args) {
    switch (args.name) {
      case NavigationConstants.detailView:
        return normalNavigate(widget: const DetailView());
      default:
        return normalNavigate(
          widget: const ErrorView(),
        );
    }
  }
}

MaterialPageRoute<dynamic> normalNavigate({
  required Widget widget,
  String? pageName,
}) {
  return MaterialPageRoute(
    builder: (context) => widget,
    settings: RouteSettings(name: pageName),
  );
}

PageRouteBuilder<dynamic> createRoute({
  required Widget widget,
}) {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => widget,
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(0, 1);
      const end = Offset.zero;
      const curve = Curves.ease;

      final tween = Tween(begin: begin, end: end).chain(
        CurveTween(
          curve: curve,
        ),
      );

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}
