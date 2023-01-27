import 'package:flutter/material.dart';

class IdPokemon extends StatelessWidget {
  final String id;
  const IdPokemon({super.key, required this.id});

  @override
  Widget build(BuildContext context) {
    return id.length == 1
        ? Text(
            '#00$id',
            style: Theme.of(context).textTheme.titleSmall,
          )
        : id.length == 2
            ? Text(
                '#0$id',
                style: Theme.of(context).textTheme.titleSmall,
              )
            : Text(
                '#$id',
                style: Theme.of(context).textTheme.titleSmall,
              );
  }
}
