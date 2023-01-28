import 'package:flutter/material.dart';
import 'package:poke_flutter/theme/theme_colors.dart';

class LinearBaseStats extends StatelessWidget {
  final int valueLinear;
  const LinearBaseStats({super.key, required this.valueLinear});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: 45,
            child: Text(
              valueLinear.toString(),
              style: const TextStyle(
                color: ThemeColors.myGrey,
              ),
            ),
          ),
          Expanded(
            child: Container(
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
              ),
              child: LinearProgressIndicator(
                value: valueLinear / 100,
                minHeight: 12,
                color: valueLinear <= 50 ? Colors.red : Colors.green,
                backgroundColor: ThemeColors.greyLight7,
              ),
            ),
          ),
          Padding(
              padding: const EdgeInsets.only(
                left: 8.0,
              ),
              child: valueLinear > 100
                  ? const Text(
                      '+',
                      style: TextStyle(color: Colors.green),
                    )
                  : const Text(''))
        ],
      ),
    );
  }
}
