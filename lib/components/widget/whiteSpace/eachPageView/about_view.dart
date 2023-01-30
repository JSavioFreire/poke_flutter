import 'package:flutter/material.dart';
import 'package:poke_flutter/components/widget/whiteSpace/componentsPageView/each_row_view.dart';
import 'package:poke_flutter/hooks/to_capitalize.dart';
import 'package:poke_flutter/theme/theme_colors.dart';

class AboutView extends StatelessWidget {
  final String weight;
  final String height;
  final String baseExp;
  final List abilities;
  const AboutView(
      {super.key,
      required this.baseExp,
      required this.weight,
      required this.height,
      required this.abilities});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
                        '${Capitalize().toCapitalize(abilities[0]['ability']['name'])}, ${Capitalize().toCapitalize(abilities[1]['ability']['name'])}.',
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
