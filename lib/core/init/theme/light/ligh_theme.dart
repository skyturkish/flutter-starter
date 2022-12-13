import 'package:flutter/material.dart';
import 'package:flutter_starter/core/init/theme/app_theme.dart';

class LightTheme implements AppTheme {
  factory LightTheme() {
    return instance;
  }

  LightTheme._internal();

  static final LightTheme instance = LightTheme._internal();

  @override
  ThemeData? theme = ThemeData.light();
}
