import 'package:flutter/material.dart';
import 'package:poke_flutter/theme/theme_colors.dart';

class ColorBoxProvider extends ChangeNotifier {
  dynamic boxColor(type) {
    if (type == 'grass') {
      return ThemeColors.typeColors['grass'];
    }
    if (type == 'fire') {
      return ThemeColors.typeColors['fire'];
    }
    if (type == 'poison') {
      return ThemeColors.typeColors['poison'];
    }
    if (type == 'water') {
      return ThemeColors.typeColors['water'];
    }
    if (type == 'electric') {
      return ThemeColors.typeColors['electric'];
    }
    if (type == 'normal') {
      return ThemeColors.typeColors['normal'];
    }
    if (type == 'bug') {
      return ThemeColors.typeColors['bug'];
    }
    if (type == 'ground') {
      return ThemeColors.typeColors['ground'];
    }
    if (type == 'fairy') {
      return ThemeColors.typeColors['fairy'];
    }
    if (type == 'dark') {
      return ThemeColors.typeColors['dark'];
    }
    if (type == 'dragon') {
      return ThemeColors.typeColors['dragon'];
    }
    if (type == 'psychic') {
      return ThemeColors.typeColors['psychic'];
    }
    if (type == 'rock') {
      return ThemeColors.typeColors['rock'];
    }
    if (type == 'fighting') {
      return ThemeColors.typeColors['fighting'];
    }
    if (type == 'ghost') {
      return ThemeColors.typeColors['ghost'];
    }
    if (type == 'ice') {
      return ThemeColors.typeColors['ice'];
    }
    if (type == 'steel') {
      return ThemeColors.typeColors['steel'];
    }
    if (type == 'flying') {
      return ThemeColors.typeColors['flying'];
    }

    return Colors.grey;
  }
}
