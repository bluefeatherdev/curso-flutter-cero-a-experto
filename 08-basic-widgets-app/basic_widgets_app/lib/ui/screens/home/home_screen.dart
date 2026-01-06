// Flutter Widgets App - Basic Widgets App
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:basic_widgets_app/ui/menu/menu_items.dart';
// import 'package:basic_widgets_app/ui/screens/buttons/buttons_screen.dart';
// import 'package:basic_widgets_app/ui/screens/cards/cards_screen.dart';

class HomeScreen extends StatelessWidget {
  static const String name = 'home_screen';

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Flutter Widgets App + Material 3')),
      body: const _HomeView(),
    );
  }
}

class _HomeView extends StatelessWidget {
  const _HomeView();

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: appMenuItems.length,
      itemBuilder: (context, index) {
        final MenuItems menuItem = appMenuItems[index];
        return _CustomListTile(menuItem: menuItem);
      },
    );
  }
}

class _CustomListTile extends StatelessWidget {
  final MenuItems menuItem;

  const _CustomListTile({required this.menuItem});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return ListTile(
      leading: Icon(menuItem.icon, color: colors.primary),
      trailing: Icon(Icons.arrow_forward_ios_rounded, color: colors.primary),
      title: Text(menuItem.title),
      subtitle: Text(menuItem.subtitle),
      onTap: () {
        // 1. Directly pushes a new route using an explicit widget instance.
        // Navigator.of(
        //   context,
        // ).push(MaterialPageRoute(builder: (context) => const ButtonsScreen()));

        // 2. Uses a named route defined in the app’s route table.
        // Navigator.pushNamed(context, menuItem.link);

        // 3. Leverages GoRouter’s named route API for declarative navigation.
        // context.pushNamed(CardsScreen.name);

        // 4. Uses GoRouter’s path-based navigation for dynamic routing.
        context.push(menuItem.link);
      },
    );
  }
}
