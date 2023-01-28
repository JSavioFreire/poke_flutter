import 'package:flutter/material.dart';
import 'package:poke_flutter/components/sections/pokemon_screen/background.dart';

class PokemonScreen extends StatelessWidget {
  const PokemonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final arguments = (ModalRoute.of(context)?.settings.arguments ??
        <String, dynamic>{}) as Map;

    return Scaffold(
        body: Stack(
      children: [
        BackgroundPokemon(pokemonApi: arguments),
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius:
                      BorderRadius.vertical(top: Radius.circular(35))),
              height: MediaQuery.of(context).size.height * 0.5,
            ),
          ],
        ),
        Center(
          child: Padding(
            padding: const EdgeInsets.only(bottom: 150),
            child: SizedBox(
              width: 280,
              child: Image.network(arguments['sprites']['other']
                  ['official-artwork']['front_default']),
            ),
          ),
        ),
      ],
    ));
  }
}
