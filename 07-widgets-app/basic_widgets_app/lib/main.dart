// Flutter Widgets App - Basic Widgets App
import 'package:flutter/material.dart';
import 'package:basic_widgets_app/core/routers/app_router.dart';
import 'package:basic_widgets_app/ui/themes/app_theme.dart';

void main() => runApp(const MainApp());

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: appRouter,
      debugShowCheckedModeBanner: false,
      theme: AppTheme(selectedColor: 0).getThemeData(),
    );
  }
}
