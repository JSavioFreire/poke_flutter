import 'package:flutter/material.dart';
import 'package:poke_flutter/components/widget/backgroundPokemonScreen/icons_pokemon_screen.dart';
import 'package:poke_flutter/components/widget/backgroundPokemonScreen/name_number_type.dart';
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
          child: Padding(
            padding: const EdgeInsets.fromLTRB(8, 30, 8, 0),
            child: Column(
              children: [
                const IconsPokemonScreen(),
                NameNumberAndtypes(
                    name: pokemonApi['name'],
                    number: pokemonApi['id'].toString(),
                    types: pokemonApi['types']),
              ],
            ),
          ),
        );
      }),
    );
  }
}
