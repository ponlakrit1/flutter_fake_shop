import 'package:flutter/material.dart';
import 'package:flutter_fake_shop/core/theme/app_color.dart';
import 'package:flutter_fake_shop/core/theme/text_theme_extension.dart';

class BottomNavigationWidget extends StatelessWidget
    implements PreferredSizeWidget {
  final void Function(int)? changeTap;
  final int currentIndex;

  const BottomNavigationWidget({
    required this.currentIndex,
    required this.changeTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: const Color(0xFFB9B9B9).withOpacity(0.25),
            blurRadius: 10.0,
            spreadRadius: 0.0,
            offset: const Offset(0, 0),
          )
        ],
        color: AppColor.neutral.shade50,
      ),
      child: BottomNavigationBar(
        backgroundColor: AppColor.neutral.shade50,
        onTap: changeTap,
        type: BottomNavigationBarType.fixed,
        selectedFontSize: 0,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: DeActiveButtomIconWidget(
              deActiveIcon: Icon(
                Icons.discount,
                size: 21.0,
                color: AppColor.neutral.shade600,
              ),
              title: 'Product',
            ),
            activeIcon: const ActiveButtomIconWidget(
              title: 'Product',
              activeIcon: Icon(
                Icons.discount,
                size: 21.0,
                color: AppColor.primary,
              ),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: DeActiveButtomIconWidget(
              deActiveIcon: Icon(
                Icons.production_quantity_limits,
                size: 21.0,
                color: AppColor.neutral.shade600,
              ),
              title: 'Cart',
            ),
            activeIcon: const ActiveButtomIconWidget(
              title: 'Cart',
              activeIcon: Icon(
                Icons.production_quantity_limits,
                size: 21.0,
                color: AppColor.primary,
              ),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: DeActiveButtomIconWidget(
              deActiveIcon: Icon(
                Icons.account_circle,
                size: 21.0,
                color: AppColor.neutral.shade600,
              ),
              title: 'Profile',
            ),
            activeIcon: const ActiveButtomIconWidget(
              title: 'Profile',
              activeIcon: Icon(
                Icons.account_circle,
                size: 21.0,
                color: AppColor.primary,
              ),
            ),
            label: '',
          ),
        ],
        showSelectedLabels: false,
        showUnselectedLabels: false,
        currentIndex: currentIndex,
        selectedItemColor: AppColor.primary,
        unselectedItemColor: AppColor.neutral.shade600,
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(50);
}

class ActiveButtomIconWidget extends StatelessWidget {
  final String title;
  final Icon activeIcon;

  const ActiveButtomIconWidget({
    required this.title,
    required this.activeIcon,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          width: 63.0,
          height: 3.0,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(5.0)),
            color: AppColor.primary,
          ),
        ),
        const SizedBox(
          height: 8.0,
        ),
        SizedBox(
          height: 24,
          width: 24,
          child: activeIcon,
        ),
        const SizedBox(height: 3),
        Text(
          title,
          style: Theme.of(context)
              .textTheme
              .subTitle6
              .copyWith(color: AppColor.primary),
        ),
        const SizedBox(
          height: 3.0,
        ),
      ],
    );
  }
}

class DeActiveButtomIconWidget extends StatelessWidget {
  final String title;
  final Icon deActiveIcon;

  const DeActiveButtomIconWidget({
    required this.title,
    required this.deActiveIcon,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        const SizedBox(
          height: 11.0,
        ),
        SizedBox(
          height: 24,
          width: 24,
          child: deActiveIcon,
        ),
        const SizedBox(height: 3),
        Text(
          title,
          style: Theme.of(context)
              .textTheme
              .subTitle6
              .copyWith(color: AppColor.neutral.shade600),
        ),
        const SizedBox(
          height: 3.0,
        ),
      ],
    );
  }
}
