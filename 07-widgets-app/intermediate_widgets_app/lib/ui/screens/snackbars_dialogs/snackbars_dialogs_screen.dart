// Flutter Widgets App - Intermediate Widgets App
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

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

  void openDialog(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) {
        return AlertDialog(
          title: const Text('Are you sure?'),
          content: const Text(
            'Pariatur culpa anim consequat culpa. Magna eu esse quis elit aute proident ea pariatur id et eu Lorem. Est amet fugiat et nisi. Laboris ea exercitation velit culpa pariatur adipisicing mollit.',
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () => context.pop(),
              child: const Text('Cancel'),
            ),
            FilledButton(
              onPressed: () => context.pop(),
              child: const Text('Accept'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Snackbars and Dialogs')),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FilledButton.tonal(
              onPressed: () {
                showAboutDialog(
                  context: context,
                  children: <Widget>[
                    const Text(
                      'Pariatur culpa anim consequat culpa. Magna eu esse quis elit aute proident ea pariatur id et eu Lorem. Est amet fugiat et nisi. Laboris ea exercitation velit culpa pariatur adipisicing mollit.',
                    ),
                  ],
                );
              },
              child: const Text('Used licenses'),
            ),

            FilledButton.tonal(
              onPressed: () => openDialog(context),
              child: const Text('Show Dialog'),
            ),
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => showCustomSnackbar(context),
        icon: const Icon(Icons.remove_red_eye_outlined),
        label: const Text('Show Snackbar'),
      ),
    );
  }
}
