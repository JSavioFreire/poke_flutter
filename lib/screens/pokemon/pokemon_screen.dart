import 'package:flutter/material.dart';
import 'package:poke_flutter/components/sections/pokemon_screen/background.dart';
import 'package:poke_flutter/components/sections/pokemon_screen/image_center.dart';
import 'package:poke_flutter/components/sections/pokemon_screen/white_space.dart';

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
        WhiteSpace(api: arguments),
        ImageCenter(
          image: arguments['sprites']['other']['official-artwork']
              ['front_default'],
        )
      ],
    ));
  }
}
