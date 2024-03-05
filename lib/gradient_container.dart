import 'package:flutter/material.dart';
import 'package:my_app/dice_roller.dart';

const startAlignment = Alignment.topCenter;
const endAlignment = Alignment.bottomCenter;

// ignore: must_be_immutable
class GradientContainer extends StatelessWidget {
  const GradientContainer(this.colors, {super.key});

  // added the additional constructor to make the same theme reusable.
  const GradientContainer.triColor({super.key}): colors = const [Colors.orange, Colors.white, Colors.green];

  final List<Color> colors;


  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colors,
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: const Center(
        child: DiceRoller(),
      ),
    );
  }
}
