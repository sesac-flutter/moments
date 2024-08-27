import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:moments/presentation/log_in/log_in_screen.dart';
import 'package:moments/presentation/main/main_screen.dart';
import 'package:moments/presentation/main/main_screen_view_model.dart';
import 'package:moments/presentation/splash/splash_screen.dart';
import 'package:provider/provider.dart';

class Routes {
  static final GoRouter router = GoRouter(
    initialLocation: '/splash',
    routes: [
      GoRoute(
          path: '/splash',
          builder: (BuildContext context, GoRouterState state) =>
              const SplashScreen()),
      GoRoute(
          path: '/',
          builder: (BuildContext context, GoRouterState state) {
            return ChangeNotifierProvider(
              create: (context) => MainScreenViewModel(),
              child: const MainScreen(),
            );
          }),
      GoRoute(
          path: '/log_in',
          builder: (BuildContext context, GoRouterState state) =>
              const LogInScreen()),
    ],
  );
}
