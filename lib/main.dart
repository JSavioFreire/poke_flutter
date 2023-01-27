import 'package:flutter/material.dart';
import 'package:poke_flutter/controller/color_box_provider.dart';
import 'package:poke_flutter/screens/home/home_screen.dart';
import 'package:poke_flutter/screens/pokemon/pokemon_screen.dart';
import 'package:poke_flutter/theme/theme.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: ((context) => ColorBoxProvider()))
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: myTheme,
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
        '/pokemon': (context) => const PokemonScreen()
      },
    );
  }
}
