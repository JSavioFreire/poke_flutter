import 'package:flutter/material.dart';
import 'package:poke_flutter/theme/theme_colors.dart';

class TypesPokemonsScreen extends StatelessWidget {
  final List type;
  const TypesPokemonsScreen({super.key, required this.type});

  @override
  Widget build(BuildContext context) {
    return type.length == 1
        ? Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Container(
              decoration: BoxDecoration(
                  color: ThemeColors.greyLight5,
                  borderRadius: BorderRadius.circular(10)),
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 2),
              child: Text(
                type[0]['type']['name'],
                style: Theme.of(context).textTheme.bodyLarge,
              ),
            ),
          )
        : Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: ThemeColors.greyLight5,
                      borderRadius: BorderRadius.circular(10)),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 25, vertical: 2),
                  child: Text(
                    type[0]['type']['name'],
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    color: ThemeColors.greyLight5,
                    borderRadius: BorderRadius.circular(10)),
                padding:
                    const EdgeInsets.symmetric(horizontal: 25, vertical: 2),
                child: Text(
                  type[1]['type']['name'],
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
              ),
            ],
          );
  }
}
