import 'package:flutter/material.dart';
import 'package:poke_flutter/components/widget/pokemons/id.dart';

class ImagePokemon extends StatelessWidget {
  final String image;
  final String id;
  const ImagePokemon({required this.image, super.key, required this.id});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 10,
      left: 50,
      child: Stack(children: [
        Positioned(left: 80, child: IdPokemon(id: id)),
        SizedBox(
            width: 280,
            child: Image.asset(
              'assets/pokeball.png',
              opacity: const AlwaysStoppedAnimation(.2),
            )),
        Positioned(
          top: 10,
          left: 50,
          child: SizedBox(
            width: 90,
            child: Image.network(image),
          ),
        ),
      ]),
    );
  }
}
