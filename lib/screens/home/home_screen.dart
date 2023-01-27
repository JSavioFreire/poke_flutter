import 'package:flutter/material.dart';
import 'package:poke_flutter/components/sections/home/header.dart';
import 'package:poke_flutter/components/sections/home/pokemons.dart';

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
