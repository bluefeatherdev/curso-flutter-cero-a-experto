// Yes, No, Maybe Provider App
import 'package:flutter/material.dart';
import 'package:yes_no_maybe_provider_app/core/entities/message.dart';

/// UI widget that renders a chat bubble for messages sent by "him".
class HisMessageBubble extends StatelessWidget {
  final Message message;

  const HisMessageBubble({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    final ColorScheme colors = Theme.of(context).colorScheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            color: colors.primary,
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20.0,
              vertical: 10.0,
            ),
            child: Text(
              message.text,
              style: const TextStyle(color: Colors.white),
            ),
          ),
        ),
        const SizedBox(height: 5),
      ],
    );
  }
}
