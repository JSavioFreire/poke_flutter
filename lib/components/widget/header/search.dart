import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:poke_flutter/theme/theme_colors.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            color: ThemeColors.greyLight,
            borderRadius: BorderRadius.circular(10)),
        width: 200,
        child: TextFormField(
          decoration: const InputDecoration(
              hintText: 'Busque pelo Pokemon',
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(left: 10)),
        ));
  }
}
