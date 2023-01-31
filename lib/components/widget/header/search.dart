import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:poke_flutter/api/fetch_with_name.dart';
import 'package:poke_flutter/components/widget/pokemons/loading.dart';
import 'package:poke_flutter/theme/theme_colors.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    WithNameProvider controller = WithNameProvider();
    TextEditingController textController = TextEditingController();
    return Container(
        decoration: BoxDecoration(
            color: ThemeColors.greyLight,
            borderRadius: BorderRadius.circular(10)),
        width: 200,
        child: TextFormField(
          onEditingComplete: () {
            controller.callApiPok(textController.text);
            controller.data.value.isEmpty
                ? const AlertDialog(
                    title: Text('Dont Exist'),
                  )
                : controller.loadingData.value
                    ? const LoadingPokemon()
                    : Navigator.pushNamed(context, '/pokemon',
                        arguments: controller.data.value);
          },
          controller: textController,
          decoration: const InputDecoration(
              hintText: 'Search name or number',
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(left: 10)),
        ));
  }
}
