// Flutter Widgets App - Intermediate Widgets App
import 'package:flutter/material.dart';

class SnackBarsDialogsScreen extends StatelessWidget {
  static const String name = 'snackbar_dialog_screen';

  const SnackBarsDialogsScreen({super.key});

  void showCustomSnackbar(BuildContext context) {
    ScaffoldMessenger.of(context).clearSnackBars();

    final SnackBar snackBar = SnackBar(
      content: const Text('Hello Flutter!'),
      action: SnackBarAction(label: 'Ok!', onPressed: () {}),
      duration: const Duration(seconds: 2),
    );

    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Progress Indicators')),
      body: const _ProgressView(),
    );
  }
}

class _ProgressView extends StatelessWidget {
  const _ProgressView();

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
