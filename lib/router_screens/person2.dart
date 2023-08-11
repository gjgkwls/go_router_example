import 'package:flutter/material.dart';

class Person2Screen extends StatelessWidget {
  const Person2Screen({super.key, required this.name});

  final String name;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('사람2'),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text(
            '나는 $name이다.',
          ),
          onPressed: () {},
        ),
      ),
    );
  }
}
