import 'package:flutter/material.dart';
import 'package:poke_flutter/controller/color_box_provider.dart';
import 'package:provider/provider.dart';

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
      child: Consumer<ColorBoxProvider>(
        builder: ((BuildContext context, value, Widget? widget) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Ink(
              height: 50,
              decoration: BoxDecoration(
                  color: value
                      .boxColor(pokemon['types'][0]['type']['name'].toString()),
                  borderRadius: BorderRadius.circular(5)),
              child: inside,
            ),
          );
        }),
      ),
    );
  }
}
