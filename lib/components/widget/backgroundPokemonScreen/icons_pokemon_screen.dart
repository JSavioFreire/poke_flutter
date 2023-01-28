import 'package:flutter/material.dart';
import 'package:fluttericon/font_awesome_icons.dart';

class IconsPokemonScreen extends StatelessWidget {
  const IconsPokemonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_rounded,
              color: Colors.white,
            )),
        IconButton(
            onPressed: () {},
            icon: const Icon(
              FontAwesome.heart_empty,
              color: Colors.white,
            ))
      ],
    );
  }
}
