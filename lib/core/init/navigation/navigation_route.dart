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
        // return SlideType.top.route(const DetailView(), args);
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
