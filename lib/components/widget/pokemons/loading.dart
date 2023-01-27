import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LoadingPokemon extends StatelessWidget {
  const LoadingPokemon({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 170),
      child: Center(
        child: Lottie.network(
            'https://assets9.lottiefiles.com/packages/lf20_iwmd6pyr.json',
            width: 150),
      ),
    );
  }
}
