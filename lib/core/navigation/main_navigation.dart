import 'package:flutter/material.dart';
import 'package:trendyol_copy/core/widgets/bottom_navigation_bar_widget.dart';
import 'package:trendyol_copy/features/basket/view/basket_view.dart';
import 'package:trendyol_copy/features/favori/view/favori_view.dart';
import 'package:trendyol_copy/features/go/view/trendyolgo_view.dart';
import 'package:trendyol_copy/features/home/view/home_view.dart';
import 'package:trendyol_copy/features/profil/view/profile_view.dart';

class MainNavigation extends StatefulWidget {
  const MainNavigation({super.key});

  @override
  State<MainNavigation> createState() => _MainNavigationState();
}

class _MainNavigationState extends State<MainNavigation> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    HomeView(),
    const TrendyolgoView(),
    const FavoriView(),
    const BasketView(),
    const ProfileView()
  ];

  void _onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBarWidget(
        currentIndex: _currentIndex,
        onTap: _onTabTapped,
      ),
    );
  }
}
