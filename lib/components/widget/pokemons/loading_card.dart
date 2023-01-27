import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LoadingCard extends StatelessWidget {
  const LoadingCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 50,
            decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(10)),
            child: Lottie.network(
                  'https://assets9.lottiefiles.com/private_files/lf30_mx5w1q03.json'),
          ),
        );
  }
}