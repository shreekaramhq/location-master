import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_colors.dart';

class MasterTheme {
  static lightTheme() {
    return ThemeData(
      textTheme: GoogleFonts.notoSansTextTheme(),
      colorScheme: ColorScheme.fromSeed(
        seedColor: kcGreen,
        primary: kcBluish,
        secondary: kcBlue,
        onPrimary: kcMediumGreyColor, // used for text on appbar
        brightness: Brightness.light,
      ),
      visualDensity: VisualDensity.adaptivePlatformDensity,
      appBarTheme: const AppBarTheme(
        backgroundColor: kcBlue,
        foregroundColor: kcWhite,
        elevation: 1,
        centerTitle: true,
      ),
      scaffoldBackgroundColor: kcWhite,
    );
  }
}
