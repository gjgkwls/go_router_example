import 'package:flutter/material.dart';

class Page3Screen extends StatelessWidget {
  const Page3Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('페이지3'),
      ),
      body: const Center(
        child: Text('나는 페이지3이다.'),
      ),
    );
  }
}
