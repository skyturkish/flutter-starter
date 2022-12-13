import 'package:flutter/material.dart';
import 'package:flutter_starter/core/constants/enums/app_theme_enum.dart';
import 'package:flutter_starter/core/constants/enums/locale_keys_enum.dart';
import 'package:flutter_starter/core/init/cache/locale_manager.dart';
import 'package:flutter_starter/core/init/theme/dark/dark_light_theme.dart';
import 'package:flutter_starter/core/init/theme/light/ligh_theme.dart';

class ThemeNotifier extends ChangeNotifier {
  ThemeData _currentTheme = DarkTheme.instance.theme!;

  AppThemes _currenThemeEnum = AppThemes.dark;

  AppThemes get currentThemeEnum => _currenThemeEnum;

  ThemeData get currentTheme => _currentTheme;

  void initTheme() {
    final theme = LocaleManager.instance.getStringValue(
      key: LocaleCacheKeys.theme,
    );

    theme == AppThemes.light.name ? setLightTheme() : setDarkTheme();
  }

  void setDarkTheme() {
    _currentTheme = DarkTheme.instance.theme!;

    _currenThemeEnum = AppThemes.dark;

    LocaleManager.instance.setStringValue(
      key: LocaleCacheKeys.theme,
      value: AppThemes.dark.name,
    );
  }

  void setLightTheme() {
    _currentTheme = LightTheme.instance.theme!;

    _currenThemeEnum = AppThemes.light;

    LocaleManager.instance.setStringValue(
      key: LocaleCacheKeys.theme,
      value: AppThemes.light.name,
    );
  }

  void changeTheme() {
    final theme = currentThemeEnum;

    if (theme == AppThemes.light) {
      setDarkTheme();
    } else if (theme == AppThemes.dark) {
      setLightTheme();
    }
    notifyListeners();
  }
}
