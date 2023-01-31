import 'package:flutter/material.dart';
import 'package:poke_flutter/components/widget/whiteSpace/componentsPageView/calling_api_to_evolution.dart';
import 'package:poke_flutter/components/widget/whiteSpace/eachPageView/about_view.dart';
import 'package:poke_flutter/components/widget/whiteSpace/eachPageView/base_stats.dart';

class PageViewWhiteSpace extends StatelessWidget {
  final Function setstate;
  final PageController controllerPageView;
  final Map api;
  const PageViewWhiteSpace(
      {super.key,
      required this.setstate,
      required this.controllerPageView,
      required this.api});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: PageView(
        controller: controllerPageView,
        onPageChanged: (value) => {setstate(value)},
        children: [
          AboutView(
            weight: api['weight'].toString(),
            height: api['height'].toString(),
            baseExp: api['base_experience'].toString(),
            abilities: api['abilities'],
          ),
          BaseStats(
              hp: api['stats'][0]['base_stat'],
              atk: api['stats'][1]['base_stat'],
              def: api['stats'][2]['base_stat'],
              sAtk: api['stats'][3]['base_stat'],
              sDef: api['stats'][4]['base_stat'],
              speed: api['stats'][5]['base_stat']),
          CallingApiToEvolution(api: api),
        ],
      ),
    );
  }
}
