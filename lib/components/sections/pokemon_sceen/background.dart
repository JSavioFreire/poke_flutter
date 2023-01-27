import 'package:flutter/material.dart';
import 'package:poke_flutter/controller/color_box_provider.dart';
import 'package:provider/provider.dart';

class BackgroundPokemon extends StatelessWidget {
  final Map pokemonApi;
  const BackgroundPokemon({super.key, required this.pokemonApi});

  @override
  Widget build(BuildContext context) {
    return Consumer<ColorBoxProvider>(
      builder: ((context, value, child) {
        return Container(
          color:
              value.boxColor(pokemonApi['types'][0]['type']['name'].toString()),
          child: Column(
            children: [
              Row(
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(Icons.arrow_back_rounded)),
                  IconButton(onPressed: () {}, icon: Icon(Icons.))
                ],
              )
            ],
          ),
        );
      }),
    );
  }
}
