

import 'package:riverpod_basketball/core/utils/app_strings.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefs {
  static late SharedPreferences _sharedPrefs;

  factory SharedPrefs() => SharedPrefs._internal();

  SharedPrefs._internal();

 static Future<void> init() async {
    _sharedPrefs = await SharedPreferences.getInstance();
  }

  bool? get isDark => _sharedPrefs.getBool(AppStrings.selectedThemeKey);

   setThemeIndex(bool isDark) {
    _sharedPrefs.setBool(AppStrings.selectedThemeKey, isDark);  
  }
}


