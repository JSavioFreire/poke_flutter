import 'package:flutter/material.dart';
import 'package:poke_flutter/components/widget/backgroundPokemonScreen/id_pokemon_screen.dart';
import 'package:poke_flutter/components/widget/backgroundPokemonScreen/types.dart';
import 'package:poke_flutter/hooks/to_capitalize.dart';

class NameNumberAndtypes extends StatelessWidget {
  final String name;
  final String number;
  final List types;
  const NameNumberAndtypes(
      {super.key,
      required this.name,
      required this.number,
      required this.types});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 8),
                child: Text(
                  Capitalize().toCapitalize(name),
                  style: const TextStyle(
                      fontSize: 40,
                      color: Colors.white,
                      fontWeight: FontWeight.w800),
                ),
              ),
              TypesPokemonsScreen(type: types)
            ],
          ),
          IdPokemonScreen(id: number)
        ],
      ),
    );
  }
}
