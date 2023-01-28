import 'package:flutter/material.dart';

class IdPokemonScreen extends StatelessWidget {
  final String id;
  const IdPokemonScreen({required this.id, super.key});

  @override
  Widget build(BuildContext context) {
    return id.length == 1
        ? Text(
            '#00$id',
            style: Theme.of(context).textTheme.displayLarge,
          )
        : id.length == 2
            ? Text(
                '#0$id',
                style: Theme.of(context).textTheme.displayLarge,
              )
            : Text(
                '#$id',
                style: Theme.of(context).textTheme.displayLarge,
              );
  }
}
