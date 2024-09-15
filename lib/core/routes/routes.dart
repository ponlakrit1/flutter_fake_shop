import 'package:flutter/material.dart';
import 'package:flutter_fake_shop/features/auth/presentation/page/login/login_screen.dart';
import 'package:flutter_fake_shop/features/home/presentation/page/bottom_navigator_screen.dart';
import 'package:flutter_fake_shop/features/home/presentation/page/on_boarding_screen.dart';
import 'package:go_router/go_router.dart';

final GlobalKey<NavigatorState> _mainNavigatorKey = GlobalKey<NavigatorState>();

final GoRouter router = GoRouter(
  initialLocation: LoginScreen.routeName,
  navigatorKey: _mainNavigatorKey,
  routes: <RouteBase>[
    GoRoute(
      name: LoginScreen.routeName,
      path: LoginScreen.routeName,
      builder: (BuildContext context, GoRouterState state) => LoginScreen(),
    ),
    GoRoute(
      name: OnBoardingScreen.routeName,
      path: OnBoardingScreen.routeName,
      builder: (BuildContext context, GoRouterState state) =>
          OnBoardingScreen(),
    ),
    GoRoute(
      name: BottomNavigatorScreen.routeName,
      path: BottomNavigatorScreen.routeName,
      builder: (BuildContext context, GoRouterState state) =>
          const BottomNavigatorScreen(),
    ),
  ],
);
