import 'package:flutter/material.dart';

const primaryColor = Color(0xffFFD701);

class LocationMasterTheme {
  static FloatingActionButtonThemeData faButtonTheme = const FloatingActionButtonThemeData(
    backgroundColor: Color(0xff4B684E),
    foregroundColor: Colors.white,
  );

  static ColorScheme lightColorScheme = ColorScheme.fromSeed(
    seedColor: primaryColor,
    brightness: Brightness.light,
    surface: primaryColor,
    onSurface: Colors.black87,
    // onSurface: primaryColor,
  ).copyWith();

  static ColorScheme darkColorScheme = ColorScheme.fromSeed(
    seedColor: primaryColor,
    brightness: Brightness.dark,
    // surface: primaryColor,
    // onSurface: Colors.white,
  );

  static ThemeData get lightTheme {
    // return ThemeData.light();
    return ThemeData.from(colorScheme: lightColorScheme).copyWith(
      floatingActionButtonTheme: faButtonTheme,
      // useMaterial3: true,
      navigationBarTheme: const NavigationBarThemeData(
        backgroundColor: Color(0xffF2F0E0),
        indicatorColor: Color(0xffE6E4C0),
        surfaceTintColor: Color(0xffE6E4C0),
      ),
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
