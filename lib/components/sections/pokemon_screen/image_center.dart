import 'package:flutter/material.dart';

class ImageCenter extends StatelessWidget {
  final String image;
  const ImageCenter({required this.image, super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(bottom: 150),
        child: SizedBox(
          width: 280,
          child: Image.network(image),
        ),
      ),
    );
  }
}
