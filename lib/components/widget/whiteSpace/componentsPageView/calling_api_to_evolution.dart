import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
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
            ? Lottie.network(
                'https://assets5.lottiefiles.com/private_files/lf30_mx5w1q03.json')
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
