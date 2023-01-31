import 'package:flutter/material.dart';
import 'package:poke_flutter/controller/color_box_provider.dart';

class CardPokemon extends StatelessWidget {
  final Widget inside;
  final Map pokemon;
  const CardPokemon({required this.inside, super.key, required this.pokemon});

  @override
  Widget build(BuildContext context) {
    return InkWell(
        borderRadius: BorderRadius.circular(10),
        onTap: () {
          Navigator.pushNamed(context, '/pokemon', arguments: pokemon);
        },
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Ink(
            height: 50,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: ColorBoxProvider()
                    .boxColor(pokemon['types'][0]['type']['name'].toString())),
            child: inside,
          ),
        ));
  }
}
