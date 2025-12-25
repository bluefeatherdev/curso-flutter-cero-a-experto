// Flutter Widgets App - Intermediate Widgets App
import 'package:flutter/material.dart';

class MenuItems {
  final String title;
  final String subtitle;
  final String link;
  final IconData icon;

  const MenuItems({
    required this.title,
    required this.subtitle,
    required this.link,
    required this.icon,
  });
}

const appMenuItems = <MenuItems>[
  MenuItems(
    title: 'Buttons',
    subtitle: 'Several buttons with Flutter',
    link: '/buttons',
    icon: Icons.smart_button_outlined,
  ),

  MenuItems(
    title: 'Cards',
    subtitle: 'A custom containers',
    link: '/cards',
    icon: Icons.credit_card,
  ),

  MenuItems(
    title: 'Progress Indicators',
    subtitle: 'General and controlled',
    link: '/progress',
    icon: Icons.refresh_rounded,
  ),

  MenuItems(
    title: 'Snackbars and Dialogs',
    subtitle: 'On-screen indicators',
    link: '/snackbars-dialogs',
    icon: Icons.info_outline,
  ),

  MenuItems(
    title: 'Animated Container',
    subtitle: 'Animated StatefulWidget',
    link: '/animated-container',
    icon: Icons.check_box_outline_blank_rounded,
  ),

  MenuItems(
    title: 'UI Controls + Tiles',
    subtitle: 'A series of controllers in Flutter',
    link: '/ui-controls',
    icon: Icons.format_shapes,
  ),

  MenuItems(
    title: 'App Introduction',
    subtitle: 'Small introductory tutorial',
    link: '/app-tutorial',
    icon: Icons.follow_the_signs_rounded,
  ),

  MenuItems(
    title: 'Infinite Scroll and Pull',
    subtitle: 'Infinite lists and pull to refresh',
    link: '/infinite-scroll',
    icon: Icons.list_alt_rounded,
  ),
];
