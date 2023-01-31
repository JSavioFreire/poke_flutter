import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:poke_flutter/api/fetch_with_name.dart';
import 'package:poke_flutter/hooks/to_capitalize.dart';
import 'package:poke_flutter/hooks/to_pokemon_id.dart';
import 'package:poke_flutter/theme/theme_colors.dart';

class CardEvolutionView extends StatelessWidget {
  final String name;
  const CardEvolutionView({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    WithNameProvider controller = WithNameProvider();
    controller.callApiPok(name);

    return AnimatedBuilder(
        animation: Listenable.merge([controller.loadingData]),
        builder: ((context, child) => controller.loadingData.value
            ? LottieBuilder.network(
                'https://assets5.lottiefiles.com/private_files/lf30_mx5w1q03.json')
            : AnimatedBuilder(
                animation: Listenable.merge([controller.data]),
                builder: ((context, child) {
                  return SizedBox(
                    width: MediaQuery.of(context).size.width * 8,
                    child: TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/pokemon',
                            arguments: controller.data.value);
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        decoration: BoxDecoration(
                            color: ThemeColors.greyLight,
                            borderRadius: BorderRadius.circular(10)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Text(
                                  Capitalize().toCapitalize(name),
                                  style: const TextStyle(
                                      color: ThemeColors.myGrey),
                                )
                              ],
                            ),
                            Text(
                                ToPokemonId().toPokemonId(
                                    controller.data.value['id'].toString()),
                                style:
                                    const TextStyle(color: ThemeColors.myGrey)),
                            Column(
                              children: [
                                SizedBox(
                                  width: 65,
                                  child: Image.network(controller
                                          .data.value['sprites']['other']
                                      ['official-artwork']['front_default']),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                }))));
  }
}
