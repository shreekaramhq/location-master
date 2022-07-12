import 'package:flutter/material.dart';

const primaryColor = Color(0xff7879f1);

class LocationMasterTheme {
  static FloatingActionButtonThemeData faButtonTheme = const FloatingActionButtonThemeData(
    backgroundColor: primaryColor,
    foregroundColor: Colors.white,
  );

  static ColorScheme lightColorScheme = ColorScheme.fromSeed(
    seedColor: primaryColor,
    brightness: Brightness.light,
    surface: primaryColor,
    onSurface: Colors.white,
  ).copyWith();

  static ColorScheme darkColorScheme = ColorScheme.fromSeed(
    seedColor: primaryColor,
    brightness: Brightness.dark,
  );

  static ThemeData get lightTheme {
    // return ThemeData.light();
    return ThemeData.from(colorScheme: lightColorScheme).copyWith(
      floatingActionButtonTheme: faButtonTheme,
      useMaterial3: true,
    );
  }

  static ThemeData get darkTheme {
    return ThemeData.from(
      colorScheme: darkColorScheme,
      useMaterial3: true,
    ).copyWith(
      floatingActionButtonTheme: faButtonTheme,
    );
  }
}
