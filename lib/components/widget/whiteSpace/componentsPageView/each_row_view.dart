import 'package:flutter/material.dart';

class EachRow extends StatelessWidget {
  final String name;
  final Widget value;
  const EachRow({super.key, required this.name, required this.value});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 30),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 80),
            child: SizedBox(width: 80, child: Text(name)),
          ),
          value
        ],
      ),
    );
  }
}
