import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class RouterMainScreen extends StatelessWidget {
  const RouterMainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('꼬라우터 예제'),
          backgroundColor: Colors.blue[200],
        ),
        body: Center(
          widthFactor: 300,
          child: ListView.separated(
            itemCount: 4,
            itemBuilder: (context, index) {
              return ElevatedButton(
                style: const ButtonStyle(
                  alignment: Alignment.center,
                ),
                onPressed: () {
                  if (index == 2) {
                    context.goNamed('page${index + 1}name');
                  } else {
                    context.push('/page${index + 1}');
                  }
                },
                child: Text('버튼${index + 1}'),
              );
            },
            separatorBuilder: (context, index) {
              return const SizedBox(
                height: 10,
              );
            },
          ),
        ),
      ),
    );
  }
}
