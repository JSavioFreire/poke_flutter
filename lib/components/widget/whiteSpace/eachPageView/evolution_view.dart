import 'package:flutter/material.dart';
import 'package:poke_flutter/api/fetch_evolutions.dart';

class EvolutionView extends StatelessWidget {
  final String urlEvolution;
  const EvolutionView({super.key, required this.urlEvolution});

  @override
  Widget build(BuildContext context) {
    EvolutionProvider controller = EvolutionProvider();
    controller.callApiPok(urlEvolution);
    return AnimatedBuilder(
        animation: Listenable.merge([controller.loadingEvolution]),
        builder: ((context, child) => controller.loadingEvolution.value
            ? const CircularProgressIndicator()
            : AnimatedBuilder(
                animation: Listenable.merge(
                    [controller.evolution, controller.evolution]),
                builder: ((context, child) {
                  return Column(
                    children: [
                      Text(controller.evolution.value['chain']['species']
                          ['name']),
                      Text(controller.evolution.value['chain']['evolves_to'][0]
                          ['species']['name']),
                      Text(controller.evolution.value['chain']['evolves_to'][0]
                          ['evolves_to'][0]['species']['name']),
                    ],
                  );
                }))));
  }
}
