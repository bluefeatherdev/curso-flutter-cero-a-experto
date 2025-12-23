// Flutter Widgets App - Basic Widgets App
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ButtonsScreen extends StatelessWidget {
  static const String name = 'buttons_screen';

  const ButtonsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Buttons Screen')),
      body: const _ButtonsView(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.pop();
        },
        child: const Icon(Icons.arrow_back_ios_new_outlined),
      ),
    );
  }
}

class _ButtonsView extends StatelessWidget {
  const _ButtonsView();

  @override
  Widget build(BuildContext context) {
    final ColorScheme colors = Theme.of(context).colorScheme;

    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        child: Wrap(
          spacing: 10,
          alignment: WrapAlignment.center,
          children: <Widget>[
            // 1. ElevatedButton
            ElevatedButton(onPressed: () {}, child: const Text('Elevated')),

            // 2. Disabled ElevatedButton
            const ElevatedButton(
              onPressed: null,
              child: Text('Elevated Disabled'),
            ),

            // 3. ElevatedButton Icon
            ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.access_alarm_rounded),
              label: const Text('Elevated Icon'),
            ),

            // 4. Disabled ElevatedButton Icon
            ElevatedButton.icon(
              onPressed: null,
              icon: const Icon(Icons.access_alarm_rounded),
              label: const Text('Elevated Icon'),
            ),

            // 5. FilledButton
            FilledButton(onPressed: () {}, child: const Text('Filled')),

            // 6. Disabled FilledButton
            const FilledButton(onPressed: null, child: Text('Filled Disabled')),

            // 7. FilledButton Icon
            FilledButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.color_lens),
              label: const Text('Filled Icon'),
            ),

            // 8. Disabled FilledButton Icon
            FilledButton.icon(
              onPressed: null,
              icon: const Icon(Icons.color_lens),
              label: const Text('Filled Icon'),
            ),

            // 9. OutlinedButton
            OutlinedButton(onPressed: () {}, child: const Text('Outlined')),

            // 10. Disabled OutlinedButton
            const OutlinedButton(
              onPressed: null,
              child: Text('Outlined Disabled'),
            ),

            // 11. OutlinedButton Icon
            OutlinedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.terminal),
              label: const Text('Outlined Icon'),
            ),

            // 12. Disabled OutlinedButton Icon
            OutlinedButton.icon(
              onPressed: null,
              icon: const Icon(Icons.terminal),
              label: const Text('Outlined Icon'),
            ),

            // 13. TextButton
            TextButton(onPressed: () {}, child: const Text('Text')),

            // 14. Disabled TextButton
            const TextButton(onPressed: null, child: Text('Text Disabled')),

            // 15. TextButton Icon
            TextButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.book_rounded),
              label: const Text('Text Icon'),
            ),

            // 16. Disabled TextButton Icon
            TextButton.icon(
              onPressed: null,
              icon: const Icon(Icons.book_rounded),
              label: const Text('Text Icon'),
            ),

            // 17. IconButton
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.person_add_rounded),
            ),

            // 18. Disabled IconButton
            const IconButton(
              onPressed: null,
              icon: Icon(Icons.person_add_rounded),
            ),

            // 19. IconButton + style attribute
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.person_add_rounded),
              style: ButtonStyle(
                iconColor: const WidgetStatePropertyAll(Colors.white),
                backgroundColor: WidgetStatePropertyAll(colors.primary),
              ),
            ),

            // 20. Your CustomButton
            const CustomButton(),
          ],
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    final ColorScheme colors = Theme.of(context).colorScheme;

    return ClipRRect(
      borderRadius: BorderRadius.circular(20.0),
      child: Material(
        color: colors.primary,
        child: InkWell(
          onTap: () {},
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
            child: Text('Hello World!', style: TextStyle(color: Colors.white)),
          ),
        ),
      ),
    );
  }
}
