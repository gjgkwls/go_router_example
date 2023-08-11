import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Page2Screen extends StatelessWidget {
  Page2Screen({super.key});

  final myController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('페이지2'),
      ),
      body: Center(
        child: Column(
          children: [
            TextField(
              decoration: const InputDecoration(labelText: 'input'),
              controller: myController,
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () =>
                  context.go('/page2/person2/${myController.text}'),
              child: const Text('입력완료~'),
            ),
          ],
        ),
      ),
    );
  }
}
