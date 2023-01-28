import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:poke_flutter/theme/theme_colors.dart';

ThemeData myTheme = ThemeData(
    fontFamily: GoogleFonts.nunitoSans().fontFamily,
    iconTheme: const IconThemeData(color: ThemeColors.myGrey, size: 35),
    textTheme: const TextTheme(
      titleLarge: TextStyle(
        fontSize: 40,
        fontWeight: FontWeight.bold,
        color: ThemeColors.myGrey,
      ),
      bodyMedium: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w600,
        color: ThemeColors.greyMedium,
      ),
      bodyLarge: TextStyle(fontSize: 18, color: Colors.white),
      bodySmall: TextStyle(fontSize: 13, color: Colors.white),
      titleSmall: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w900,
          color: ThemeColors.greyLight7),
      displayLarge: TextStyle(
          fontSize: 18, fontWeight: FontWeight.w900, color: Colors.white),
    ),
    textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
            textStyle: const TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w600,
    ))));
