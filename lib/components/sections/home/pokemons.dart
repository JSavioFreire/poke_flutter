import 'package:flutter/material.dart';
import 'package:poke_flutter/api/fetch_api.dart';
import 'package:poke_flutter/components/widget/pokemons/inside_card_pokemon.dart';
import 'package:poke_flutter/components/widget/pokemons/loading.dart';

class Pokemons extends StatelessWidget {
  const Pokemons({super.key});

  @override
  Widget build(BuildContext context) {
    InitialApiProvider controller = InitialApiProvider();
    controller.callApi();

    return AnimatedBuilder(
        animation: Listenable.merge([controller.loading, controller.each]),
        builder: ((context, child) => controller.loading.value
            ? const LoadingPokemon()
            : AnimatedBuilder(
                animation: Listenable.merge([controller.each]),
                builder: (context, child) {
                  return Expanded(
                    child: GridView.builder(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            childAspectRatio:
                                MediaQuery.of(context).size.width /
                                    (MediaQuery.of(context).size.height / 3.5)),
                        itemCount: controller.each.value.length,
                        itemBuilder: ((context, index) {
                          return InsideCardPokemon(
                              name: controller.each.value[index].name,
                              url: controller.each.value[index].url);
                        })),
                  );
                })));
  }
}
