// Cinemapedia Local Database
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomBottomNavigation extends StatelessWidget {
  final int currentIndex;

  const CustomBottomNavigation({super.key, required this.currentIndex});

  void onItemTapped(BuildContext context, int index) {
    // context.go('/');
    switch (index) {
      case 0:
        context.go('/home/0'); // HomeView()
        break;

      case 1:
        context.go('/home/1'); // Coming soon: CategoriesView()
        break;

      case 2:
        context.go('/home/2'); // FavoritesView()
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      elevation: 0,
      currentIndex: currentIndex,
      onTap: (value) => onItemTapped(context, value),
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(icon: Icon(Icons.home_max), label: 'Home'),
        BottomNavigationBarItem(
          icon: Icon(Icons.label_outline),
          label: 'Categories',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.favorite_outline),
          label: 'Favorites',
        ),
      ],
    );
  }
}
