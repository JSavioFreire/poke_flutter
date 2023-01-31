import 'package:flutter/material.dart';
import 'package:poke_flutter/theme/theme_colors.dart';

class TitlePageView extends StatelessWidget {
  final int currentPage;
  final Function changePageButton;
  const TitlePageView(
      {required this.currentPage, super.key, required this.changePageButton});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(25, 60, 25, 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TextButton(
            onPressed: () {
              changePageButton(0);
            },
            child: Text('About',
                style: TextStyle(
                    color: currentPage == 0
                        ? ThemeColors.myGrey
                        : ThemeColors.greyMedium)),
          ),
          TextButton(
            onPressed: () {
              changePageButton(1);
            },
            child: Text('Base Stats',
                style: TextStyle(
                    color: currentPage == 1
                        ? ThemeColors.myGrey
                        : ThemeColors.greyMedium)),
          ),
          TextButton(
            onPressed: () {
              changePageButton(2);
            },
            child: Text('Evolution',
                style: TextStyle(
                    color: currentPage == 2
                        ? ThemeColors.myGrey
                        : ThemeColors.greyMedium)),
          ),
        ],
      ),
    );
  }
}
