import 'package:flutter/material.dart';

class ColoredPerson1Screen extends StatelessWidget {
  ColoredPerson1Screen(this.color, {super.key});

  final String color;
  late Color backgroundColor;
  @override
  Widget build(BuildContext context) {
    switch (color) {
      case "pink":
        backgroundColor = Colors.pink[300]!;
      case "orange":
        backgroundColor = Colors.orange;
      case "purple":
        backgroundColor = Colors.purple;
      default:
        backgroundColor = Colors.white;
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('사람1'),
      ),
      body: Center(
        child: Text(color),
      ),
      backgroundColor: backgroundColor,
    );
  }
}
