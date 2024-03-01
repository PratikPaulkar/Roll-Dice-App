import 'package:flutter/material.dart';
import 'dart:math';

final randomizer = Random();

class DiceRoller extends StatefulWidget{
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  
  var activeDice = 'assets/images/dice-images/dice-1.png';
  void rollDice() {
    // instead of using Random() here you can take it in a variable for better memory usage.
    var diceNumber = randomizer.nextInt(6) + 1;
    setState(() {{
      activeDice = 'assets/images/dice-images/dice-$diceNumber.png';
    }});
  }
  
  @override
  build(context){
    return Column(
          // to take as minimum width as required and not the full width
          mainAxisSize: MainAxisSize.min,
          children: [
            // SizedBox widget is added for the image because if it takes time 
            //for loading the button is getting shifted upward.
            SizedBox(
              height: 200,
              child: Image.asset(
                activeDice,
                width: 200,
              ),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: rollDice,
              style: TextButton.styleFrom(
                textStyle: const TextStyle(
                  fontSize: 26,
                )
              ),
              child: const Text('Roll Dice'),
            )
          ],
        );
  }
}