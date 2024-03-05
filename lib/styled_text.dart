import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  const StyledText(this.inputText, {super.key});
  
  final String inputText ;
  
  @override
  Widget build(BuildContext context) {
    return Text(
      inputText,
      style: const TextStyle(fontSize: 26),
    );
  }
}
