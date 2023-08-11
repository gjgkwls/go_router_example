import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router_example/router_screens/colored_person1.dart';
import 'package:go_router_example/router_screens/error_page.dart';
import 'package:go_router_example/router_screens/page_1.dart';
import 'package:go_router_example/router_screens/page_3.dart';
import 'package:go_router_example/router_screens/person1.dart';
import 'package:go_router_example/router_screens/page_2.dart';
import 'package:go_router_example/router_screens/person2.dart';
import 'package:go_router_example/router_screens/router_main_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final GoRouter _router = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) {
          return const RouterMainScreen();
        },
        routes: <RouteBase>[
          GoRoute(
            path: 'page1',
            builder: (BuildContext context, GoRouterState state) {
              return const Page1Screen();
            },
            routes: [
              // INFO: 서브라우트1
              GoRoute(
                path: 'person1',
                builder: (context, state) => const Person1Screen(),
              ),
              GoRoute(
                path:
                    'person1/:color(pink|orange|purple)', // INFO: 이런식으로 하면... 같은 위젯을 사용하는건데 조건에 따라 달라지는 것들을 사용할 수 있음 (저장된, 최근본 .. 이런것들)
                builder: (context, state) =>
                    ColoredPerson1Screen(state.pathParameters['color']!),
              )
            ],
          ),
          GoRoute(
            path: 'page2',
            builder: (BuildContext context, GoRouterState state) {
              return Page2Screen();
            },
            routes: [
              // INFO: 서브라우트2 - 데이터 넘기면서 화면전환 하기
              GoRoute(
                path: 'person2/:name',
                builder: (context, state) => Person2Screen(
                  name: state.pathParameters['name']!,
                ),
              ),
            ],
          ),
          GoRoute(
            path: 'page3',
            name: 'page3name', // INFO: 이런식으로 이름을 지정해서 사용할 수 잇음
            builder: (BuildContext context, GoRouterState state) {
              return const Page3Screen();
            },
          ),
          GoRoute(
            path: 'page4',
            redirect: (context, state) => '/page3', // INFO: direct
          ),
        ],
      ),
    ],
    errorBuilder: (context, state) => const ErrorPage(),
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routerConfig: _router, // INFO: router에 관한 설정 밑에 세개 설정 한꺼번에 할 수 있는겅
      // routeInformationParser: _router.routeInformationParser,
      // routeInformationProvider: _router.routeInformationProvider,
      // routerDelegate: _router.routerDelegate,
      // home: const RouterMainScreen(),
    );
  }
}
