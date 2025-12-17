// Yes, No, Maybe Provider App
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yes_no_maybe_provider_app/core/providers/chat_provider.dart';
import 'package:yes_no_maybe_provider_app/ui/themes/app_theme.dart';
import 'package:yes_no_maybe_provider_app/ui/screens/chat_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => ChatProvider())],
      child: MaterialApp(
        title: 'Yes No Maybe Provider App',
        debugShowCheckedModeBanner: false,
        theme: AppTheme(selectedColor: 1).theme(),
        home: const ChatScreen(),
      ),
    );
  }
}
