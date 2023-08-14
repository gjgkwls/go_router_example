import 'package:flutter/material.dart';

class Person5Screen extends StatelessWidget {
  const Person5Screen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('사람5'),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text(
            '나는 페이지5다.',
          ),
          onPressed: () {},
        ),
      ),
    );
  }
}
