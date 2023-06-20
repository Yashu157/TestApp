import 'package:shared_preferences/shared_preferences.dart';

class PreferenceManager {
  static const String isLoggedInKey = 'isLoggedIn';

  static Future<SharedPreferences> _getSharedPreferences() async {
    return await SharedPreferences.getInstance();
  }

  static Future<void> setLoggedIn(bool isLoggedIn) async {
    final prefs = await _getSharedPreferences();
    await prefs.setBool(isLoggedInKey, isLoggedIn);
  }

  static Future<bool> isLoggedIn() async {
    final prefs = await _getSharedPreferences();
    return prefs.getBool(isLoggedInKey) ?? false;
  }
}
