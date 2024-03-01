import 'package:flutter/material.dart';
import 'package:my_app/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer([Colors.orange, Colors.white, Colors.green]),
      ),
    ),
  );
}

