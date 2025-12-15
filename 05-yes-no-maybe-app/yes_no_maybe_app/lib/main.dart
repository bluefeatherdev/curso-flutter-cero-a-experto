// Yes, No, Maybe App
import 'package:flutter/material.dart';
import 'package:yes_no_maybe_app/screens/chat_screen.dart';
import 'package:yes_no_maybe_app/themes/app_theme.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Yes No Maybe App',
      debugShowCheckedModeBanner: false,
      theme: AppTheme(selectedColor: 1).theme(),
      home: const ChatScreen(),
    );
  }
}
