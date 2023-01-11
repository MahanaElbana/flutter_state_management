
import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefs {
  static late SharedPreferences _sharedPrefs;

  factory SharedPrefs() => SharedPrefs._internal();

  SharedPrefs._internal();

 static Future<void> init() async {
    _sharedPrefs = await SharedPreferences.getInstance();
  }

  bool? get isDark => _sharedPrefs.getBool(selectedThemeKey);

   setThemeIndex(bool isDark) {
    _sharedPrefs.setBool(selectedThemeKey, isDark);  
  }
}

// constants.dart
const String selectedThemeKey = "themeMode";
