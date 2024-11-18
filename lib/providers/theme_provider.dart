import 'package:flutter/material.dart';
import '../utils/theme_data.dart';

class ThemeProvider extends ChangeNotifier {
  // Default theme dan font
  ThemeData _themeData;
  String _fontFamily;

  ThemeProvider()
      : _themeData = AppThemes.themeA,
        _fontFamily = 'Roboto';

  ThemeData get themeData => _themeData;
  String get fontFamily => _fontFamily;

  // Fungsi untuk mengganti tema
  void changeTheme(ThemeData theme) {
    _themeData = theme.copyWith(
      textTheme: theme.textTheme.apply(fontFamily: _fontFamily),
    );
    notifyListeners();
  }

  // Fungsi untuk mengganti font
  void changeFont(String font) {
    _fontFamily = font;
    _themeData = _themeData.copyWith(
      textTheme: _themeData.textTheme.apply(fontFamily: _fontFamily),
    );
    notifyListeners();
  }
}
