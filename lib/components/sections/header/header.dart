import 'package:flutter/material.dart';
import 'package:poke_flutter/components/widget/header/icon_menu.dart';
import 'package:poke_flutter/components/widget/header/search.dart';
import 'package:poke_flutter/components/widget/header/title_and_back.dart';
import 'package:poke_flutter/theme/theme_colors.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          border: Border(
              bottom: BorderSide(width: 2, color: ThemeColors.greyLight))),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [TitlePokedex(), Search()],
            ),
          ),
          const IconMenu()
        ],
      ),
    );
  }
}
