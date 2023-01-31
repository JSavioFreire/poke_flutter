import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:poke_flutter/api/fetch_evolutions.dart';
import 'package:poke_flutter/components/widget/cardEvolutionView/card_evolution_view.dart';

class EvolutionView extends StatelessWidget {
  final String urlEvolution;
  const EvolutionView(
      {super.key, required this.urlEvolution});

  @override
  Widget build(BuildContext context) {
    EvolutionProvider controller = EvolutionProvider();
    controller.callApiPok(urlEvolution);
    return AnimatedBuilder(
        animation: Listenable.merge([controller.loadingEvolution]),
        builder: ((context, child) => controller.loadingEvolution.value
            ? SizedBox(
                width: 50,
                child: Lottie.network(
                    'https://assets5.lottiefiles.com/private_files/lf30_mx5w1q03.json'))
            : AnimatedBuilder(
                animation: Listenable.merge([controller.evolution]),
                builder: ((context, child) {
                  return ListView(children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CardEvolutionView(
                          name: controller.evolution.value['chain']['species']
                              ['name']),
                    ),
                    for (int i = 0;
                        i <
                            controller
                                .evolution.value['chain']['evolves_to'].length;
                        i++)
                      controller.evolution.value['chain']['evolves_to'].isEmpty
                          ? Container()
                          : Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: CardEvolutionView(
                                  name: controller.evolution.value['chain']
                                      ['evolves_to'][i]['species']['name']),
                            ),
                    controller.evolution.value['chain']['evolves_to'].isEmpty
                        ? Container()
                        : controller
                                .evolution
                                .value['chain']['evolves_to'][0]['evolves_to']
                                .isEmpty
                            ? Container()
                            : Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: CardEvolutionView(
                                    name: controller.evolution.value['chain']
                                            ['evolves_to'][0]['evolves_to'][0]
                                        ['species']['name']),
                              )
                  ]);
                }))));
  }
}
