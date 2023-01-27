import 'package:flutter/material.dart';
import 'package:poke_flutter/components/sections/header/header.dart';
import 'package:poke_flutter/components/sections/pokemons/pokemons.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: const [Header(), Pokemons()],
      ),
    );
  }
}
