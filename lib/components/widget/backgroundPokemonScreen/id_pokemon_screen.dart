import 'package:flutter/material.dart';
import 'package:poke_flutter/hooks/to_pokemon_id.dart';

class IdPokemonScreen extends StatelessWidget {
  final String id;
  const IdPokemonScreen({required this.id, super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      ToPokemonId().toPokemonId(id),
      style: Theme.of(context).textTheme.displayLarge,
    );
  }
}
