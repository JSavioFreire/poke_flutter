import 'package:flutter/material.dart';
import 'package:poke_flutter/components/widget/whiteSpace/componentsPageView/each_row_view.dart';
import 'package:poke_flutter/components/widget/whiteSpace/componentsPageView/linear_base_stats.dart';

class BaseStats extends StatelessWidget {
  final int hp;
  final int atk;
  final int def;
  final int sAtk;
  final int sDef;
  final int speed;

  const BaseStats(
      {super.key,
      required this.hp,
      required this.atk,
      required this.def,
      required this.sAtk,
      required this.sDef,
      required this.speed});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        EachRow(
            name: 'Hp',
            value: LinearBaseStats(
              valueLinear: hp,
            )),
        EachRow(
            name: 'Attack',
            value: LinearBaseStats(
              valueLinear: atk,
            )),
        EachRow(
            name: 'Defense',
            value: LinearBaseStats(
              valueLinear: def,
            )),
        EachRow(
            name: 'Sp Atk',
            value: LinearBaseStats(
              valueLinear: sAtk,
            )),
        EachRow(
            name: 'Sp Def',
            value: LinearBaseStats(
              valueLinear: sDef,
            )),
        EachRow(
            name: 'Speed',
            value: LinearBaseStats(
              valueLinear: speed,
            ))
      ],
    );
  }
}
