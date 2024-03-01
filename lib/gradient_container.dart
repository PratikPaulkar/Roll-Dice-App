import 'package:flutter/material.dart';
import 'package:my_app/styled_text.dart';

const startAlignment = Alignment.topCenter;
const endAlignment = Alignment.bottomCenter;

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.colors, {super.key});
  
  // added the additional constructor to make the same theme reusable.
  const GradientContainer.triColor({super.key, this.colors = const [Colors.orangeAccent, Colors.white, Colors.greenAccent]});

  final List<Color> colors;


  @override
  Widget build(context){
    return Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: colors,
              begin: startAlignment,
              end: endAlignment,
            ),
          ),
          child: const Center(
            child: StyledText('Hello developer!')
          ),
        );
  }
}