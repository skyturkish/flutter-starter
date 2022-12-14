// ignore_for_file: lines_longer_than_80_chars

import 'package:flutter/material.dart';

/// this class will be use with Navigation servise and
/// goal =>
/// NavigationService.instance.navigateToPage(path: NavigationConstants.DetailPage, animation: SlideType.right)
extension SlideTypeExtension on SlideType {
  Route<T> route<T>(Widget page, RouteSettings settings) {
    return _SlideRoute(page: page, slideType: this);
  }
}

class _SlideRoute<T> extends PageRouteBuilder<T> {
  _SlideRoute({
    super.settings,
    required Widget page,
    required SlideType slideType,
  }) : super(
          pageBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
          ) =>
              page,
          transitionsBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
            Widget child,
          ) =>
              SlideTransition(
            position: Tween<Offset>(
              begin: slideType.offset,
              end: Offset.zero,
            ).animate(animation),
            child: child,
          ),
        );
}

enum SlideType {
  right(offset: Offset(-1, 0)),
  left(offset: Offset(1, 0)),
  bottom(offset: Offset(0, -1)),
  top(offset: Offset(0, 1));

  const SlideType({required this.offset});

  final Offset offset;
}
