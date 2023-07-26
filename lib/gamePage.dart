import 'dart:math';

import 'package:drupart_staj_2023/diceFive.dart';
import 'package:drupart_staj_2023/diceFour.dart';
import 'package:drupart_staj_2023/diceOne.dart';
import 'package:drupart_staj_2023/diceSix.dart';
import 'package:drupart_staj_2023/diceThree.dart';
import 'package:drupart_staj_2023/diceTwo.dart';
import 'package:flutter/material.dart';

class GamePage extends StatefulWidget {
  const GamePage({super.key, this.pageTitle});

  final pageTitle;

  @override
  State<GamePage> createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {
  int diceNumber = 0;
  static final Set<int> _setOfInts = {};

  void randomNumberGenerator() {
    setState(() {
      diceNumber = Random().nextInt(6) + 1;
      if (_setOfInts.contains(diceNumber)) {
        _setOfInts.clear();
        return randomNumberGenerator();
      } else {
        _setOfInts.add(diceNumber);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.pageTitle),
      ),
      body: Center(
        child: Column(
          children: [
            Spacer(),
            if (diceNumber == 1) ...[
              const DiceOne(),
            ] else if (diceNumber == 2) ...[
              const DiceTwo(),
            ] else if (diceNumber == 3) ...[
              const DiceThree(),
            ] else if (diceNumber == 4) ...[
              const DiceFour(),
            ] else if (diceNumber == 5) ...[
              const DiceFive(),
            ] else if (diceNumber == 6) ...[
              const DiceSix(),
            ] else ...[
              const SizedBox(
                height: 300,
                width: 300,
              ),
            ],
            ElevatedButton(
              onPressed: () {
                randomNumberGenerator();
              },
              child: const Text('Roll Dice!'),
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
