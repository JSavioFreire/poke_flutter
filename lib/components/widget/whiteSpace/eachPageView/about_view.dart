import 'package:flutter/material.dart';
import 'package:poke_flutter/api/fetch_more_about.dart';
import 'package:poke_flutter/components/widget/whiteSpace/componentsPageView/each_row_view.dart';
import 'package:poke_flutter/theme/theme_colors.dart';

class AboutView extends StatelessWidget {
  final String weight;
  final String height;
  final String urlApi;
  final String baseExp;
  final List abilities;
  const AboutView(
      {super.key,
      required this.baseExp,
      required this.weight,
      required this.height,
      required this.urlApi,
      required this.abilities});

  @override
  Widget build(BuildContext context) {
    MoreAboutProvider controller = MoreAboutProvider();
    controller.callApiPok(urlApi);

    return Column(
      children: [
        EachRow(
            name: 'Species',
            value: AnimatedBuilder(
                animation: Listenable.merge([controller.moreAboutComplete]),
                builder: (context, child) {
                  return controller.loadingComplete.value
                      ? const Text('')
                      : Text(
                          controller.moreAboutComplete.value['genera'][7]
                              ['genus'],
                          style: const TextStyle(color: ThemeColors.myGrey),
                        );
                })),
        EachRow(
            name: 'Height',
            value: Text(
              height.length == 1
                  ? '0,$height M'
                  : '${height.substring(0, height.length - 1)},${height[height.length - 1]} M',
              style: const TextStyle(color: ThemeColors.myGrey),
            )),
        EachRow(
            name: 'Weight',
            value: Text(
              '${weight.substring(0, weight.length - 1)},${weight[weight.length - 1]} kg',
              style: const TextStyle(color: ThemeColors.myGrey),
            )),
        EachRow(
            name: 'Base Exp',
            value: Text(
              baseExp,
              style: const TextStyle(color: ThemeColors.myGrey),
            )),
        EachRow(
            name: 'Abilitites',
            value: Flexible(
                child: abilities.length > 1
                    ? Text(
                        '${abilities[0]['ability']['name']}, ${abilities[1]['ability']['name']}.',
                        style: const TextStyle(
                          color: ThemeColors.myGrey,
                        ),
                      )
                    : Text(
                        '${abilities[0]['ability']['name']}.',
                        style: const TextStyle(
                          color: ThemeColors.myGrey,
                        ),
                      )))
      ],
    );
  }
}
