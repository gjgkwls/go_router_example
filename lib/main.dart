import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router_example/router_screens/colored_person1.dart';
import 'package:go_router_example/router_screens/error_page.dart';
import 'package:go_router_example/router_screens/page_1.dart';
import 'package:go_router_example/router_screens/page_3.dart';
import 'package:go_router_example/router_screens/page_5.dart';
import 'package:go_router_example/router_screens/person1.dart';
import 'package:go_router_example/router_screens/page_2.dart';
import 'package:go_router_example/router_screens/person2.dart';
import 'package:go_router_example/router_screens/router_main_screen.dart';

part 'main.g.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  // INFO : go_router_builder 사용
  // final _router = GoRouter(routes: $appRoutes);

  final GoRouter _router = GoRouter(
    initialLocation: '/', // 디폴트 페이지.
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
                    'person1/:color(pink|orange|purple)', // INFO: 같은 화면을 바라보는데 조건에 따라 달라지는 것들을 사용할 수 있음 (저장된, 최근본 .. 이런것들)
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
          GoRoute(
            path: 'page5',
            builder: (context, state) => const Page5Screen(),
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

// INFO : go_router_builder 사용
@TypedGoRoute<Page5Route>(
  path: '/',
  routes: <TypedGoRoute<GoRouteData>>[
    TypedGoRoute<Page5Route>(path: 'page5'),
  ],
)
class Page5Route extends GoRouteData {
  const Page5Route();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const Page5Screen();
}
