// Flutter Widgets App - Intermediate Widgets App
import 'package:flutter/material.dart';
import 'package:intermediate_widgets_app/core/routers/app_router.dart';
import 'package:intermediate_widgets_app/ui/themes/app_theme.dart';

void main() => runApp(const MainApp());

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Intermediate Widgets App',
      routerConfig: appRouter,
      debugShowCheckedModeBanner: false,
      theme: AppTheme(selectedColor: 0).getThemeData(),
    );
  }
}
