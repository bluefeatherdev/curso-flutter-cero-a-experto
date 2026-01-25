// Cinemapedia Local Database
import 'package:flutter/material.dart';
import 'package:cinemapedia_local_database/ui/widgets/widgets.dart';
import 'package:cinemapedia_local_database/ui/views/views.dart';

class HomeScreen extends StatelessWidget {
  static const name = 'home-screen';

  final int pageIndex;

  const HomeScreen({super.key, required this.pageIndex});

  final viewRoutes = const <Widget>[
    HomeView(),
    SizedBox(), // Coming Soon : CategoriesView()
    FavoritesView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(index: pageIndex, children: viewRoutes),
      bottomNavigationBar: CustomBottomNavigation(currentIndex: pageIndex),
    );
  }
}
