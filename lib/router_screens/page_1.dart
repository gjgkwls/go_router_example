import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Page1Screen extends StatelessWidget {
  const Page1Screen({super.key});

  @override
  Widget build(BuildContext context) {
    final router = GoRouter.of(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('페이지1'),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('나는 페이지1이다.'),
          onPressed: () => context.go('/page1/person1'),
        ),
      ),
    );
  }
}
