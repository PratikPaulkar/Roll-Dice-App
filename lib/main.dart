import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Scaffold(
    backgroundColor: Colors.white,
    appBar: AppBar(
      backgroundColor: Colors.deepPurple,
      title: const Text(
          'My First App',
        style: TextStyle(
          color: Colors.white,
        ),
      ),
      centerTitle: true,
    ),
    body: const Center(
      child:  Text('Hi there! How are you...?'),
    ),
    floatingActionButton: const FloatingActionButton(
      child: const Text("Click!"),
      onPressed:  AsyncSnapshot.nothing,
    ),
  ),
));


class Test extends StatelessWidget {
  const Test({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

