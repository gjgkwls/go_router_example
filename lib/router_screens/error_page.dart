import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ErrorPage extends StatelessWidget {
  const ErrorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('에러페이지'),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('나는 에러다\n나를 눌러서 전 화면으로 돌아가라'),
          onPressed: () => context.pop(),
        ),
      ),
    );
  }
}
