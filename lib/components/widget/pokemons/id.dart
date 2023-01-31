import 'package:flutter/material.dart';
import 'package:poke_flutter/hooks/to_pokemon_id.dart';

class IdPokemon extends StatelessWidget {
  final String id;
  const IdPokemon({super.key, required this.id});

  @override
  Widget build(BuildContext context) {
    return Text(
      ToPokemonId().toPokemonId(id),
      style: Theme.of(context).textTheme.titleSmall,
    );
  }
}
