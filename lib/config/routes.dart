import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:moments/config/di.dart';
import 'package:moments/presentation/log_in/log_in_screen.dart';
import 'package:moments/presentation/main/main_screen.dart';
import 'package:moments/presentation/main/main_screen_view_model.dart';
import 'package:moments/presentation/sign_up/ask_family_code_screen.dart';
import 'package:moments/presentation/sign_up/family_code_screen.dart';
import 'package:moments/presentation/sign_up/optional_info_screen.dart';
import 'package:moments/presentation/sign_up/required_info_screen.dart';
import 'package:moments/presentation/sign_up/sign_up_screen.dart';
import 'package:moments/presentation/sign_up/sign_up_view_model.dart';
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
      GoRoute(
          path: '/sign_up',
          builder: (BuildContext context, GoRouterState state) {
            return ChangeNotifierProvider<SignUpViewModel>(
              create: (context) => getIt(),
              child: const SignUpScreen(),
            );
          }),
      GoRoute(
          path: '/ask_code',
          builder: (BuildContext context, GoRouterState state) {
            return ChangeNotifierProvider<SignUpViewModel>(
              create: (context) => getIt(),
              child: const AskFamilyCodeScreen(),
            );
          }),
      GoRoute(
          path: '/family_code',
          builder: (BuildContext context, GoRouterState state) {
            return ChangeNotifierProvider<SignUpViewModel>(
              create: (context) => getIt(),
              child: const FamilyCodeScreen(),
            );
          }),
      GoRoute(
          path: '/required_info',
          builder: (BuildContext context, GoRouterState state) {
            return ChangeNotifierProvider<SignUpViewModel>(
              create: (context) => getIt(),
              child: const RequiredInfoScreen(),
            );
          }),
      GoRoute(
          path: '/optional_info',
          builder: (BuildContext context, GoRouterState state) {
            return ChangeNotifierProvider<SignUpViewModel>(
              create: (context) => getIt(),
              child: const OptionalInfoScreen(),
            );
          }),
    ],
  );
}
