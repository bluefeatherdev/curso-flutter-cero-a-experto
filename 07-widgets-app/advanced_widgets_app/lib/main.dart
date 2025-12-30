// Flutter Widgets App - Advanced Widgets App
import 'package:flutter/material.dart';
import 'package:advanced_widgets_app/core/routers/app_router.dart';
import 'package:advanced_widgets_app/ui/themes/app_theme.dart';

void main() => runApp(const MainApp());

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Advanced Widgets App',
      routerConfig: appRouter,
      debugShowCheckedModeBanner: false,
      theme: AppTheme(selectedColor: 0).getThemeData(),
    );
  }
}
