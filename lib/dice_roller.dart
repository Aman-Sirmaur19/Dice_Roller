import 'dart:math';
import 'package:flutter/material.dart';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var currentDiceRoll = 2;

  void rollDice() {
    setState(() {
      currentDiceRoll = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/$currentDiceRoll.png',
          width: 150,
        ),
        const SizedBox(height: 20),
        ElevatedButton(
          onPressed: rollDice,
          style: ElevatedButton.styleFrom(
              // padding: const EdgeInsets.only(
              //   top: 20,
              // ),
              backgroundColor: Colors.brown,
              foregroundColor: Colors.white),
          child: const Text(
            'Roll Dice',
            style: TextStyle(fontSize: 20),
          ),
        )
      ],
    );
  }
}
