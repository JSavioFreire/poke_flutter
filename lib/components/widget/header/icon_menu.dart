import 'package:flutter/material.dart';

class IconMenu extends StatelessWidget {
  const IconMenu({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SizedBox(
      width: 150,
      height: 165,
      child: Stack(
        children: [
          Positioned(
            top: -size.width * 0.485,
            right: -size.width * 1.19,
            child: Image.asset(
              'assets/pokeball.png',
              opacity: const AlwaysStoppedAnimation(.2),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(80, 30, 0, 0),
            child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.menu,
                )),
          )
        ],
      ),
    );
  }
}
