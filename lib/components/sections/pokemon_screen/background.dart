import 'package:flutter/material.dart';
import 'package:poke_flutter/components/widget/backgroundPokemonScreen/icons_pokemon_screen.dart';
import 'package:poke_flutter/components/widget/backgroundPokemonScreen/name_number_type.dart';
import 'package:poke_flutter/controller/color_box_provider.dart';

class BackgroundPokemon extends StatelessWidget {
  final Map pokemonApi;
  const BackgroundPokemon({super.key, required this.pokemonApi});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorBoxProvider()
          .boxColor(pokemonApi['types'][0]['type']['name'].toString()),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(8, 50, 8, 0),
        child: Column(
          children: [
            const IconsPokemonScreen(),
            NameNumberAndtypes(
                name: pokemonApi['name'],
                number: pokemonApi['id'].toString(),
                types: pokemonApi['types']),
            Image.asset(
              'assets/pokeball.png',
              opacity: const AlwaysStoppedAnimation(.2),
            )
          ],
        ),
      ),
    );
  }
}
