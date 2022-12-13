import 'package:flutter_starter/core/constants/enums/locale_keys_enum.dart';
import 'package:flutter_starter/core/init/cache/Ilocale_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LocaleManager implements IlocaleManager {
  LocaleManager._init() {
    SharedPreferences.getInstance().then((value) {
      _preferences = value;
    });
  }

  static final LocaleManager _instance = LocaleManager._init();

  SharedPreferences? _preferences;

  static LocaleManager get instance => _instance;

  static Future<void> preferencesInit() async {
    instance._preferences ??= await SharedPreferences.getInstance();
  }

  @override
  Future<void> clearAll() async {
    await _preferences!.clear();
  }

  @override
  Future<void> setBoolValue({
    required LocaleCacheKeys key,
    required bool value,
  }) async {
    await _preferences!.setBool(key.toString(), value);
  }

  @override
  bool getBoolValue({
    required LocaleCacheKeys key,
  }) {
    return _preferences!.getBool(key.toString()) ?? false;
  }

  @override
  Future<void> setStringValue({
    required LocaleCacheKeys key,
    required String value,
  }) async {
    await _preferences!.setString(key.toString(), value);
  }

  @override
  String getStringValue({
    required LocaleCacheKeys key,
  }) {
    return _preferences?.getString(key.toString()) ?? '';
  }
}
