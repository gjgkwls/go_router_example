import 'package:flutter/material.dart';

class Page5Screen extends StatelessWidget {
  const Page5Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('사람5'),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              child: const Text(
                '나는 페이지5다',
              ),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
