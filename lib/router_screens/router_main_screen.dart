import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router_example/main.dart';

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
            itemCount: 5,
            itemBuilder: (context, index) {
              return ElevatedButton(
                style: const ButtonStyle(
                  alignment: Alignment.center,
                ),
                onPressed: () {
                  if (index == 2) {
                    context.goNamed('page3name');
                  } else if (index == 4) {
                    const Page5Route().go(context);
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
