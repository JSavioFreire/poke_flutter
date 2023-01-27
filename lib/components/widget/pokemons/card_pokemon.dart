import 'package:flutter/material.dart';
import 'package:poke_flutter/controller/color_box_provider.dart';
import 'package:provider/provider.dart';

class CardPokemon extends StatelessWidget {
  final Widget inside;
  final String type;
  const CardPokemon({required this.inside, super.key, required this.type});

  @override
  Widget build(BuildContext context) {
    return Consumer<ColorBoxProvider>(
      builder: ((BuildContext context, value, Widget? widget) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 50,
            decoration: BoxDecoration(
                color: value.boxColor(type),
                borderRadius: BorderRadius.circular(10)),
            child: inside,
          ),
        );
      }),
    );
  }
}
