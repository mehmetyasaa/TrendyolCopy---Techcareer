import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trendyol_copy/core/constan/colors.dart';

class BottomNavigationBarWidget extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;

  const BottomNavigationBarWidget({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      selectedFontSize: 10,
      unselectedFontSize: 10,
      currentIndex: currentIndex,
      type: BottomNavigationBarType.fixed,
      selectedItemColor: AppColors.customOrange,
      unselectedItemColor: Colors.grey,
      onTap: onTap,
      items: [
        BottomNavigationBarItem(
          icon: const Icon(Icons.home),
          label: 'nav.home'.tr,
        ),
        BottomNavigationBarItem(
          icon: const Icon(Icons.circle_outlined),
          label: 'nav.go'.tr,
        ),
        BottomNavigationBarItem(
          icon: const Icon(Icons.favorite_outline),
          label: 'nav.favorites'.tr,
        ),
        BottomNavigationBarItem(
          icon: const Icon(Icons.shopping_cart_outlined),
          label: 'nav.basket'.tr,
        ),
        BottomNavigationBarItem(
          icon: const Icon(Icons.account_circle_outlined),
          label: 'nav.profile'.tr,
        ),
      ],
    );
  }
}
