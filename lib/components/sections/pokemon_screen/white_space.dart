import 'package:flutter/material.dart';
import 'package:poke_flutter/components/widget/whiteSpace/title_page_view.dart';

class WhiteSpace extends StatefulWidget {
  const WhiteSpace({super.key});

  @override
  State<WhiteSpace> createState() => _WhiteSpaceState();
}

class _WhiteSpaceState extends State<WhiteSpace> {
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    final controllerPageView = PageController(
      initialPage: 0,
    );

    void changePageButton(e) {
      controllerPageView.jumpToPage(e);
    }

    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.vertical(top: Radius.circular(35))),
          height: MediaQuery.of(context).size.height * 0.5,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(30, 60, 30, 0),
            child: Column(
              children: [
                TitlePageView(
                  currentPage: currentPage,
                  changePageButton: changePageButton,
                ),
                Expanded(
                  child: PageView(
                    controller: controllerPageView,
                    onPageChanged: (value) => {
                      setState(() {
                        currentPage = value;
                      })
                    },
                    children: [
                      Text('page1'),
                      Text('page 2'),
                      Text('page3'),
                      Text('page4'),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
