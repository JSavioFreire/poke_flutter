import 'package:flutter/material.dart';
import 'package:poke_flutter/api/fetch_each.dart';
import 'package:poke_flutter/components/widget/whiteSpace/eachPageView/evolution_view.dart';

class CallingApiToEvolution extends StatelessWidget {
  final Map api;
  const CallingApiToEvolution({super.key, required this.api});

  @override
  Widget build(BuildContext context) {
    EachProvider controller = EachProvider();
    controller.callApiPok(
      api['species']['url'],
    );
    return AnimatedBuilder(
        animation: Listenable.merge([controller.loadingComplete]),
        builder: ((context, child) => controller.loadingComplete.value
            ? const CircularProgressIndicator()
            : AnimatedBuilder(
                animation: Listenable.merge([controller.eachComplete]),
                builder: (context, child) {
                  return EvolutionView(
                      urlEvolution: controller
                          .eachComplete.value['evolution_chain']['url']
                          .toString());
                })));
  }
}
