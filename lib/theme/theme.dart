import 'package:flutter/material.dart';
import 'package:poke_flutter/theme/theme_colors.dart';

ThemeData myTheme = ThemeData(
  iconTheme: const IconThemeData(color: ThemeColors.myGrey, size: 35),
  textTheme: const TextTheme(
      titleLarge: TextStyle(
        fontSize: 40,
        fontWeight: FontWeight.bold,
        color: ThemeColors.myGrey,
      ),
      bodyLarge: TextStyle(fontSize: 18, color: Colors.white),
      bodySmall: TextStyle(fontSize: 13, color: Colors.white),
      titleSmall: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w900,
          color: ThemeColors.greyLight7)),
);
