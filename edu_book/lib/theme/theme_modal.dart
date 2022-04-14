import 'package:edu_book/theme/theme_shared_preferences.dart';
import 'package:flutter/cupertino.dart';

class ThemeModal extends ChangeNotifier {
  late bool _darkMode;
  late ThemeSharedPreferences themeSharedPreferences;
  bool get darkMode => _darkMode;

  ThemeModal() {
    _darkMode = false;
    themeSharedPreferences = ThemeSharedPreferences();
    getThemePreferences();
  }

  getThemePreferences() async {
    _darkMode = await themeSharedPreferences.getTheme();
    notifyListeners();
  }

  set darkMode(bool value) {
    _darkMode = value;
    themeSharedPreferences.setTheme(value);
    notifyListeners();
  }

  static of(BuildContext context) {}
}
