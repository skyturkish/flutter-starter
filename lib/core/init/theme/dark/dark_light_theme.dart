import 'package:flutter/material.dart';
import 'package:flutter_starter/core/init/theme/app_theme.dart';

class DarkTheme implements AppTheme {
  factory DarkTheme() {
    return instance;
  }

  DarkTheme._internal();

  static final DarkTheme instance = DarkTheme._internal();

  @override
  ThemeData? get theme => ThemeData.dark();
}
