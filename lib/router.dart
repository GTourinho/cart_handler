import 'package:cart_handler/features/home/presentation/home.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final GoRouter router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const HomeScreen();
      },
      routes: const <RouteBase>[],
    ),
  ],
);

class AppRouter {
  GoRouter get appRouter => router;
}
