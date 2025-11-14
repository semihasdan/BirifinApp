import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:birifin_app/core/theme/light_theme.dart';
import 'package:birifin_app/core/theme/dark_theme.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeProvider() {
    _loadThemePreference();
  }

  static const _themePrefKey = 'birifin_theme_mode';
  ThemeMode _themeMode = ThemeMode.dark;
  bool _isLoading = true;

  ThemeMode get themeMode => _themeMode;

  bool get isDarkMode => _themeMode == ThemeMode.dark;

  bool get isLoading => _isLoading;

  ThemeData get lightTheme => LightTheme.theme;

  ThemeData get darkTheme => DarkTheme.theme;

  Future<void> toggleTheme() async {
    await setThemeMode(isDarkMode ? ThemeMode.light : ThemeMode.dark);
  }

  Future<void> setThemeMode(ThemeMode mode) async {
    _themeMode = mode;
    notifyListeners();
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(_themePrefKey, mode.name);
  }

  Future<void> _loadThemePreference() async {
    final prefs = await SharedPreferences.getInstance();
    final savedMode = prefs.getString(_themePrefKey);
    if (savedMode != null) {
      _themeMode = ThemeMode.values.firstWhere(
        (mode) => mode.name == savedMode,
        orElse: () => ThemeMode.dark,
      );
    }
    _isLoading = false;
    notifyListeners();
  }
}
