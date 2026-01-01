// Flutter Widgets App - Advanced Widgets App
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:advanced_widgets_app/ui/menu/menu_items.dart';

class SideMenu extends StatefulWidget {
  final GlobalKey<ScaffoldState> scaffoldKey;

  const SideMenu({super.key, required this.scaffoldKey});

  @override
  State<SideMenu> createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
  int navigationDrawerIndex = 0;

  @override
  Widget build(BuildContext context) {
    final bool hasNotch = MediaQuery.of(context).viewPadding.top > 35;

    return NavigationDrawer(
      selectedIndex: navigationDrawerIndex,
      onDestinationSelected: (int value) {
        setState(() {
          navigationDrawerIndex = value;
        });

        final MenuItems menuItem = appMenuItems[value];
        context.push(menuItem.link);
        widget.scaffoldKey.currentState?.closeDrawer();
      },
      children: <Widget>[
        Padding(
          padding: EdgeInsets.fromLTRB(28.0, hasNotch ? 0.0 : 20.0, 16.0, 10.0),
          child: const Text('Main'),
        ),

        ...appMenuItems
            .sublist(0, 3) // select the first three MenuItems in the list
            .map(
              (item) => NavigationDrawerDestination(
                icon: Icon(item.icon),
                label: Text(item.title),
              ),
            ),

        const Padding(
          padding: EdgeInsets.fromLTRB(28.0, 16.0, 28.0, 10.0),
          child: Divider(),
        ),

        const Padding(
          padding: EdgeInsets.fromLTRB(28.0, 10.0, 16.0, 10.0),
          child: Text('More Options'),
        ),

        ...appMenuItems
            .sublist(3) // selects the rest of MenuItems after the third one
            .map(
              (item) => NavigationDrawerDestination(
                icon: Icon(item.icon),
                label: Text(item.title),
              ),
            ),
      ],
    );
  }
}
