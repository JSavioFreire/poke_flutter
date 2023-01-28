import 'package:flutter/material.dart';
import 'package:poke_flutter/components/widget/whiteSpace/page_view.dart';
import 'package:poke_flutter/components/widget/whiteSpace/title_page_view.dart';

class WhiteSpace extends StatefulWidget {
  final Map api;
  const WhiteSpace({super.key, required this.api});

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
      controllerPageView.animateToPage(
        e,
        duration: const Duration(milliseconds: 500),
        curve: Curves.linearToEaseOut,
      );
    }

    void newSetState(value) {
      setState(() {
        currentPage = value;
      });
    }

    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.vertical(top: Radius.circular(35))),
          height: MediaQuery.of(context).size.height * 0.5,
          child: Column(
            children: [
              TitlePageView(
                currentPage: currentPage,
                changePageButton: changePageButton,
              ),
              PageViewWhiteSpace(
                setstate: newSetState,
                controllerPageView: controllerPageView,
                api: widget.api,
              )
            ],
          ),
        ),
      ],
    );
  }
}
