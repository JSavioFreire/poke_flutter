import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:poke_flutter/api/fetch_each.dart';
import 'package:poke_flutter/components/widget/pokemons/card_pokemon.dart';
import 'package:poke_flutter/components/widget/pokemons/image.dart';
import 'package:poke_flutter/components/widget/pokemons/loading_card.dart';
import 'package:poke_flutter/components/widget/pokemons/type.dart';

class InsideCardPokemon extends StatelessWidget {
  final String name;
  final String url;
  const InsideCardPokemon({super.key, required this.name, required this.url});

  @override
  Widget build(BuildContext context) {
    EachProvider controllerEachProvider = EachProvider();
    controllerEachProvider.callApiPok(url);
    return AnimatedBuilder(
        animation: Listenable.merge([
          controllerEachProvider.eachComplete,
          controllerEachProvider.loadingComplete
        ]),
        builder: (context, child) {
          return controllerEachProvider.loadingComplete.value
              ? const LoadingCard()
              : CardPokemon(
                pokemon: controllerEachProvider.eachComplete.value ,
               
                  inside: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 189,
                        child: Stack(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    name[0].toUpperCase() +
                                        name.substring(1).toLowerCase(),
                                    style:
                                        Theme.of(context).textTheme.bodyLarge,
                                  ),
                                  TypesPokemons(
                                    type: controllerEachProvider
                                        .eachComplete.value['types'],
                                  )
                                ],
                              ),
                            ),
                            ImagePokemon(
                              image: controllerEachProvider
                                      .eachComplete.value['sprites']['other']
                                  ['official-artwork']['front_default'],
                              id: controllerEachProvider
                                  .eachComplete.value['id']
                                  .toString(),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                );
        });
  }
}
