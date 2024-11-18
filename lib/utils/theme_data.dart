import 'package:flutter/material.dart';

class AppThemes {
  // Definisi tema A
  static final themeA = ThemeData(
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    appBarTheme: const AppBarTheme(color: Colors.blue),
    scaffoldBackgroundColor: Colors.blue.shade50,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
    ),
  );

  // Definisi tema B
  static final themeB = ThemeData(
    brightness: Brightness.light,
    primaryColor: Colors.green,
    appBarTheme: const AppBarTheme(color: Colors.green),
    scaffoldBackgroundColor: Colors.green.shade50,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
    ),
  );

  // Definisi tema C
  static final themeC = ThemeData(
    brightness: Brightness.dark,
    primaryColor: Colors.orange,
    appBarTheme: const AppBarTheme(color: Colors.orange),
    scaffoldBackgroundColor: Colors.orange.shade900,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(backgroundColor: Colors.orange),
    ),
  );
}
