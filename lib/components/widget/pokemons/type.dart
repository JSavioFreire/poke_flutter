import 'package:flutter/material.dart';
import 'package:poke_flutter/hooks/to_capitalize.dart';
import 'package:poke_flutter/theme/theme_colors.dart';

class TypesPokemons extends StatelessWidget {
  final List type;
  const TypesPokemons({super.key, required this.type});

  @override
  Widget build(BuildContext context) {
    return type.length == 1
        ? Container(
            decoration: BoxDecoration(
                color: ThemeColors.greyLight5,
                borderRadius: BorderRadius.circular(10)),
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 0),
            child: Text(
              Capitalize().toCapitalize(type[0]['type']['name']),
              style: Theme.of(context).textTheme.bodySmall,
            ),
          )
        : Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                    color: ThemeColors.greyLight5,
                    borderRadius: BorderRadius.circular(10)),
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 0),
                child: Text(
                  Capitalize().toCapitalize(type[0]['type']['name']),
                  style: Theme.of(context).textTheme.bodySmall,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: ThemeColors.greyLight5,
                      borderRadius: BorderRadius.circular(10)),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 0),
                  child: Text(
                    Capitalize().toCapitalize(type[1]['type']['name']),
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                ),
              ),
            ],
          );
  }
}
