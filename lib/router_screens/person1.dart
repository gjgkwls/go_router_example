import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Person1Screen extends StatelessWidget {
  const Person1Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('사람1'),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              child: const Text(
                '분홍색 사람1',
              ),
              onPressed: () => context.push('/page1/person1/pink'),
            ),
            ElevatedButton(
              child: const Text(
                '보라색 사람1',
              ),
              onPressed: () => context.push('/page1/person1/purple'),
            ),
            ElevatedButton(
              child: const Text(
                '오렌지색 사람1',
              ),
              onPressed: () => context.push('/page1/person1/orange'),
            ),
          ],
        ),
      ),
    );
  }
}
