// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'main.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $page5Route,
    ];

RouteBase get $page5Route => GoRouteData.$route(
      path: '/',
      factory: $Page5RouteExtension._fromState,
      routes: [
        GoRouteData.$route(
          path: 'page5',
          factory: $Page5RouteExtension._fromState,
        ),
      ],
    );

// extension $Page5RouteExtension on Page5Route {
//   static Page5Route _fromState(GoRouterState state) => const Page5Route();

//   String get location => GoRouteData.$location(
//         '/',
//       );

//   void go(BuildContext context) => context.go(location);

//   Future<T?> push<T>(BuildContext context) => context.push<T>(location);

//   void pushReplacement(BuildContext context) =>
//       context.pushReplacement(location);

//   void replace(BuildContext context) => context.replace(location);
// }

extension $Page5RouteExtension on Page5Route {
  static Page5Route _fromState(GoRouterState state) => const Page5Route();

  String get location => GoRouteData.$location(
        '/page5',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}
