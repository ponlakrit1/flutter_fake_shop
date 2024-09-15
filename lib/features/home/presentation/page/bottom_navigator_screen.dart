import 'package:flutter/material.dart';
import 'package:flutter_fake_shop/features/auth/presentation/page/user_profile/user_profile_screen.dart';
import 'package:flutter_fake_shop/features/cart/presentation/page/cart_screen.dart';
import 'package:flutter_fake_shop/features/home/presentation/widget/bottom_navigation_widget.dart';
import 'package:flutter_fake_shop/features/product/presentation/page/product_screen.dart';
import 'package:go_router/go_router.dart';

class BottomNavigatorScreen extends StatefulWidget {
  static const String routeName = '/bottom_navigator';

  final Widget child;

  const BottomNavigatorScreen({super.key, required this.child});

  @override
  State<BottomNavigatorScreen> createState() => _BottomNavigatorScreenState();
}

class _BottomNavigatorScreenState extends State<BottomNavigatorScreen> {
  int currentIndex = 0;

  int _getSelectedIndex(String location) {
    switch (location) {
      case ProductScreen.routeName:
        return 0;
      case CartScreen.routeName:
        return 1;
      case UserProfileScreen.routeName:
        return 2;
      default:
        return 0;
    }
  }

  @override
  Widget build(BuildContext context) {
    final String location = GoRouterState.of(context).uri.toString();
    currentIndex = _getSelectedIndex(location);

    return Scaffold(
      body: widget.child,
      bottomNavigationBar: BottomNavigationWidget(
        currentIndex: currentIndex,
        changeTap: (int index) {
          if (currentIndex == index) {
            return;
          }
          switch (index) {
            case 0:
              context.goNamed(ProductScreen.routeName);
              break;
            case 1:
              context.goNamed(CartScreen.routeName);
              break;
            case 2:
              context.goNamed(UserProfileScreen.routeName);
              break;
            default:
              context.goNamed(
                ProductScreen.routeName,
              );
              break;
          }
          setState(() {
            currentIndex = index;
          });
        },
      ),
    );
  }
}
