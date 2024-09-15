import 'package:flutter/material.dart';
import 'package:flutter_fake_shop/features/auth/presentation/page/login/login_screen.dart';
import 'package:flutter_fake_shop/features/auth/presentation/page/user_profile/user_profile_screen.dart';
import 'package:flutter_fake_shop/features/cart/presentation/page/cart_screen.dart';
import 'package:flutter_fake_shop/features/home/presentation/page/bottom_navigator_screen.dart';
import 'package:flutter_fake_shop/features/home/presentation/page/on_boarding_screen.dart';
import 'package:flutter_fake_shop/features/product/presentation/page/product_screen.dart';
import 'package:go_router/go_router.dart';

final GlobalKey<NavigatorState> _mainNavigatorKey = GlobalKey<NavigatorState>();

final GlobalKey<NavigatorState> _bottomNavigatorKey =
    GlobalKey<NavigatorState>();

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
    ShellRoute(
      navigatorKey: _bottomNavigatorKey,
      pageBuilder: (BuildContext context, GoRouterState state, Widget child) =>
          NoTransitionPage<void>(
        child: BottomNavigatorScreen(child: child),
      ),
      routes: [
        GoRoute(
          name: ProductScreen.routeName,
          path: ProductScreen.routeName,
          builder: (BuildContext context, GoRouterState state) =>
              const ProductScreen(),
        ),
        GoRoute(
          name: CartScreen.routeName,
          path: CartScreen.routeName,
          builder: (BuildContext context, GoRouterState state) =>
              const CartScreen(),
        ),
        GoRoute(
          name: UserProfileScreen.routeName,
          path: UserProfileScreen.routeName,
          builder: (BuildContext context, GoRouterState state) =>
              const UserProfileScreen(),
        ),
      ],
    ),
  ],
);
