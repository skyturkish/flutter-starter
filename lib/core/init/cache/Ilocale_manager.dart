import 'package:flutter_starter/core/constants/enums/locale_keys_enum.dart';

abstract class IlocaleManager {
  /// Deletes all stored data.
  Future<void> clearAll();

  Future<void> setBoolValue({
    required LocaleCacheKeys key,
    required bool value,
  });

  bool getBoolValue({required LocaleCacheKeys key});

  Future<void> setStringValue({
    required LocaleCacheKeys key,
    required String value,
  });

  String getStringValue({required LocaleCacheKeys key});
}
