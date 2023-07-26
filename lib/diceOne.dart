import 'package:flutter/material.dart';

class DiceOne extends StatelessWidget {
  const DiceOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(
          Radius.circular(15),
        ),
        border: Border.all(color: Colors.black),
      ),
      width: 400,
      height: 400,
      child: Center(
        child: Container(
          width: 100,
          height: 100,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(100),
            ),
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
